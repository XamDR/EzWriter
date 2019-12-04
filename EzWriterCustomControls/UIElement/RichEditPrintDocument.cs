using System.ComponentModel;
using System.Drawing.Printing;
using EzWriterModel.Entities;

namespace EzWriterCustomControls.UIElement
{
    public partial class RichEditPrintDocument : PrintDocument, IRichEditPrintDocument
    {        
        private int firstCharOnPage;
        private RichEditBox richEdit;

        public RichEditPrintDocument() => InitializeComponent();

        public RichEditPrintDocument(IContainer container)
        {
            container.Add(this);
            InitializeComponent();            
        }

        public RichEditPrintDocument(RichEditBox richEdit) : this() => this.richEdit = richEdit;

        protected override void OnBeginPrint(PrintEventArgs e)
        {
            base.OnBeginPrint(e);
            firstCharOnPage = 0;
        }

        protected override void OnEndPrint(PrintEventArgs e)
        {
            base.OnEndPrint(e);
            richEdit.FormatRangeDone();
        }

        protected override void OnPrintPage(PrintPageEventArgs e)
        {
            base.OnPrintPage(e);
            firstCharOnPage = richEdit.FormatRange(e, firstCharOnPage, richEdit.TextLength);
            e.HasMorePages = firstCharOnPage < richEdit.TextLength;
        }
    }
}
