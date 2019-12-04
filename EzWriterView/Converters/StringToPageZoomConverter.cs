using System;
using System.Globalization;

namespace EzWriterView.Converters
{
    class StringToPageZoomConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var item = value.ToString();
                var zoom = double.Parse(item.Replace("%", string.Empty));

                return zoom / 100;
            }
            return null;
        }
    }
}
