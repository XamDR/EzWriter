using System;
using System.Globalization;

namespace EzWriterView.Converters
{
    class StringToCharSpacingConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var item = value.ToString();

                switch (item)
                {
                    case "Muy estrecho": return -2.0f;
                    case "Estrecho": return -1.0f;
                    case "Normal": return 0f;
                    case "Separado": return 1.0f;
                    case "Muy separado": return 2.0f;
                }
            }
            return null;
        }
    }
}
