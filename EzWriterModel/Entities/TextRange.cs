using EzWriterModel.Enums;
using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// The TextRange class represents a span of continuous text in a document, and provides powerful editing and data-binding properties and methods 
    /// that allow an app to select, examine, and change document text.
    /// </summary>
    public class TextRange
    {
        private readonly ITextRange2 range;
        private TextParagraph paragraph;
        private TextFont font;

        /// <summary>
        /// Constructor that utilizes dependency injection.
        /// </summary>
        /// <param name="range">An instance of the ITextRange2 COM interface</param>
        internal TextRange(ITextRange2 range) => this.range = range;

        /// <summary>
        /// Gets or sets the end character position of the text range.
        /// </summary>
        public int EndPosition
        {
            get => range.End;
            set => range.End = value;
        }

        /// <summary>
        /// Gets or sets the font formatting attributes of the text range.
        /// </summary>
        public TextFont Font
        {
            get
            {
                font = new TextFont(range.Font2);                
                return font;
            }
            set => font = value;
        }

        /// <summary>
        /// Gets or sets the paragraph formatting attributes of the text range.
        /// </summary>
        public TextParagraph Paragraph
        {
            get
            {
                paragraph = new TextParagraph(range.Para2);
                return paragraph;
            }
            set => paragraph = value;
        }

        /// <summary>
        /// Gets or sets the start position of the text range.
        /// </summary>
        public int StartPosition
        {
            get => range.Start;
            set => range.Start = value;
        }

        /// <summary>
        /// Gets or sets the plain text of the text range.
        /// </summary>
        public string Text
        {
            get => range.Text;
            set => range.Text = value;
        }

        /// <summary>
        /// Gets or sets the URL text associated with the text range.
        /// </summary>
        public string Url
        {
            get => range.URL;
            set => range.URL = value;
        }

        /// <summary>
        /// Determines whether the Clipboard contains content that can be pasted, using a specified format, into the current text range.
        /// </summary>
        /// <param name="format">Clipboard format that is used. 
        /// Zero represents the best format, which usually is RTF, but other formats are also possible. 
        /// The default value is zero.</param>
        /// <returns>True if the Clipboard content can be pasted into the text range in the specified format, otherwise false.</returns>
        public bool CanPaste(int format = 0) => range.CanPaste(null, format) != 0;

        /// <summary>
        /// Changes the case of letters in a text range.
        /// </summary>
        /// <param name="value">The new case of letters in the text range.</param>
        public void ChangeCase(LetterCase value) => range.ChangeCase((int)value);

        /// <summary>
        /// Copies the text of the text range to the Clipboard.
        /// </summary>
        public void Copy() => range.Copy(out object pVar);

        /// <summary>
        /// Moves the text of the text range to the Clipboard.
        /// </summary>
        public void Cut() => range.Cut(out object pVar);

        /// <summary>
        /// Expands a text range to completely contain any partial text units.
        /// </summary>
        /// <param name="unit">The text unit to use to expand the range.</param>
        /// <returns>The number of characters added to the text range, if the range was expanded to include a partially contained unit.</returns>
        public int Expand(TextRangeUnit unit) => range.Expand((int)unit);

        /// <summary>
        /// Searches for a particular text string in a range.
        /// </summary>
        /// <param name="text">The text string to search for.</param>
        /// <param name="options">The options to use when doing the text search.</param>
        /// <returns>The length of the matching text string, or zero if no matching string is found.</returns>
        public int FindText(string text, FindOptions options) => range.FindText(text, (int)tomConstants.tomForward, (int)options);

        /// <summary>
        /// Moves the insertion point forward or backward a specified number of units.
        /// </summary>
        /// <param name="unit"><see cref="TextRangeUnit"/> to use.</param>
        /// <param name="count">Number of units to move past.</param>
        /// <returns></returns>
        public int Move(TextRangeUnit unit, int count) => range.Move((int)unit, count);

        /// <summary>
        /// Pastes text from the Clipboard into the text range.
        /// </summary>
        /// <param name="format">The clipboard format to use in the paste operation. 
        /// Zero represents the best format, which usually is Rich Text Format (RTF), but other formats are also possible. 
        /// The default value is zero.</param>
        public void Paste(int format = 0) => range.Paste(null, format);
    }
}
