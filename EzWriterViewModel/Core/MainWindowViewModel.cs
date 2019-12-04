using EzWriterViewModel.Commands;
using System.Windows.Input;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// ViewModel for the the MainWindow.
    /// </summary>
    public class MainWindowViewModel : BaseViewModel
    {
        private readonly WordProcessor wordProcessor;

        /// <summary>
        /// Initializes a new instance of the <see cref="MainWindowViewModel"/> class.
        /// </summary>
        /// <param name="wordProcessor">An instance of the <see cref="WordProcessor"/> class.</param>
        public MainWindowViewModel(WordProcessor wordProcessor) => this.wordProcessor = wordProcessor;

        private bool isAboutDialogOpen;

        /// <summary>
        /// Gets or sets a value indicating whether the AboutDialog is open.
        /// </summary>
        public bool IsAboutDialogOpen
        {
            get => isAboutDialogOpen;
            set
            {
                isAboutDialogOpen = value;
                OnPropertyChanged(nameof(IsAboutDialogOpen));
            }
        }

        private bool isFindReplaceDialogOpen;

        /// <summary>
        /// Gets or sets a value indicating whether the FindReplaceDialog is open.
        /// </summary>
        /// <value><c>true</c> if the FindReplaceDialog is open; otherwise, <c>false</c>.</value>
        public bool IsFindReplaceDialogOpen
        {
            get => isFindReplaceDialogOpen;
            set
            {
                isFindReplaceDialogOpen = value;
                OnPropertyChanged(nameof(IsFindReplaceDialogOpen));
            }
        }

        private bool isInPreviewMode;

        /// <summary>
        /// Gets or sets if the document hosted by this window is in preview mode.
        /// </summary>
        public bool IsInPreviewMode
        {
            get => isInPreviewMode;
            set
            {
                if (value != isInPreviewMode)
                {
                    isInPreviewMode = value;
                    OnPropertyChanged(nameof(IsInPreviewMode));
                }
            }
        }

        private bool isInsertHyperlinkDialogOpen;

        /// <summary>
        /// Gets or sets a value indicating whether the InsertHyperlinkDialog is open.
        /// </summary>
        /// <value><c>true</c> if the InsertHyperlinkDialog is open; otherwise, <c>false</c>.</value>
        public bool IsInsertHyperlinkDialogOpen
        {
            get => isInsertHyperlinkDialogOpen;
            set
            {
                isInsertHyperlinkDialogOpen = value;
                OnPropertyChanged(nameof(IsInsertHyperlinkDialogOpen));
            }
        }

        private bool isInsertTableDialogOpen;

        /// <summary>
        /// Gets or sets a value indicating whether the InsertTableDialog is open.
        /// </summary>
        /// <value><c>true</c> if the InsertTableDialog is open; otherwise, <c>false</c>.</value>
        public bool IsInsertTableDialogOpen
        {
            get => isInsertTableDialogOpen;
            set
            {
                isInsertTableDialogOpen = value;
                OnPropertyChanged(nameof(IsInsertTableDialogOpen));
            }
        }

        private bool isTabVisible;

        /// <summary>
        /// Gets or sets a value indicating whether a TabRibbon is visible.
        /// </summary>
        /// <value><c>true</c> if the TabRibbon is visible; otherwise, <c>false</c>.</value>
        public bool IsTabVisible
        {
            get => isTabVisible;
            set
            {
                if (value != isTabVisible)
                {
                    isTabVisible = value;
                    OnPropertyChanged(nameof(IsTabVisible));
                }
            }
        }
        
        private double sliderValue = 100.0;

        /// <summary>
        /// Gets or sets a value of the slider control.
        /// </summary>
        public double SliderValue
        {
            get => sliderValue;
            set
            {
                if (value != sliderValue)
                {
                    sliderValue = value;
                    //var zoomFactor = sliderValue / 100 - 1.0;
                    OnPropertyChanged(nameof(SliderValue));
                }
            }
        }

        private string title;

        /// <summary>
        /// Gets or sets the title of the MainWindow.
        /// </summary>
        public string Title
        {
            get => title;
            set
            {
                if (value != title)
                {
                    title = value;
                    OnPropertyChanged(nameof(Title));
                }
            }
        }

        /// <summary>
        /// Gets the <see cref="HideTabCommand"/>.
        /// </summary>
        public ICommand HideTabCommand => new DelegateCommand(HideTab);

        /// <summary>
        /// Gets the <see cref="ShowAboutDialogCommand"/>.
        /// </summary>
        public ICommand ShowAboutDialogCommand => new DelegateCommand(ShowAboutDialog);

        /// <summary>
        /// Gets the <see cref="ShowTabCommand"/>.
        /// </summary>
        public ICommand ShowTabCommand => new DelegateCommand(ShowTab);

        /// <summary>
        /// Gets the <see cref="ShowFindReplaceDialogCommand"/>.
        /// </summary>
        public ICommand ShowFindReplaceDialogCommand => new DelegateCommand(ShowFindReplaceDialog);

        /// <summary>
        /// Gets the <see cref="ShowHyperlinkDialogCommand"/>.
        /// </summary>
        public ICommand ShowHyperlinkDialogCommand => new DelegateCommand(ShowInsertHyperlinkDialog);

        /// <summary>
        /// Gets the <see cref="ShowTableDialogCommand"/>.
        /// </summary>
        public ICommand ShowTableDialogCommand => new DelegateCommand(ShowInsertTableDialog);

        private void HideTab()
        {
            IsTabVisible = false;
            IsInPreviewMode = false;
        }

        private void ShowAboutDialog() => IsAboutDialogOpen = true;

        private void ShowTab()
        {
            IsTabVisible = true;
            IsInPreviewMode = true;
            wordProcessor.DocumentViewer.PrintDocument = wordProcessor.RichEdit.PrintDocument;
        }

        private void ShowFindReplaceDialog() => IsFindReplaceDialogOpen = true;

        private void ShowInsertHyperlinkDialog() => IsInsertHyperlinkDialogOpen = true;

        private void ShowInsertTableDialog() => IsInsertTableDialogOpen = true;
    }
}
