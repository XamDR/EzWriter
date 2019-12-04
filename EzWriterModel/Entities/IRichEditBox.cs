namespace EzWriterModel.Entities
{
    /// <summary>
    /// Provides functionality required by rich edit clients.
    /// </summary>
    public interface IRichEditBox
    {
        /// <summary>
        /// Gets or sets the background color of the rich edit client.
        /// </summary>
        int BackgroundColor { get; set; }

        /// <summary>
        /// Gets the length of the content within a rich edit client.
        /// </summary>
        int ContentLength { get; set; }

        /// <summary>
        /// Gets the start of the content within a rich edit client.
        /// </summary>
        int ContentStart { get; set; }

        /// <summary>
        /// Gets a <see cref="TextDocument"/> object that enables access to the text object model (TOM) 
        /// for the text contained in a rich edit client.
        /// </summary>
        TextDocument Document { get; }

        /// <summary>
        /// Gets the <see cref="IRichEditPrintDocument"/> object associate with the IRichEditBox.
        /// </summary>
        IRichEditPrintDocument PrintDocument { get; }

        /// <summary>
        /// Gets or sets the zoom factor of the rich edit client.
        /// </summary>
        float ZoomFactor { get; set; }

        /// <summary>
        /// Inserts an image.
        /// </summary>
        /// <param name="filename">The filename (full path) of the image.</param>
        void InsertImage(string filename);

        /// <summary>
        /// Inserts a table.
        /// </summary>
        /// <param name="numColumns">The number of columns of the table to be inserted.</param>
        /// <param name="numRows">The number of rows of the table to be inserted.</param>
        void InsertTable(int numColumns, int numRows);
    }
}
