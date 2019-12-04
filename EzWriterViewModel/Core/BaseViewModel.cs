using System.ComponentModel;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// Base class for ViewModels that implements the <see cref="INotifyPropertyChanged"/> interface.
    /// </summary>
    public class BaseViewModel : INotifyPropertyChanged
    {
        /// <summary>
        /// Called when a property in the ViewModel changes. Can be overriden in a derived class.
        /// </summary>
        protected virtual void OnPropertyChanged(string propertyName) 
            => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        /// <summary>
        /// 
        /// Occurs when a property value changes.
        /// </summary>
        public event PropertyChangedEventHandler PropertyChanged;
    }
}
