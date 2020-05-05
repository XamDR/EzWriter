using EzWriterCustomControls.UIElement;
using EzWriterView.Dialogs;
using EzWriterViewModel.Core;
using System.Drawing;
using System.Windows;
using System.Windows.Forms;

namespace EzWriterView.UI
{
    public partial class MainWindow : Window
    {
        private readonly WordProcessor wordProcessor;

        public MainWindow()
        {
            InitializeComponent();
            Viewer = InitializeDocumentViewer();
            RichEditBox = InitializeRichEdit();
            wordProcessor = InitializeWordProcessor();
            DataContext = wordProcessor;
            Loaded += (s, e) => 
            {
                RichEditBox.Focus();
            };           
        }

        public static DocumentViewer Viewer { get; private set; }

        public static RichEditBox RichEditBox { get; private set; }

        private DocumentViewer InitializeDocumentViewer()
        {
            var documentViewer = new DocumentViewer { Zoom = 1.0 };
            return documentViewer;
        }

        private RichEditBox InitializeRichEdit()
        {
            var richEditBox = new RichEditBox
            {
                BorderStyle = BorderStyle.None,
                Font = new Font("Segoe UI", 12f),
                IsSpellCheckEnabled = true,
            };
            return richEditBox;
        }

        private WordProcessor InitializeWordProcessor()
        {
            var processor = new WordProcessor
            {
                DocumentViewer = Viewer,
                RichEdit = RichEditBox,
                OpenFileService = new OpenFileDialogService(),
                SaveFileService = new SaveFileDialogService(),
                PrintFileService = new PrintDialogService(),
                PageSetupService = new PageSetupService(),
                AlertService = new AlertDialogService(),
            };
            return processor;
        }
    }
}
