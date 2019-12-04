using System;
using System.Globalization;

namespace EzWriterView.Converters
{
    class StringToZoomFactorConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var item = value.ToString();

                switch (item)
                {
                    case "Acercar": return 0.1f;
                    case "Alejar": return -0.1f;
                    case "100%": return 0f;
                }
            }
            return null;
        }
    }
}
