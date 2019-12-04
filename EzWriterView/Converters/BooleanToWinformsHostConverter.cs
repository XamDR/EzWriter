using EzWriterView.UI;
using System;
using System.Globalization;
using System.Windows.Forms.Integration;

namespace EzWriterView.Converters
{
    class BooleanToWinformsHostConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var result = (bool)value;

                return result ? new WindowsFormsHost { Child = MainWindow.Viewer } 
                              : new WindowsFormsHost { Child = MainWindow.RichEditBox };
            }
            return null;
        }
    }
}
