using EzWriterModel.Entities;
using EzWriterViewModel.Services;
using EzWriterCustomControls.UIElement;
using System.Drawing;

namespace EzWriterView.Dialogs
{
    class PrintPreviewService : IPrintPreviewService
    {
        private readonly DocumentViewer documentViewer;

        public PrintPreviewService()
        {
            documentViewer = new DocumentViewer()
            {
                BackColor = SystemColors.GradientActiveCaption,                
            };
        }

        public int Columns
        {
            get => documentViewer.Columns;
            set => documentViewer.Columns = value;
        }

        public IRichEditPrintDocument Document
        {
            get => documentViewer.PrintDocument;
            set => documentViewer.PrintDocument = value;
        }

        public int Rows
        {
            get => documentViewer.Rows;
            set => documentViewer.Rows = value;
        }

        public int StartPage
        {
            get => documentViewer.StartPage;
            set => documentViewer.StartPage = value;
        }

        public bool UseAntiAlias
        {
            get => documentViewer.UseAntiAlias;
            set => documentViewer.UseAntiAlias = value;
        }

        public double Zoom
        {
            get => documentViewer.Zoom;
            set => documentViewer.Zoom = value;
        }
    }
}
