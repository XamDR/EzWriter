namespace EzWriterViewModel.Services
{
    /// <summary>
    /// Provides a method to show print dialog windows.
    /// </summary>
    public interface IPrintService
    {
        /// <summary>
        /// Displays a common dialog.
        /// </summary>
        /// <returns>If the user clicks the OK button of the dialog that is displayed true is returned; otherwise, false.</returns>
        bool? ShowDialog();
    }
}
