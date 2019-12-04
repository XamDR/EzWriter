using System;
using System.Globalization;
using System.Reflection;
using WF = System.Drawing;
using WPF = System.Windows.Media;

namespace EzWriterView.Converters
{
    class ColorToFontColorConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                //The real type of value is RuntimePropertyInfo hence we need to cast it first and then use GetValue
                //to get the actual color.
                object color = ((PropertyInfo)value).GetValue(null);
                //We need another cast because GetValue return's type is object.
                var wpfColor = (WPF.Color)color;
                var wfColor = WF.Color.FromArgb(wpfColor.A, wpfColor.R, wpfColor.G, wpfColor.B);
                return WF.ColorTranslator.ToWin32(wfColor);
            }
            return null;
        }
    }
}
