using EzWriterView.Util;
using System;
using System.Windows;

namespace EzWriterView.UI
{
    /// <summary>
    /// Lógica de interacción para InsertHyperlinkDialog.xaml
    /// </summary>
    public partial class InsertHyperlinkDialog : Window
    {
        public InsertHyperlinkDialog() => InitializeComponent();

        protected override void OnSourceInitialized(EventArgs e)
        {
            base.OnSourceInitialized(e);
            WindowHelper.RemoveIcon(this);
        }
    }
}
