using System.Windows.Forms;
using EzWriterModel.Entities;

namespace EzWriterCustomControls.UIElement
{
    public partial class DocumentViewer : PrintPreviewControl, IDocumentViewer
    {
        public DocumentViewer() => InitializeComponent();

        public IRichEditPrintDocument PrintDocument
        {
            get => (RichEditPrintDocument)Document;
            set => Document = (RichEditPrintDocument)value;
        }
    }
}
