using EzWriterViewModel.Services;
using System.Windows.Forms;

namespace EzWriterView.Dialogs
{
    class PrintDialogService : IPrintService
    {
        private readonly PrintDialog printDialog;

        public PrintDialogService()
        {
            printDialog = new PrintDialog
            {
                AllowCurrentPage = true,
                AllowSelection = true,
                AllowSomePages = true,
                UseEXDialog = true
            };
        }

        public bool? ShowDialog()
        {
            var result = printDialog.ShowDialog();

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
