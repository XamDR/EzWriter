using EzWriterViewModel.Commands;
using System.Windows.Input;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// ViewModel for the InsertHyperlinkDialog.
    /// </summary>
    public class InsertHyperlinkViewModel : BaseViewModel
    {
        private readonly WordProcessor wordProcessor;

        /// <summary>
        /// Initializes a new instance of the <see cref="InsertHyperlinkViewModel"/> class.
        /// </summary>
        /// <param name="wordProcessor">An instance of the <see cref="WordProcessor"/> class.</param>
        public InsertHyperlinkViewModel(WordProcessor wordProcessor) => this.wordProcessor = wordProcessor;

        private string friendlyName;

        /// <summary>
        /// Gets or sets the friendly name of the URL.
        /// </summary> 
        public string FriendlyName
        {
            get => friendlyName;
            set
            {
                if (value != friendlyName)
                {
                    friendlyName = value;
                    OnPropertyChanged(nameof(FriendlyName));
                }
            }
        }

        private string url;

        /// <summary>
        /// Gets or sets the URL text.
        /// </summary>
        public string Url
        {
            get => url;
            set
            {
                if (value != url)
                {
                    url = value;
                    OnPropertyChanged(nameof(Url));
                }
            }
        }

        /// <summary>
        /// Gets the <see cref="InsertHyperlinkCommand"/>.
        /// </summary>
        public ICommand InsertHyperlinkCommand => new DelegateCommand(InsertHyperlink);

        private void InsertHyperlink()
        {
            var selection = wordProcessor.RichEdit.Document.Selection;
            selection.Text = FriendlyName;
            selection.Url = $"\"{Url}\"";
            wordProcessor.MainWindow.IsInsertHyperlinkDialogOpen = false;
        }
    }
}
