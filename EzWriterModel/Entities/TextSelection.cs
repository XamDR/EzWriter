using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// Represents the currently selected text of a document.
    /// </summary>
    public class TextSelection : TextRange
    {
        private readonly ITextSelection2 selection;

        /// <summary>
        /// This constructor calls its base class' constructor.
        /// </summary>
        /// <param name="range">An instance of the ITextRange2 COM interface.</param>
        /// <param name="selection">An instance of the ITextSelection2 COM interface.</param>
        internal TextSelection(ITextRange2 range, ITextSelection2 selection) : base(range) => this.selection = selection;

        /// <summary>
        /// Enters text into the selection as if someone typed it.
        /// </summary>
        /// <param name="text">The text string to type into this selection.</param>
        public void TypeText(string text) => selection.TypeText(text);
    }
}
