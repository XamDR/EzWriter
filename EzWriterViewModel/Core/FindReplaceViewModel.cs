using EzWriterModel.Enums;
using EzWriterViewModel.Commands;
using System.Windows.Input;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// ViewModel for the FindReplaceDialog.
    /// </summary>
    public class FindReplaceViewModel : BaseViewModel
    {
        private readonly WordProcessor wordProcessor;

        /// <summary>
        /// Initializes a new instance of the <see cref="FindReplaceViewModel"/> class.
        /// </summary>
        /// <param name="wordProcessor">An instance of the <see cref="WordProcessor"/> class.</param>
        public FindReplaceViewModel(WordProcessor wordProcessor) => this.wordProcessor = wordProcessor;

        private string textToReplace;

        /// <summary>
        /// Gets or sets the text to replace.
        /// </summary>
        public string TextToReplace
        {
            get => textToReplace;
            set
            {
                if (value != textToReplace)
                {
                    textToReplace = value;
                    OnPropertyChanged(nameof(TextToReplace));
                }
            }
        }

        private string textToSearch;

        /// <summary>
        /// Gets or sets the text to search.
        /// </summary>
        public string TextToSearch
        {
            get => textToSearch;
            set
            {
                if (value != textToSearch)
                {
                    textToSearch = value;
                    OnPropertyChanged(nameof(TextToSearch));
                }
            }
        }

        private bool isCaseChecked;

        /// <summary>
        /// Gets or sets a value indicating whether the checkbox in the FindReplaceDialog is checked.
        /// </summary>
        public bool IsCaseChecked
        {
            get => isCaseChecked;
            set
            {
                if (value != isCaseChecked)
                {
                    isCaseChecked = value;
                    OnPropertyChanged(nameof(IsCaseChecked));
                }
            }
        }

        private int selectedIndex;

        /// <summary>
        /// Gets or sets the index of the selected.
        /// </summary>
        public int SelectedIndex
        {
            get => selectedIndex;
            set
            {
                selectedIndex = value;
                OnPropertyChanged(nameof(SelectedIndex));
            }
        }

        /// <summary>
        /// Gets the <see cref="FindTextCommand"/>.
        /// </summary>
        public ICommand FindTextCommand => new DelegateCommand(FindText);

        /// <summary>
        /// Gets the <see cref="ReplaceTextCommand"/>.
        /// </summary>
        public ICommand ReplaceTextCommand => new DelegateCommand(ReplaceText);
        
        private void FindText()
        {
            var range = wordProcessor.RichEdit.Document.EntireRange;
            var options = IsCaseChecked ? FindOptions.Case : FindOptions.Word;
            int result;

            do
            {
                result = range.FindText(TextToSearch, options);
                range.Font.BackColor = 0x00FFFF; //yellow color
            } while (result > 0);
        }

        private void ReplaceText()
        {
            var range = wordProcessor.RichEdit.Document.EntireRange;
            var options = IsCaseChecked ? FindOptions.Case : FindOptions.Word;
            int result;

            do
            {
                result = range.FindText(TextToSearch, options);
                range.Text = TextToReplace;
            } while (result > 0);
        }
    }
}
