using EzWriterCustomControls.UIElement;
using EzWriterModel.Entities;
using EzWriterViewModel.Services;
using System.Windows.Forms;

namespace EzWriterView.Dialogs
{
    class PageSetupService : IPageSetupService
    {
        private readonly PageSetupDialog pageSetupDialog;

        public PageSetupService()
        {
            pageSetupDialog = new PageSetupDialog
            {
                EnableMetric = true,
            };
        }

        public IRichEditPrintDocument Document { get; set; }

        public bool? ShowDialog()
        {
            pageSetupDialog.Document = (RichEditPrintDocument)Document;

            var result = pageSetupDialog.ShowDialog();

            switch (result)
            {
                case DialogResult.OK:
                case DialogResult.Yes: return true;

                case DialogResult.Cancel:
                case DialogResult.No: return false;

                default: return null;
            }
        }
    }
}
