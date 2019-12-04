using EzWriterModel.Enums;
using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// The TextDocument class provides access to the content of a document, providing a way to load and save the document to a stream, 
    /// retrieve text ranges, get the active selection, set default formatting attributes, and so on.
    /// </summary>
    public class TextDocument
    {
        private readonly ITextDocument2 document; 
        private readonly IRichEditBox richEdit;

        /// <summary>
        /// Constructor that utilizes dependency injection.
        /// </summary>
        /// <param name="richEdit">An instance of the IRichEditBox interface.</param>
        /// <param name="document">An instance of the ITextDocument2 COM interface.</param>
        public TextDocument(IRichEditBox richEdit, ITextDocument2 document)
        {
            this.richEdit = richEdit;
            this.document = document;            
        }

        /// <summary>
        /// Gets or sets the default tab spacing.
        /// </summary>
        public float DefaultTabStop
        {
            get => document.DefaultTabStop;
            set => document.DefaultTabStop = value;
        }

        /// <summary>
        /// Gets the entire TextRange object for active story of the document.
        /// </summary>
        public TextRange EntireRange
        {
            get
            {
                var range = document.Range2(0, 0);
                range.MoveEnd((int)TextRangeUnit.Story, 1);
                return new TextRange(range);
            }
        }

        /// <summary>
        /// Gets the file name of the document.
        /// </summary>
        public string Name => document.Name;

        /// <summary>
        /// Gets or sets a value that indicates whether changes have been made since the file was last saved.
        /// </summary>
        public bool Saved
        {
            get => document.Saved == (int)tomConstants.tomTrue;
            set => document.Saved = value ? (int)tomConstants.tomTrue : (int)tomConstants.tomFalse;
        }

        /// <summary>
        /// Gets the active text selection.
        /// </summary>
        public TextSelection Selection
            => new TextSelection(document.Range2(richEdit.ContentStart, richEdit.ContentStart + richEdit.ContentLength), document.Selection2);

        /// <summary>
        /// Increments an internal counter that controls whether text updates are displayed immediately or batched.
        /// </summary>
        /// <returns></returns>
        public int BeginUpdate() => document.Freeze();

        /// <summary>
        /// Decrements an internal counter that controls whether text updates are displayed immediately or batched.
        /// </summary>
        /// <returns></returns>
        public int EndUpdate() => document.Unfreeze();

        /// <summary>
        /// Retrieves a TextRange object for a specified range of content in the active story of the document.
        /// </summary>
        /// <param name="start">The start position of new range. The default value is zero, which represents the start of the document.</param>
        /// <param name="end">The end position of new range. The default value is zero.</param>
        /// <returns></returns>
        public TextRange GetRange(int start, int end) => new TextRange(document.Range2(start, end));

        /// <summary>
        /// Opens a new document.
        /// </summary>
        public void New() => document.New();

        /// <summary>
        /// Opens a specified document.
        /// </summary>
        /// <param name="filename">Specifies the name of the file to open.</param>
        /// <param name="mode">The text options for opening the document.</param>
        /// <param name="flags">Additional options for opening the document.
        /// The default value is <see cref="TextOpenOptions.None"/></param>
        /// <param name="codePage">The code page to use for the file. The default value is 0.</param>
        public void OpenFile(string filename, TextOpenSaveOptions mode, TextOpenOptions flags = TextOpenOptions.None, int codePage = 0) 
            => document.Open(filename, (int)mode | (int)flags, codePage);

        /// <summary>
        /// Saves the current document.
        /// </summary>
        /// <param name="filename">Specifies the name of the file to save.</param>
        /// <param name="mode">The text options for saving the document.</param>
        /// <param name="flags">Additional options for saving the document.
        /// The default value is <see cref="TextSaveOptions.None"/></param>
        /// <param name="codePage">The code page to use for the file. The default value is 0.</param>
        public void SaveFile(string filename, TextOpenSaveOptions mode, TextSaveOptions flags = TextSaveOptions.None, int codePage = 0) 
            => document.Save(filename, (int)mode | (int)flags, codePage);
    }
}
