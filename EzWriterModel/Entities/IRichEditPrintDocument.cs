namespace EzWriterModel.Entities
{
    /// <summary>
    /// Provides functionality to print documents created by rich edit clients.
    /// </summary>
    public interface IRichEditPrintDocument
    {
        /// <summary>
        /// Prints the current document.
        /// </summary>
        void Print();
    }
}
