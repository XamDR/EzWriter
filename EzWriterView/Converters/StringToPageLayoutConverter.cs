using System;
using System.Globalization;

namespace EzWriterView.Converters
{
    class StringToPageLayoutConverter : BaseConverter
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null)
            {
                var item = value.ToString();

                switch (item)
                {
                    case "Una página": return 1;
                    case "Dos páginas": return 2;
                    case "Tres páginas": return 3;
                }
            }
            return null;
        }
    }
}
