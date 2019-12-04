using EzWriterViewModel.Services;
using Microsoft.Win32;

namespace EzWriterView.Dialogs
{
    class OpenFileDialogService : IDialogService
    {
        private readonly OpenFileDialog ofd;

        public OpenFileDialogService() => ofd = new OpenFileDialog();

        public bool AddExtension
        {
            get => throw new System.NotSupportedException();
            set => throw new System.NotSupportedException();
        }

        public string DefaultExtension
        {
            get => ofd.DefaultExt;
            set => ofd.DefaultExt = value;
        }

        public string FileName => ofd.FileName;

        public string[] FileNames => ofd.FileNames;

        public string Filter
        {
            get => ofd.Filter;
            set => ofd.Filter = value;
        }

        public int FilterIndex
        {
            get => ofd.FilterIndex;
            set => ofd.FilterIndex = value;
        }

        public bool MultiSelect
        {
            get => ofd.Multiselect;
            set => ofd.Multiselect = value;
        }

        public string Title
        {
            get => ofd.Title;
            set => ofd.Title = value;
        }        

        public bool? ShowDialog() => ofd.ShowDialog();
    }
}
