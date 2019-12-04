namespace EzWriterViewModel.Services
{
    /// <summary>
    /// Provides methods to be used by dialog boxes.
    /// </summary>
    public interface IAlertDialogService
    {
        /// <summary>
        /// Displays a message box that has a message and title bar caption; and ask for user confirmation.
        /// </summary>
        /// <param name="message">A string that specifies the text to display.</param>
        /// <param name="caption">A string that specifies the title bar caption to display.</param>
        /// <returns></returns>
        bool? AskConfirmation(string message, string caption);

        /// <summary>
        /// Displays a message box that has a message and title bar caption; and displays information to the user.
        /// </summary>
        /// <param name="message">A string that specifies the text to display.</param>
        /// <param name="caption">A string that specifies the title bar caption to display.</param>
        void ShowInformation(string message, string caption);        
    }
}
