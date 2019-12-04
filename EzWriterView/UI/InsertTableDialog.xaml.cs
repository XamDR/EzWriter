using EzWriterView.Util;
using System;
using System.Windows;

namespace EzWriterView.UI
{
    public partial class InsertTableDialog : Window
    {
        public InsertTableDialog() => InitializeComponent();

        protected override void OnSourceInitialized(EventArgs e)
        {
            base.OnSourceInitialized(e);
            WindowHelper.RemoveIcon(this);
        }
    }
}
