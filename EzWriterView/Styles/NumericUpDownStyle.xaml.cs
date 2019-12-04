using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace EzWriterView.Styles
{
    public partial class NumericUpDownStyle : ResourceDictionary
    {
        public NumericUpDownStyle()
        {
            InitializeComponent();
        }

        private void TextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            var textBox = sender as TextBox;
            e.Handled = !IsValidCharacter(textBox, e.Text);
        }

        private bool IsValidCharacter(TextBox textBox, string @char)
        {
            NumberFormatInfo nfi = CultureInfo.CurrentCulture.NumberFormat;
            var negativeSign = nfi.NegativeSign;
            var positiveSign = nfi.PositiveSign;
            var decimalSeparator = nfi.NumberDecimalSeparator;

            if (!char.IsControl(@char, 0) && !char.IsDigit(@char, 0) && @char != negativeSign &&
                @char != positiveSign && @char != decimalSeparator)
            {
                return false;
            }
            if (@char == decimalSeparator && textBox.Text.IndexOf(decimalSeparator) > -1)
            {
                return false;
            }
            if (@char == negativeSign && textBox.Text.IndexOf(negativeSign) > -1)
            {
                return false;
            }
            if (@char == positiveSign && textBox.Text.IndexOf(positiveSign) > -1)
            {
                return false;
            }
            if ((@char == negativeSign || @char == positiveSign) &&
                (textBox.Text.IndexOf(negativeSign) > -1 || textBox.Text.IndexOf(positiveSign) > -1))
            {
                return false;
            }
            if ((@char == negativeSign || @char == positiveSign) && textBox.SelectionStart != 0)
            {
                return false;
            }
            if ((char.IsDigit(@char, 0) || @char == decimalSeparator) &&
                (textBox.Text.IndexOf(negativeSign) > -1 || textBox.Text.IndexOf(positiveSign) > -1) && 
                textBox.SelectionStart == 0)
            {
                return false;
            }
            return true;
        }
    }
}
