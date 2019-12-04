using EzWriterCustomControls.PInvoke;
using EzWriterCustomControls.Util;
using EzWriterModel.Entities;
using EzWriterModel.Enums;
using EzWriterSpellCheckingEngine.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using TextObjectModel.Interop;

namespace EzWriterCustomControls.UIElement
{
    [Description("Extended RichTextBox with built in support for TOM functionality.")]
    public partial class RichEditBox : RichTextBox, IRichEditBox
    {
        private const double inch = 14.4;
        private const int SES_HYPERLINKTOOLTIPS = 8;
        private readonly List<string> misspelledWords;
        private readonly Dictionary<string, EzWriterModel.Entities.TextRange> ranges;
        private readonly SpellChecker spellChecker;
        private string wildcardWord;
        private bool showStandardMenu = true;
        private bool hasSpellingErrors = false;
        private bool wordTypedCompleted = false;

        public RichEditBox()
        {
            InitializeComponent();
            misspelledWords = new List<string>();
            ranges = new Dictionary<string, EzWriterModel.Entities.TextRange>();
            spellChecker = new SpellChecker();
            contextMenu.Renderer = new FluentContextMenuStripRenderer();
            ContextMenuStrip = contextMenu;
            ContextMenuStrip.Opened += OnContextMenuStrip_Opened;
            RaiseMenuItemsEvents();            
        }

        #region Public properties

        [Browsable(false)]
        public TextDocument Document => new TextDocument(this, IDocument);

        [DefaultValue(false)]
        public bool IsSpellCheckEnabled { get; set; } = false;

        [Browsable(false)]
        public IRichEditPrintDocument PrintDocument => new RichEditPrintDocument(this);

        #endregion

        #region Public methods

        public int FormatRange(PrintPageEventArgs e, int charFrom, int charTo)
        {
            var range = new CharRange
            {
                cpMin = charFrom,
                cpMax = charTo
            };
            var rect = new Rect
            {
                top = (int)(e.MarginBounds.Top * inch),
                bottom = (int)(e.MarginBounds.Bottom * inch),
                left = (int)(e.MarginBounds.Left * inch),
                right = (int)(e.MarginBounds.Right * inch)
            };
            var rectPage = new Rect
            {
                top = (int)(e.PageBounds.Top * inch),
                bottom = (int)(e.PageBounds.Bottom * inch),
                left = (int)(e.PageBounds.Left * inch),
                right = (int)(e.PageBounds.Right * inch)
            };
            IntPtr hdc = e.Graphics.GetHdc();

            var formatRange = new FormatRange
            {
                chrg = range,
                hdc = hdc,
                hdcTarget = hdc,
                rc = rect,
                rcPage = rectPage
            };
            IntPtr lParam = Marshal.AllocCoTaskMem(Marshal.SizeOf(formatRange));
            Marshal.StructureToPtr(formatRange, lParam, false);

            IntPtr result = NativeMethods.SendMessage(Handle, RichEditMessages.EM_FORMATRANGE, (IntPtr)1, lParam);

            Marshal.FreeCoTaskMem(lParam);
            e.Graphics.ReleaseHdc(hdc);

            return result.ToInt32();
        }

        public void FormatRangeDone() => NativeMethods.SendMessage(Handle, RichEditMessages.EM_FORMATRANGE, IntPtr.Zero, IntPtr.Zero);

        public void InsertImage(int ascent, VerticalCharacterAlignment verticalAlign, string filename)
        {
            using (var image = Image.FromFile(filename))
            {
                InsertImage(image.HiMetricWidth() * 2 / 3, image.HiMetricHeight() * 2 / 3, ascent, 
                            verticalAlign, filename, filename);
            }
        }

        public void InsertImage(int width, int height, int ascent, VerticalCharacterAlignment verticalAlign, 
                                string alternateText, string filename)
        {
            var image = new ImageParameters
            {
                xWidth = width,
                yHeight = height,
                ascent = ascent,
                type = (int)verticalAlign,
                pwszAlternateText = alternateText,
                pIStream = NativeMethods.SHCreateStreamOnFileEx(filename, (int)0x00000040L, 0x1, false, null)
            };
            NativeMethods.SendMessage(Handle, RichEditMessages.EM_INSERTIMAGE, IntPtr.Zero, ref image);
        }

