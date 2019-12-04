using EzWriterViewModel.Services;
using Microsoft.Win32;

namespace EzWriterView.Dialogs
{
    class SaveFileDialogService : IDialogService
    {
        private readonly SaveFileDialog sfd;

        public SaveFileDialogService() => sfd = new SaveFileDialog();

        public bool AddExtension
        {
            get => sfd.AddExtension;
            set => sfd.AddExtension = value;
        }

        public string DefaultExtension
        {
            get => sfd.DefaultExt;
            set => sfd.DefaultExt = value;
        }

        public string FileName => sfd.FileName;

        public string[] FileNames => throw new System.NotSupportedException();

        public string Filter
        {
            get => sfd.Filter;
            set => sfd.Filter = value;
        }

        public int FilterIndex
        {
            get => sfd.FilterIndex;
            set => sfd.FilterIndex = value;
        }

        public bool MultiSelect
        {
            get => throw new System.NotSupportedException();
            set => throw new System.NotSupportedException();
        }

        public string Title
        {
            get => sfd.Title;
            set => sfd.Title = value;
        }

        public bool? ShowDialog() => sfd.ShowDialog();
    }
}
