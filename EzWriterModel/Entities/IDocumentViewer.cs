namespace EzWriterModel.Entities
{
    /// <summary>
    /// Provides functionality to preview documents created by rich edit clients.
    /// </summary>
    public interface IDocumentViewer
    {
        /// <summary>
        /// Gets or sets the number of pages displayed horizontally across the screen.
        /// </summary>
        int Columns { get; set; }

        /// <summary>
        /// Gets or sets the <see cref="IRichEditPrintDocument"/> object associate with the IDocumentViewer.
        /// </summary>
        IRichEditPrintDocument PrintDocument { get; set; }

        /// <summary>
        /// Gets or sets the page number of the upper left page.
        /// </summary>
        int StartPage { get; set; }

        /// <summary>
        /// Gets or sets a value indicating how large the pages will appear.
        /// </summary>
        double Zoom { get; set; }
    }
}
