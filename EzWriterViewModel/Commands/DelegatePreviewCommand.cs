using System;
using Microsoft.Windows.Input;

namespace EzWriterViewModel.Commands
{
    /// <summary>
    /// A class that implements the <see cref="IPreviewCommand"/> interface.
    /// </summary>
    class DelegatePreviewCommand : IPreviewCommand
    {        
        private readonly Action<object> action;      
        private readonly Func<object, bool> canExecuteAction;
        private readonly Action<object> previewAction;
        private readonly Action cancelPreview;

        /// <summary>
        /// Initializes a new instance of the <see cref="DelegatePreviewCommand"/> class.
        /// </summary>
        public DelegatePreviewCommand(Action<object> action, Func<object, bool> canExecuteAction, 
                                      Action<object> previewAction, Action cancelPreview)
        {
            this.action = action;
            this.canExecuteAction = canExecuteAction;
            this.previewAction = previewAction;
            this.cancelPreview = cancelPreview;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="DelegatePreviewCommand"/> class.
        /// </summary>
        /// <param name="action">The action to execute. Takes a parameter of type <see cref="Object"/>.</param>
        /// <param name="previewAction">The action to be previewed. Takes a parameter of type <see cref="Object"/>.</param>
        /// <param name="cancelPreview">The action to cancel the preview.</param>
        public DelegatePreviewCommand(Action<object> action, Action<object> previewAction, Action cancelPreview) 
            : this(action, null, previewAction, cancelPreview) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="DelegatePreviewCommand"/> class.
        /// </summary>
        /// <param name="action">The action to execute. Takes a parameter of type <see cref="Object"/>.</param>
        /// <param name="canExecuteAction">The action to be previewed. Takes a parameter of type <see cref="Object"/>.</param>
        public DelegatePreviewCommand(Action<object> action, Func<object, bool> canExecuteAction) 
            : this(action, canExecuteAction, null, null) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="DelegatePreviewCommand"/> class.
        /// </summary>
        /// <param name="action">The action to execute. Takes a parameter of type <see cref="Object"/>.</param>
        public DelegatePreviewCommand(Action<object> action) : this(action, null, null, null) { }

        /// <summary>
        /// Cancels the preview.
        /// </summary>
        public void CancelPreview()
        {
            if (previewAction != null)
            {
                cancelPreview();
            }
        }

        /// <summary>
        /// Determines whether this instance can execute the specified action.
        /// </summary>
        /// <param name="parameter">The parameter to be sent to the action.</param>
        /// <returns><c>true</c> if this instance can execute the specified parameter; otherwise, <c>false</c>.</returns>
        public bool CanExecute(object parameter) => canExecuteAction == null ? true : canExecuteAction(parameter);

        /// <summary>
        /// Executes the specified action.
        /// </summary>
        /// <param name="parameter">The parameter to be sent to the action.</param>
        public void Execute(object parameter) => action(parameter);

        /// <summary>
        /// Previews the specified action.
        /// </summary>
        /// <param name="parameter">The parameter to be sent to the action.</param>
        public void Preview(object parameter)
        {
            if (previewAction == null)
            {
                action(parameter);
            }
            else
            {
                previewAction(parameter);
            }
        }

        /// <summary>
        /// Raises the can execute changed event.
        /// </summary>
        public void RaiseCanExecuteChanged() => CanExecuteChanged?.Invoke(this, EventArgs.Empty);

        /// <summary>
        /// Occurs when changes occur that affect whether or not the command should execute.
        /// </summary>
        public event EventHandler CanExecuteChanged;
    }
}
