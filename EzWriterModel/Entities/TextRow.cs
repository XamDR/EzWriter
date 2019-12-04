using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// The TextRow class provides methods to insert one or more identical or nonidentical table rows, 
    /// and to retrieve and change table row properties. 
    /// </summary>
    public class TextRow
    {
        private readonly ITextRow row;

        /// <summary>
        /// Constructor that utilizes dependency injection.
        /// </summary>
        /// <param name="row">An instance of the ITextRow COM interface.</param>
        public TextRow(ITextRow row) => this.row = row;

        /// <summary>
        /// Inserts a row, or rows, at the location identified by the associated TextRange object.
        /// </summary>
        /// <param name="numRows">The number of rows to insert.</param>
        public void Insert(int numRows) => row.Insert(numRows);
    }
}