        public void InsertTable(int numCols, int numRows, Color borderColor, Color cellBackColor, Color cellForeColor)
        {
            var rows = new TableRowParameters();
            var cells = new TableCellParameters();
            rows.cbRow = (byte)(Marshal.SizeOf(rows) - 2 * sizeof(int));
            rows.cbCell = (byte)Marshal.SizeOf(cells);

            rows.cCell = (byte)numCols;
            rows.cRow = (byte)numRows;
            rows.dxCellMargin = 50;
            rows.Alignment = 1;
            rows.IdentCells = 1;
            rows.cpStartRow = 1;

            cells.dxWidth = Width / numCols * 13;
            cells.dxBrdrLeft = 1;
            cells.dxBrdrRight = 1;
            cells.dyBrdrBottom = 1;
            cells.dyBrdrTop = 1;
            cells.crBrdrBottom = ColorTranslator.ToWin32(borderColor);
            cells.crBrdrLeft = ColorTranslator.ToWin32(borderColor);
            cells.crBrdrRight = ColorTranslator.ToWin32(borderColor);
            cells.crBrdrTop = ColorTranslator.ToWin32(borderColor);
            cells.crBackPat = ColorTranslator.ToWin32(cellBackColor);
            cells.crForePat = ColorTranslator.ToWin32(cellForeColor);

            NativeMethods.SendMessage(Handle, RichEditMessages.EM_INSERTTABLE, ref rows, ref cells);
        }

        #endregion

        #region Overrides of properties and methods

        protected override CreateParams CreateParams
        {
            get
            {
                var cp = base.CreateParams;
                NativeMethods.LoadLibrary("Msftedit.dll"); //RichEdit Control 4.1
                cp.ClassName = "RichEdit50W";
                return cp;
            }
        }

        protected virtual ITextDocument2 IDocument
            => NativeMethods.SendMessage(Handle, RichEditMessages.EM_GETOLEINTERFACE, 0, out object ole) != 0 ? (ITextDocument2)ole : null;

        protected override void OnHandleCreated(EventArgs e)
        {
            base.OnHandleCreated(e);
            NativeMethods.SendMessage(Handle, RichEditMessages.EM_SETEDITSTYLE, SES_HYPERLINKTOOLTIPS, SES_HYPERLINKTOOLTIPS);
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            base.OnKeyDown(e);

            if (GetLineFromCharIndex(SelectionStart) == 0 && e.KeyData == Keys.Up ||
                GetLineFromCharIndex(SelectionStart) == GetLineFromCharIndex(TextLength) && e.KeyData == Keys.Down ||
                SelectionStart == TextLength && e.KeyData == Keys.Right ||
                SelectionStart == 0 && e.KeyData == Keys.Left)
            {
                e.Handled = true;
            }
            if (e.KeyCode == Keys.Space || e.KeyCode == Keys.Tab || e.KeyCode == Keys.Enter || 
                e.KeyData == (Keys.Control | Keys.V))
            {
                wordTypedCompleted = true;
            }
            else
            {
                wordTypedCompleted = false;
            }
        }

