using System;
using System.Globalization;

namespace EzWriterView.Converters
{
    class StringToLineSpacingConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var spacing = value.ToString();
                return float.Parse(spacing.Replace("pt", string.Empty));
            }
            return null;
        }
    }
}
