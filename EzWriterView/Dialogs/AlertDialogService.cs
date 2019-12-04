using EzWriterViewModel.Services;
using System.Windows.Forms;

namespace EzWriterView.Dialogs
{
    class AlertDialogService : IAlertDialogService
    {
        public bool? AskConfirmation(string message, string caption)
        {
            var result = MessageBox.Show(message, caption, MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);

            switch (result)
            {
                case DialogResult.OK:
                case DialogResult.Yes: return true;
                case DialogResult.No: return false;
                default: return null;
            }
        }

        public void ShowInformation(string message, string caption) 
            => MessageBox.Show(message, caption, MessageBoxButtons.OK, MessageBoxIcon.Information);
    }
}