        protected override void OnLinkClicked(LinkClickedEventArgs e)
        {
            base.OnLinkClicked(e);
            var question = $"¿Desea abrir el enlace {e.LinkText}?";

            if (MessageBox.Show(question, string.Empty, MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                Process.Start(e.LinkText);
            }
        }

        protected override void OnMouseDown(MouseEventArgs e)
        {
            base.OnMouseDown(e);

            if (e.Button == MouseButtons.Right && e.Clicks == 1)
            {
                var currentWord = GetWordFromPosition(e.Location);

                for (int i = 0; i < misspelledWords.Count; i++)
                {
                    if (misspelledWords.Contains(currentWord))
                    {
                        wildcardWord = currentWord;
                        showStandardMenu = false;
                        return;
                    }
                }
                showStandardMenu = true;
            }
        }

        protected override void OnTextChanged(EventArgs e)
        {
            base.OnTextChanged(e);

            if (IsSpellCheckEnabled && wordTypedCompleted && !string.IsNullOrEmpty(Text))
            {
                var spellingErrors = spellChecker.Check(Document.EntireRange.Text);

                if (spellingErrors.Any())
                {
                    hasSpellingErrors = true;

                    foreach (var spellingError in spellingErrors)
                    {
                        var range = Document.GetRange(spellingError.StartIndex, spellingError.StartIndex + spellingError.Length);
                        var misspelledWord = range.Text;
                        misspelledWords.Add(misspelledWord);

                        if (!ranges.ContainsKey(misspelledWord))
                        {
                            ranges.Add(misspelledWord, range);
                        }
                        var font = range.Font;
                        font.Reset((int)tomConstants.tomApplyTmp);
                        font.Underline = (int)UnderlineStyle.Wave;
                        font.Underline = unchecked((int)0xFF0000FF); //red color
                        font.Reset((int)tomConstants.tomApplyNow);
                    }
                }
            }
        }

        protected override void WndProc(ref Message m)
        {
            if (m.Msg == WindowsMessages.WM_SETCURSOR)
            {
                if (SelectionType == RichTextBoxSelectionTypes.Object)
                {
                    DefWndProc(ref m);
                    return;
                }
            }
            if (m.Msg == (WindowsMessages.WM_REFLECT | WindowsMessages.WM_NOTIFY))
            {
                Nmhdr hdr = (Nmhdr)m.GetLParam(typeof(Nmhdr));

                if (hdr.code == RichEditMessages.EN_LINK)
                {
                    var link = IntPtr.Size == 4 ? (EnLink)m.GetLParam(typeof(EnLink))
                                                   : NativeMethods.ConvertFromENLINK64((EnLink64)m.GetLParam(typeof(EnLink64)));
                    if (link.msg == WindowsMessages.WM_LBUTTONDOWN)
                    {
                        string linkText = CharRangeToString(link.charrange);

                        if (!string.IsNullOrEmpty(linkText))
                        {
                            OnLinkClicked(new LinkClickedEventArgs(linkText));
                        }
                        m.Result = (IntPtr)1;
                        return;
                    }
                }
            }
            base.WndProc(ref m);
        }

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
                spellChecker.Dispose();
            }            
            base.Dispose(disposing);
        }

        #endregion

        #region Private methods

        private void OnContextMenuStrip_Opened(object sender, EventArgs e)
        {
            if (hasSpellingErrors)
            {
                ContextMenuStrip.Items.Clear();

                if (!showStandardMenu)
                {
                    int index = 0;

                    var suggestions = spellChecker.GetSuggestions(wildcardWord);

                    if (suggestions.Any())
                    {
                        foreach (var suggestion in suggestions)
                        {
                            var item = new ToolStripMenuItem { Text = suggestion };
                            ContextMenuStrip.Items.Insert(index, item);
                            item.Click += OnItemClick;
                            index++;
                        }
                    }
                    else
                    {
                        var tsMenuItemNoSuggestions = new ToolStripMenuItem("No hay sugerencias");
                        ContextMenuStrip.Items.Insert(index, tsMenuItemNoSuggestions);
                        tsMenuItemNoSuggestions.Enabled = false;
                        index++;
                    }
                    var separator1 = new ToolStripSeparator();
                    ContextMenuStrip.Items.Insert(index, separator1);
                    index++;

                    var tsMenuItemAddToDictionary = new ToolStripMenuItem("Añadir al diccionario", null, OnAddToDictionary);
                    ContextMenuStrip.Items.Insert(index, tsMenuItemAddToDictionary);
                    index++;

                    var tsMenuItemIgnore = new ToolStripMenuItem("Omitir", null, OnIgnore);
                    ContextMenuStrip.Items.Insert(index, tsMenuItemIgnore);
                    index++;

                    var separator2 = new ToolStripSeparator();
                    ContextMenuStrip.Items.Insert(index, separator2);
                }
                AddStandardMenuItems();
            }
            InitializeContextMenu();
        }

        private void OnItemClick(object sender, EventArgs e)
        {
            var selectedItem = sender as ToolStripMenuItem;
            misspelledWords.Remove(wildcardWord);
            ranges[wildcardWord].Text = selectedItem.Text;
        }

        private void OnAddToDictionary(object sender, EventArgs e) => spellChecker.Add(wildcardWord);

        private void OnIgnore(object sender, EventArgs e) => spellChecker.Ignore(wildcardWord);

