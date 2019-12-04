namespace EzWriterModel.Entities
{
    /// <summary>
    /// Provides functionality required by word processors.
    /// </summary>
    public interface IWordProcessor
    {
        /// <summary>
        /// Gets or sets the <see cref="IDocumentViewer"/> object associate to a word processor.
        /// </summary>
        IDocumentViewer DocumentViewer { get; set; }

        /// <summary>
        /// Gets or sets the <see cref="IRichEditBox"/> object associate to a word processor.
        /// </summary>
        IRichEditBox RichEdit { get; set; }        
    }
}
