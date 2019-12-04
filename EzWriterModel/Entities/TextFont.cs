using EzWriterModel.Enums;
using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// The class TextFont defines the default font formatting attributes of a document, 
    /// or the current font formatting attributes of a text range.
    /// </summary>
    public class TextFont
    {
        private readonly ITextFont2 font;

        /// <summary>
        /// Constructor that utilizes dependency injection.
        /// </summary>
        /// <param name="font">An instance of the ITextFont2 COM interface.</param>
        internal TextFont(ITextFont2 font) => this.font = font;

        /// <summary>
        /// Gets or sets the text background (highlight) color.
        /// </summary>
        public int BackColor
        {
            get => font.BackColor;
            set => font.BackColor = value;
        }

        /// <summary>
        /// Gets or sets whether the characters are bold.
        /// </summary>
        public FormatEffect Bold
        {
            get =>(FormatEffect)font.Bold;
            set => font.Bold = (int)value;
        }

        /// <summary>
        /// Gets or sets the foreground (text) color.
        /// </summary>
        public int ForeColor
        {
            get => font.ForeColor;
            set => font.ForeColor = value;
        }

        /// <summary>
        /// Gets or sets whether characters are in italics.
        /// </summary>
        public FormatEffect Italic
        {
            get => (FormatEffect)font.Italic;
            set => font.Italic = (int)value;
        }

        /// <summary>
        /// Gets or sets the font name.
        /// </summary>
        public string Name
        {
            get => font.Name;
            set => font.Name = value;
        }

        /// <summary>
        /// Gets or sets whether characters are displayed as shadowed.
        /// </summary>
        public FormatEffect Shadow
        {
            get => (FormatEffect)font.Shadow;
            set => font.Shadow = (int)value;
        }

        /// <summary>
        /// Gets or sets the font size.
        /// </summary>
        public float Size
        {
            get => font.Size;
            set => font.Size = value;
        }

        /// <summary>
        /// Gets or sets whether characters are in small capital letters.
        /// </summary>
        public FormatEffect SmallCaps
        {
            get => (FormatEffect)font.SmallCaps;
            set => font.SmallCaps = (int)value;
        }

        /// <summary>
        /// Gets or sets the amount of horizontal spacing between characters.
        /// </summary>
        public float Spacing
        {
            get => font.Spacing;
            set => font.Spacing = value;
        }

        /// <summary>
        /// Gets or sets whether characters are displayed with a horizontal line through the center.
        /// </summary>
        public FormatEffect Strikethrough
        {
            get => (FormatEffect)font.StrikeThrough;
            set => font.StrikeThrough = (int)value;
        }

        /// <summary>
        /// Gets or sets whether characters are displayed as subscript.
        /// </summary>
        public FormatEffect Subscript
        {
            get => (FormatEffect)font.Subscript;
            set => font.Subscript = (int)value;
        }

        /// <summary>
        /// Gets or sets whether characters are displayed as superscript.
        /// </summary>
        public FormatEffect Superscript
        {
            get => (FormatEffect)font.Superscript;
            set => font.Superscript = (int)value;
        }

        /// <summary>
        /// Gets or sets the type of underlining for the characters in a text range.
        /// </summary>
        public int Underline
        {
            get => font.Underline;
            set => font.Underline = value;
        }

        /// <summary>
        /// Resets the character formatting to the specified value.
        /// </summary>
        /// <param name="value">The kind of reset.</param>
        public void Reset(int value) => font.Reset(value);
    }
}