        private void AddStandardMenuItems()
        {
            ContextMenuStrip.Items.AddRange(new ToolStripItem[]
            {
                tsMenuItemCopy, tsMenuItemCut, tsMenuItemPaste, tsSeparator1, tsMenuItemSelectAll,
                tsMenuItemClear, tsSeparator2, tsMenuItemSearch, tsMenuItemTranslate,
            });
        }

        private void InitializeContextMenu()
        {            
            tsMenuItemCopy.Enabled = SelectionLength > 0;
            tsMenuItemCut.Enabled = !ReadOnly && SelectionLength > 0;
            tsMenuItemPaste.Enabled = !ReadOnly;
            tsMenuItemSelectAll.Enabled = TextLength > 0 && SelectionLength < TextLength;
            tsMenuItemClear.Enabled = !ReadOnly && TextLength > 0;
            tsMenuItemSearch.Enabled = SelectionLength > 0;
            tsMenuItemTranslate.Enabled = SelectionLength > 0;
        }

        private void RaiseMenuItemsEvents()
        {
            tsMenuItemCopy.Click += (s, e) => Copy();
            tsMenuItemCut.Click += (s, e) => Cut();
            tsMenuItemPaste.Click += (s, e) => Paste();
            tsMenuItemSelectAll.Click += (s, e) => SelectAll();
            tsMenuItemClear.Click += (s, e) => Clear();
            tsMenuItemSearch.Click += (s, e) => Process.Start($"https://www.google.com/search?q={SelectedText}");
            tsMenuItemEnEs.Click += (s, e) => Process.Start($"https://translate.google.com/?hl=es&op=translate&sl=en&tl=es&text={SelectedText}");
            tsMenuItemEsEn.Click += (s, e) => Process.Start($"https://translate.google.com/?hl=es&op=translate&sl=es&tl=en&text={SelectedText}");
        }

        private string GetWordFromPosition(Point pt)
        {
            var currentIndex = GetCharIndexFromPosition(pt);
            int startIndex, endIndex;

            if (string.IsNullOrWhiteSpace(Text) || currentIndex < 0) return string.Empty;

            for (startIndex = currentIndex; startIndex >= 0; startIndex--)
            {
                if (char.IsWhiteSpace(Text[startIndex])) break;
            }
            startIndex++;

            for (endIndex = currentIndex; endIndex < Text.Length; endIndex++)
            {
                if (char.IsWhiteSpace(Text[endIndex])) break;
            }
            return startIndex >= endIndex ? string.Empty : Text.Substring(startIndex, endIndex - startIndex)
                                                               .TrimEnd(new char[] { ',', '.', ';', ':'});
        }

        private string CharRangeToString(CharRange c)
        {
            var textrange = new PInvoke.TextRange { chrg = c };

            if (c.cpMax - c.cpMin <= 0)
            {
                return string.Empty;
            }
            int characters = (c.cpMax - c.cpMin) + 1; // +1 for null termination
            var charBuffer = CharBuffer.CreateBuffer(characters);
            IntPtr unmanagedBuffer = charBuffer.AllocCoTaskMem();

            if (unmanagedBuffer == IntPtr.Zero)
            {
                throw new OutOfMemoryException();
            }
            textrange.lpstrText = unmanagedBuffer;
            NativeMethods.SendMessage(Handle, RichEditMessages.EM_GETTEXTRANGE, IntPtr.Zero, ref textrange);
            charBuffer.PutCoTaskMem(unmanagedBuffer);

            if (textrange.lpstrText != IntPtr.Zero)
            {
                Marshal.FreeCoTaskMem(unmanagedBuffer);
            }
            return charBuffer.GetString();
        }

        #endregion

        #region Explicit implementation of IRichEditBox

        int IRichEditBox.BackgroundColor
        {
            get => ColorTranslator.ToWin32(BackColor);
            set => BackColor = ColorTranslator.FromWin32(value);
        }

        int IRichEditBox.ContentLength
        {
            get => SelectionLength;
            set => SelectionLength = value;
        }

        int IRichEditBox.ContentStart
        {
            get => SelectionStart;
            set => SelectionStart = value;
        }

        void IRichEditBox.InsertImage(string filename) => InsertImage(0, VerticalCharacterAlignment.Baseline, filename);

        void IRichEditBox.InsertTable(int numColumns, int numRows) => InsertTable(numColumns, numRows, Color.Black, Color.White, Color.Black);

        #endregion
    }
}
