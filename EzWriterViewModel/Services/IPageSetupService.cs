using EzWriterModel.Entities;

namespace EzWriterViewModel.Services
{
    /// <summary>
    /// 
    /// </summary>
    public interface IPageSetupService
    {
        /// <summary>
        /// Gets or sets a value indicating the <see cref="IRichEditPrintDocument"/> to get page settings from.
        /// </summary>
        IRichEditPrintDocument Document { get; set; }

        /// <summary>
        /// Displays a common dialog.
        /// </summary>
        /// <returns>If the user clicks the OK button of the dialog that is displayed true is returned; otherwise, false.</returns>
        bool? ShowDialog();
    }
}
