using EzWriterModel.Entities;
using EzWriterModel.Enums;
using EzWriterViewModel.Commands;
using EzWriterViewModel.Services;
using Microsoft.Windows.Input;
using System.IO;
using System.Linq;
using System.Windows.Input;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// Represents a word processor entity that implements the <see cref="IWordProcessor"/> interface.
    /// </summary>
    public class WordProcessor : IWordProcessor
    {
        #region Private fields

        private int fontBackColor;
        private int fontForeColor;
        private string fontName;
        private float fontSize;
        private float lineSpacing;
        private float charSpacing;
        private int pageBackColor;

        #endregion

        /// <summary>
        /// Initializes a new instance of the <see cref="WordProcessor" /> class.
        /// </summary>
        public WordProcessor() => MainWindow = new MainWindowViewModel(this);

        #region Commands        

        /// <summary>
        /// Gets the <see cref="AddTabCommand"/>.
        /// </summary>
        public ICommand AddTabCommand => new DelegateCommand(AddTab);

        /// <summary>
        /// Gets the <see cref="AlignParagraphCommand"/>.
        /// </summary>
        public ICommand AlignParagraphCommand => new DelegateCommand(AlignParagraph);

        /// <summary>
        /// Gets the <see cref="ChangeCaseCommand"/>.
        /// </summary>
        public ICommand ChangeCaseCommand => new DelegateCommand(ChangeCase);

        /// <summary>
        /// Gets the <see cref="ChangeCharacterSpacingCommand"/>.
        /// </summary>
        public ICommand ChangeCharacterSpacingCommand
            => new DelegatePreviewCommand(ChangeCharacterSpacing, PreviewCharacterSpacing, CancelCharacterSpacing);

        /// <summary>
        /// Gets the <see cref="ChangeFontBackColorCommand"/>.
        /// </summary>
        public IPreviewCommand ChangeFontBackColorCommand
            => new DelegatePreviewCommand(ChangeFontBackColor, PreviewFontBackColor, CancelPreviewFontBackColor);

        /// <summary>
        /// Gets the <see cref="ChangeFontForeColorCommand"/>.
        /// </summary>
        public IPreviewCommand ChangeFontForeColorCommand
            => new DelegatePreviewCommand(ChangeFontForeColor, PreviewFontForeColor, CancelPreviewFontForeColor);

        /// <summary>
        /// Gets the <see cref="ChangeFontNameCommand"/>.
        /// </summary>
        public IPreviewCommand ChangeFontNameCommand => new DelegatePreviewCommand(ChangeFontName, PreviewFontName, CancelPreviewFontName);

        /// <summary>
        /// Gets the <see cref="ChangeFontSizeCommand"/>.
        /// </summary>
        public IPreviewCommand ChangeFontSizeCommand => new DelegatePreviewCommand(ChangeFontSize, PreviewFontSize, CancelPreviewFontSize);

        /// <summary>
        /// Gets the <see cref="ChangePageBackColorCommand"/>.
        /// </summary>
        public IPreviewCommand ChangePageBackColorCommand 
            => new DelegatePreviewCommand(ChangePageBackColor, PreviewPageBackColor, CancelPreviewPageBackColor);

        /// <summary>
        /// Gets the <see cref="ChangePageSettingsCommand"/>.
        /// </summary>
        public ICommand ChangePageSettingsCommand => new DelegateCommand(ChangePageSettings);

        /// <summary>
        /// Gets <see cref="CopyCommand"/>.
        /// </summary>
        public ICommand CopyCommand => new DelegateCommand(Copy);

        /// <summary>
        /// Gets the <see cref="CreateDocumentCommand"/>.
        /// </summary>
        public ICommand CreateDocumentCommand => new DelegateCommand(CreateDocument);

        /// <summary>
        /// Gets the <see cref="CutCommand"/>.
        /// </summary>
        public ICommand CutCommand => new DelegateCommand(Cut);

        /// <summary>
        /// Gets the <see cref="DecrementFontSizeCommand"/>.
        /// </summary>
        public ICommand DecrementFontSizeCommand => new DelegateCommand(DecrementFontSize);

        /// <summary>
        /// Gets the <see cref="IncrementFontSizeCommand"/>.
        /// </summary>
        public ICommand IncrementFontSizeCommand => new DelegateCommand(IncrementFontSize);

        /// <summary>
        /// Gets the <see cref="InsertImageCommand"/>.
        /// </summary>
        public ICommand InsertImageCommand => new DelegateCommand(InsertImage);

        /// <summary>
        /// Gets the <see cref="MoveToNextPageCommand"/>.
        /// </summary>
        public ICommand MoveToNextPageCommand => new DelegateCommand(MoveToNextPage);

        /// <summary>
        /// Gets the <see cref="MoveToPreviousPageCommand"/>.
        /// </summary>
        public ICommand MoveToPreviousPageCommand => new DelegateCommand(MoveToPreviousPage);

        /// <summary>
        /// Gets the <see cref="OpenFileCommand"/>.
        /// </summary>
        public ICommand OpenFileCommand => new DelegateCommand(OpenFile);

        /// <summary>
        /// Gets the <see cref="PasteCommand"/>.
        /// </summary>
        public ICommand PasteCommand => new DelegateCommand(Paste);

        /// <summary>
        /// Gets the <see cref="PrintCommand"/>.
        /// </summary>
        public ICommand PrintCommand => new DelegateCommand(Print);

        /// <summary>
        /// Gets the <see cref="SaveFileCommand"/>.
        /// </summary>
        public ICommand SaveFileCommand => new DelegateCommand(SaveFile);

        /// <summary>
        /// Gets the <see cref="SetLineSpacingCommand"/>.
        /// </summary>
        public ICommand SetLineSpacingCommand => new DelegatePreviewCommand(SetLineSpacing, PreviewLineSpacing, CancelPreviewLineSpacing);

        /// <summary>
        /// Gets the <see cref="SetListBulletCommand"/>.
        /// </summary>
        public ICommand SetListBulletCommand => new DelegateCommand(SetListBullet);

        /// <summary>
        /// Gets the <see cref="SetPageLayoutCommand"/>.
        /// </summary>
        public ICommand SetPageLayoutCommand => new DelegateCommand(SetPageLayout);

        /// <summary>
        /// Gets the <see cref="SetPageZoomCommand"/>.
        /// </summary>
        public ICommand SetPageZoomCommand => new DelegateCommand(SetPageZoom);

        /// <summary>
        /// Gets the <see cref="SetSpaceAfterCommand"/>.
        /// </summary>
        public ICommand SetSpaceAfterCommand => new DelegateCommand(SetSpaceAfter);

        /// <summary>
        /// Gets the <see cref="SetSpaceBeforeCommand"/>.
        /// </summary>
        public ICommand SetSpaceBeforeCommand => new DelegateCommand(SetSpaceBefore);

        /// <summary>
        /// Gets the <see cref="SetUnderlineStyleCommand"/>. See also the <seealso cref="ToggleUnderlineCommand"/>.
        /// </summary>
        public ICommand SetUnderlineStyleCommand => new DelegateCommand(SetUnderlineStyle);

        /// <summary>
        /// Gets the <see cref="SetZoomFactorCommand"/>.
        /// </summary>
        public ICommand SetZoomFactorCommand => new DelegateCommand(SetZoomFactor);

        /// <summary>
        /// Gets the <see cref="ToggleBoldCommand"/>.
        /// </summary>
        public ICommand ToggleBoldCommand => new DelegateCommand(ToggleBold);

        /// <summary>
        /// Gets the <see cref="ToggleItalicCommand"/>.
        /// </summary>
        public ICommand ToggleItalicCommand => new DelegateCommand(ToggleItalic);

        /// <summary>
        /// Gets the <see cref="ToggleShadowCommand"/>.
        /// </summary>
        public ICommand ToggleShadowCommand => new DelegateCommand(ToggleShadow);

        /// <summary>
        /// Gets the <see cref="ToggleSmallCapsCommand"/>.
        /// </summary>
        public ICommand ToggleSmallCapsCommand => new DelegateCommand(ToggleSmallCaps);

        /// <summary>
        /// Gets the <see cref="ToggleStrikethroughCommand"/>.
        /// </summary>
        public ICommand ToggleStrikethroughCommand => new DelegateCommand(ToggleStrikethrough);

        /// <summary>
        /// Gets the <see cref="ToggleSubscriptCommand"/>.
        /// </summary>
        public ICommand ToggleSubscriptCommand => new DelegateCommand(ToggleSubscript);

        /// <summary>
        /// Gets the <see cref="ToggleSuperscriptCommand"/>.
        /// </summary>
        public ICommand ToggleSuperscriptCommand => new DelegateCommand(ToggleSuperscript);

        /// <summary>
        /// Gets the <seealso cref="ToggleUnderlineCommand"/>. See also the <seealso cref="SetUnderlineStyleCommand"/>.
        /// </summary>
        public ICommand ToggleUnderlineCommand => new DelegateCommand(ToggleUnderline);

        #endregion

        #region Public properties

        /// <summary>
        /// Gets or sets an instance of the <see cref="IAlertDialogService"/> interface.
        /// </summary>
        public IAlertDialogService AlertService { get; set; }

        /// <summary>
        /// Gets or sets an instance of the <see cref="IDialogService"/> interface.
        /// </summary>
        public IDialogService OpenFileService { get; set; }

        /// <summary>
        /// Gets or sets an instance of the <see cref="IDialogService"/> interface.
        /// </summary>
        public IDialogService SaveFileService { get; set; }

        /// <summary>
        /// Gets or sets an instance of the <see cref="IPageSetupService"/> interface.
        /// </summary>
        public IPageSetupService PageSetupService { get; set; }

        /// <summary>
        /// Gets or sets an instance of the <see cref="IPrintService"/> interface.
        /// </summary>
        public IPrintService PrintFileService { get; set; }

        /// <summary>
        /// Gets the MainWindow.
        /// </summary>
        public MainWindowViewModel MainWindow { get; }

        #endregion

        #region Private methods

        private void AddTab() => RichEdit.Document.Selection.TypeText("\t");

        private void AlignParagraph(object parameter) => RichEdit.Document.Selection.Paragraph.Alignment = (ParagraphAlignment)parameter;

        private void ChangeCase(object parameter) => RichEdit.Document.Selection.ChangeCase((LetterCase)parameter);

        private void CancelCharacterSpacing() => RichEdit.Document.Selection.Font.Spacing = charSpacing;

        private void PreviewCharacterSpacing(object parameter)
        {
            charSpacing = RichEdit.Document.Selection.Font.Spacing;
            RichEdit.Document.Selection.Font.Spacing = (float)parameter;
        }

        private void ChangeCharacterSpacing(object parameter)
        {
            charSpacing = (float)parameter;
            RichEdit.Document.Selection.Font.Spacing = charSpacing;
        }

        private void CancelPreviewFontBackColor() => RichEdit.Document.Selection.Font.BackColor = fontBackColor;

        private void PreviewFontBackColor(object parameter)
        {
            fontBackColor = RichEdit.Document.Selection.Font.BackColor;
            RichEdit.Document.Selection.Font.BackColor = (int)parameter;
        }

        private void ChangeFontBackColor(object parameter)
        {
            fontBackColor = (int)parameter;
            RichEdit.Document.Selection.Font.BackColor = fontBackColor;
        }

        private void CancelPreviewFontForeColor() => RichEdit.Document.Selection.Font.ForeColor = fontForeColor;

        private void PreviewFontForeColor(object parameter)
        {
            fontForeColor = RichEdit.Document.Selection.Font.ForeColor;
            RichEdit.Document.Selection.Font.ForeColor = (int)parameter;
        }

        private void ChangeFontForeColor(object parameter)
        {
            fontForeColor = (int)parameter;
            RichEdit.Document.Selection.Font.ForeColor = fontForeColor;
        }

        private void CancelPreviewFontName() => RichEdit.Document.Selection.Font.Name = fontName;

        private void PreviewFontName(object parameter)
        {
            fontName = RichEdit.Document.Selection.Font.Name;
            RichEdit.Document.Selection.Font.Name = parameter.ToString();
        }

        private void ChangeFontName(object parameter)
        {
            fontName = parameter.ToString();
            RichEdit.Document.Selection.Font.Name = fontName;
        }

        private void CancelPreviewFontSize() => RichEdit.Document.Selection.Font.Size = fontSize;

        private void PreviewFontSize(object parameter)
        {
            fontSize = RichEdit.Document.Selection.Font.Size;
            RichEdit.Document.Selection.Font.Size = (float)parameter;
        }

        private void ChangeFontSize(object parameter)
        {
            fontSize = (float)parameter;
            RichEdit.Document.Selection.Font.Size = fontSize;
        }

        private void ChangePageBackColor(object parameter)
        {
            pageBackColor = (int)parameter;
            RichEdit.BackgroundColor = pageBackColor;
        }

        private void PreviewPageBackColor(object parameter)
        {
            pageBackColor = RichEdit.BackgroundColor;
            RichEdit.BackgroundColor = (int)parameter;
        }

        private void CancelPreviewPageBackColor() => RichEdit.BackgroundColor = pageBackColor;

        private void ChangePageSettings()
        {
            PageSetupService.Document = RichEdit.PrintDocument;
            
            if (PageSetupService.ShowDialog() == true)
            {
                throw new System.NotImplementedException();
            }
        }

        private void Copy() => RichEdit.Document.Selection.Copy();

        private void CreateDocument()
        {
            if (!RichEdit.Document.Saved)
            {
                bool? result = AlertService.AskConfirmation("¿Desea guardar los cambios hechos?", "EzWriter");

                if (result != null)
                {
                    if (result == true)
                    {
                        SaveFile();
                    }
                    else
                    {
                        RichEdit.Document.New();
                    }
                }
            }
            else
            {
                RichEdit.Document.New();
            }
        }

        private void Cut() => RichEdit.Document.Selection.Cut();

        private void DecrementFontSize()
        {
            const int minFontSize = 1;

            if (RichEdit.Document.Selection.Font.Size <= minFontSize)
            {
                RichEdit.Document.Selection.Font.Size = minFontSize;
            }
            RichEdit.Document.Selection.Font.Size--;
        }

        private void IncrementFontSize()
        {
            const int maxFontSize = 1638;

            if (RichEdit.Document.Selection.Font.Size >= maxFontSize)
            {
                RichEdit.Document.Selection.Font.Size = maxFontSize;
            }
            RichEdit.Document.Selection.Font.Size++;
        }

        private void InsertImage()
        {
            OpenFileService.DefaultExtension = ".jpg";
            OpenFileService.Filter = string.Join("", new string[]
            {
                "BMP (*.bmp;*.dip;*.rle)|*.bmp;*.dip;*.rle|", //Mapa de bits de Windows
                "JPG (*.jpg;*.jpeg;*.jpe;*.jfif)|*.jpg;*.jpeg;*.jpe;*.jfif|", //Formato de intercambio de archivos JPEG
                "PNG (*.png)|*.png|", //Portable Network Graphics
                "Todos los archivos de imagen (*.bmp;*.dip;*.rle;*.jpg;*.jpeg;*.jpe;*.jfif;*.png)|.bmp;*.dip;*.rle;*.jpg;*.jpeg;*.jpe;*.jfif;*.png",
            });
            OpenFileService.FilterIndex = 4;
            OpenFileService.MultiSelect = true;
            OpenFileService.Title = "Insertar imagen";

            if (OpenFileService.ShowDialog() == true && OpenFileService.FileNames.All(filename => filename.Length > 0))
            {
                foreach (var filename in OpenFileService.FileNames)
                {
                    RichEdit.InsertImage(filename);
                }
            }
        }

        private void MoveToNextPage() => DocumentViewer.StartPage++;

        private void MoveToPreviousPage()
        {
            if (DocumentViewer.StartPage > 0)
            {
                DocumentViewer.StartPage--;
            }
        }

        private void OpenFile()
        {
            OpenFileService.DefaultExtension = ".rtf";
            OpenFileService.Filter = string.Join("", new string[]
            {
                "Documento de texto enriquecido (*.rtf)|*.rtf|",
                "Documento de texto (*.txt)|*.txt|",
                "Todos los archivos (*.*)|*.*"
            });
            OpenFileService.FilterIndex = 1;
            OpenFileService.MultiSelect = false;
            OpenFileService.Title = "Abrir archivo";

            if (OpenFileService.ShowDialog() == true && OpenFileService.FileName.Length > 0)
            {
                if (OpenFileService.FilterIndex == 1)
                {
                    RichEdit.Document.OpenFile(OpenFileService.FileName, TextOpenSaveOptions.RTF);
                }
                else
                {
                    RichEdit.Document.OpenFile(OpenFileService.FileName, TextOpenSaveOptions.Default);
                }
                MainWindow.Title = $"{Path.GetFileName(RichEdit.Document.Name)} - ";
            }
        }

        private void Paste(object parameter)
        {
            var format = int.Parse(parameter.ToString());

            if (RichEdit.Document.Selection.CanPaste(format))
            {
                RichEdit.Document.Selection.Paste(format);
            }
        }

        private void Print()
        {
            if (PrintFileService.ShowDialog() == true)
            {
                RichEdit.PrintDocument.Print();
            }
        }

        private void SaveFile()
        {
            SaveFileService.AddExtension = true;
            SaveFileService.DefaultExtension = ".rtf";
            SaveFileService.Filter = "Documento de texto enriquecido (*.rtf)|*.rtf|Documento de texto (*.txt)|*.txt";
            SaveFileService.FilterIndex = 1;
            SaveFileService.Title = "Guardar archivo";

            if (SaveFileService.ShowDialog() == true && SaveFileService.FileName.Length > 0)
            {
                if (SaveFileService.FilterIndex == 1)
                {
                    RichEdit.Document.SaveFile(SaveFileService.FileName, TextOpenSaveOptions.RTF);
                }
                else
                {
                    RichEdit.Document.SaveFile(SaveFileService.FileName, TextOpenSaveOptions.PlainText);
                }
                MainWindow.Title = $"{Path.GetFileName(RichEdit.Document.Name)} - ";
            }
        } 

        private void CancelPreviewLineSpacing() => RichEdit.Document.Selection.Paragraph.SetLineSpacing(lineSpacing);

        private void PreviewLineSpacing(object parameter)
        {
            lineSpacing = RichEdit.Document.Selection.Paragraph.LineSpacing;
            RichEdit.Document.Selection.Paragraph.SetLineSpacing((float)parameter);
        }

        private void SetLineSpacing(object parameter)
        {
            lineSpacing = (float)parameter;
            RichEdit.Document.Selection.Paragraph.SetLineSpacing(lineSpacing);
        }

        private void SetListBullet() => RichEdit.Document.Selection.Paragraph.ListType = ListType.Bullet;

        private void SetPageLayout(object parameter) => DocumentViewer.Columns = (int)parameter;

        private void SetPageZoom(object parameter) => DocumentViewer.Zoom = (double)parameter;

        private void SetSpaceAfter(object parameter)
        {
            var value = parameter.ToString();
            var spaceAfter = float.Parse(value);
            RichEdit.Document.Selection.Paragraph.SpaceAfter = spaceAfter;
        }

        private void SetSpaceBefore(object parameter)
        {
            var value = parameter.ToString();
            var spaceBefore = float.Parse(value);
            RichEdit.Document.Selection.Paragraph.SpaceBefore = spaceBefore;
        }

        private void SetUnderlineStyle(object parameter) => RichEdit.Document.Selection.Font.Underline = (int)(UnderlineStyle)parameter;

        private void SetZoomFactor(object parameter)
        {
            var factor = (float)parameter;
            RichEdit.ZoomFactor = factor != 0f ? RichEdit.ZoomFactor + factor : 1.0f;
        }

        private void ToggleBold() => RichEdit.Document.Selection.Font.Bold = FormatEffect.Toggle;

        private void ToggleItalic() => RichEdit.Document.Selection.Font.Italic = FormatEffect.Toggle;

        private void ToggleShadow() => RichEdit.Document.Selection.Font.Shadow = FormatEffect.Toggle;

        private void ToggleSmallCaps() => RichEdit.Document.Selection.Font.SmallCaps = FormatEffect.Toggle;

        private void ToggleStrikethrough() => RichEdit.Document.Selection.Font.Strikethrough = FormatEffect.Toggle;

        private void ToggleSubscript() => RichEdit.Document.Selection.Font.Subscript = FormatEffect.Toggle;

        private void ToggleSuperscript() => RichEdit.Document.Selection.Font.Superscript = FormatEffect.Toggle;

        private void ToggleUnderline() => RichEdit.Document.Selection.Font.Underline = (int)FormatEffect.Toggle;

        #endregion

        #region Implementation of IWordProcessor

        /// <summary>
        /// Gets or sets an instance of the <see cref="IDocumentViewer"/> interface.
        /// </summary>
        public IDocumentViewer DocumentViewer { get; set; }

        /// <summary>
        /// Gets or sets an instance of the <see cref="IRichEditBox"/> interface.
        /// </summary>
        public IRichEditBox RichEdit { get; set; }
        
        #endregion
    }
}
