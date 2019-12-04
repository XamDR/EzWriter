using EzWriterView.Util;
using System;
using System.Windows;

namespace EzWriterView.UI
{
    public partial class FindReplaceDialog : Window
    {
        public FindReplaceDialog() => InitializeComponent();

        protected override void OnSourceInitialized(EventArgs e)
        {
            base.OnSourceInitialized(e);
            WindowHelper.RemoveIcon(this);
        }
    }
}
