using EzWriterViewModel.Core;
using Microsoft.Xaml.Behaviors;
using System;
using System.Windows;

namespace EzWriterView.Behaviors
{
    class ChildWindowBehavior : Behavior<Window>
    {
        private Window windowInstance;

        public static readonly DependencyProperty IsModalProperty =
            DependencyProperty.Register("IsModal", typeof(bool), typeof(ChildWindowBehavior), new PropertyMetadata(false));

        public bool IsModal
        {
            get => (bool)GetValue(IsModalProperty);
            set => SetValue(IsModalProperty, value);
        }

        public static readonly DependencyProperty IsOnScreenProperty =
            DependencyProperty.Register("IsOnScreen", typeof(bool), typeof(ChildWindowBehavior),
                                        new FrameworkPropertyMetadata(false, FrameworkPropertyMetadataOptions.BindsTwoWayByDefault, IsOnScreenChanged));

        public bool IsOnScreen
        {
            get => (bool)GetValue(IsOnScreenProperty);
            set => SetValue(IsOnScreenProperty, value);
        }

        public static readonly DependencyProperty OwnerProperty =
            DependencyProperty.Register("Owner", typeof(Window), typeof(ChildWindowBehavior), new PropertyMetadata(null));

        public Window Owner
        {
            get => (Window)GetValue(OwnerProperty);
            set => SetValue(OwnerProperty, value);
        }

        public static readonly DependencyProperty WindowTypeProperty =
            DependencyProperty.Register("WindowType", typeof(Type), typeof(ChildWindowBehavior), new PropertyMetadata(null));

        public Type WindowType
        {
            get => (Type)GetValue(WindowTypeProperty);
            set => SetValue(WindowTypeProperty, value);
        }

        public static readonly DependencyProperty ViewModelProperty =
            DependencyProperty.Register("WindowViewModel", typeof(Type), typeof(ChildWindowBehavior), new PropertyMetadata(null));

        public Type ViewModel
        {
            get => (Type)GetValue(ViewModelProperty);
            set => SetValue(ViewModelProperty, value);
        }

        private static void IsOnScreenChanged(DependencyObject d, DependencyPropertyChangedEventArgs dpe)
        {
            var self = d as ChildWindowBehavior;

            if ((bool)dpe.NewValue)
            {
                object instance = Activator.CreateInstance(self.WindowType);

                if (instance is Window)
                {
                    var window = instance as Window;
                    window.Owner = self.Owner;
                    window.DataContext = Activator.CreateInstance(self.ViewModel, new object[] { (WordProcessor)self.Owner.DataContext });
                    self.windowInstance = window;

                    window.Closing += (s, e) =>
                    {
                        if (self.IsOnScreen)
                        {
                            self.windowInstance = null;
                            self.IsOnScreen = false;
                        }
                    };
                    if (self.IsModal)
                    {
                        window.ShowDialog();
                    }
                    else
                    {
                        window.Show();
                    }
                }
            }
            else
            {
                if (self.windowInstance != null)
                {
                    self.windowInstance.Close();
                }
            }
        }
    }
}
