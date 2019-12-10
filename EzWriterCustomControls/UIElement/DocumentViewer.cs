using EzWriterCustomControls.Util;
using EzWriterModel.Entities;
using System.Windows.Forms;

namespace EzWriterCustomControls.UIElement
{
    public partial class DocumentViewer : PrintPreviewControl, IDocumentViewer
    {
        public DocumentViewer()
        {
            InitializeComponent();
            contextMenu.Renderer = new FluentContextMenuStripRenderer();
            ContextMenuStrip = contextMenu;
            RaiseMenuItemsEvents();            
        }

        public IRichEditPrintDocument PrintDocument
        {
            get => (RichEditPrintDocument)Document;
            set => Document = (RichEditPrintDocument)value;
        }

        private void RaiseMenuItemsEvents()
        {
            tsMenuItemPrint.Click += (s, e) => PrintDocument.Print();
            tsMenuItemCopy.Click += (s, e) => { };
        }
    }
}
