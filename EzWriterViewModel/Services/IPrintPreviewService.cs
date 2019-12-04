using EzWriterModel.Entities;

namespace EzWriterViewModel.Services
{
    /// <summary>
    /// Provides properties and methods to be used by print preview clients.
    /// </summary>
    public interface IPrintPreviewService
    {
        /// <summary>
        /// Gets or sets the number of columns.
        /// </summary>
        int Columns { get; set; }
        
        /// <summary>
        /// Gets or sets an instance of the <see cref="IRichEditPrintDocument"/> interface.
        /// </summary>
        IRichEditPrintDocument Document { get; set; }

        /// <summary>
        /// Gets or sets the number of rows.
        /// </summary>
        int Rows { get; set; }

        /// <summary>
        /// Gets or sets the start page.
        /// </summary>
        int StartPage { get; set; }
        
        /// <summary>
        /// Gets or sets a value the indicates if AntiAlias is enabled.
        /// </summary>
        bool UseAntiAlias { get; set; }
        
        /// <summary>
        /// Gets or sets the zoom factor.
        /// </summary>
        double Zoom { get; set; }
    }
}
