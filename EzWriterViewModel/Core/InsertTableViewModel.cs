using EzWriterViewModel.Commands;
using System.Windows.Input;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// ViewModel for the InsertTableDialog.
    /// </summary>
    public class InsertTableViewModel : BaseViewModel
    {
        private readonly WordProcessor wordProcessor;

        /// <summary>
        /// Initializes a new instance of the <see cref="InsertTableViewModel"/> class.
        /// </summary>
        /// <param name="wordProcessor">An instance of the <see cref="WordProcessor"/> class.</param>
        public InsertTableViewModel(WordProcessor wordProcessor) => this.wordProcessor = wordProcessor;

        private int numberColumns;

        /// <summary>
        /// Gets or sets the number of columns of the table.
        /// </summary>
        public int NumberColumns
        {
            get => numberColumns;
            set
            {
                if (value != numberColumns)
                {
                    numberColumns = value;
                    OnPropertyChanged(nameof(numberColumns));
                }
            }
        }

        private int numberRows;

        /// <summary>
        /// Gets or sets the number of rows of the table.
        /// </summary>
        public int NumberRows
        {
            get => numberRows;
            set
            {
                if (value != numberRows)
                {
                    numberRows = value;
                    OnPropertyChanged(nameof(NumberRows));
                }
            }
        }

        /// <summary>
        /// Gets the <see cref="InsertTableCommand"/>.
        /// </summary>
        public ICommand InsertTableCommand => new DelegateCommand(InsertTable);

        private void InsertTable()
        {
            wordProcessor.MainWindow.IsInsertTableDialogOpen = false; //CHECK THIS
            wordProcessor.RichEdit.InsertTable(NumberColumns, NumberRows);
        }
    }
}
