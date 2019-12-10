using System;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Interop;

namespace EzWriterView.Util
{
    /// <summary>
    /// Helper class that provides functionality to remove a window's icon.
    /// </summary>
    static class WindowHelper
    {
        public static readonly DependencyProperty ShowIconProperty =
            DependencyProperty.RegisterAttached("ShowIcon", typeof(bool), typeof(WindowHelper), 
                                                new FrameworkPropertyMetadata(true, OnShowIconChanged));

        public static bool GetShowIcon(DependencyObject target) => (bool)target.GetValue(ShowIconProperty);

        public static void SetShowIcon(DependencyObject target, bool value) => target.SetValue(ShowIconProperty, value);

        public static void OnShowIconChanged(DependencyObject d, DependencyPropertyChangedEventArgs dpe)
        {
            if (d is Window window)
            {
                window.SourceInitialized += delegate
                {
                    // Get this window's handle
                    IntPtr hwnd = new WindowInteropHelper(window).Handle;

                    // Change the extended window style to not show a window icon
                    int extendedStyle = GetWindowLong(hwnd, GWL_EXSTYLE);
                    SetWindowLong(hwnd, GWL_EXSTYLE, extendedStyle | WS_EX_DLGMODALFRAME);

                    // Send the message WM_SETICON to actually remove the icon on the title bar
                    SendMessage(hwnd, WM_SETICON, (IntPtr)ICON_SMALL, IntPtr.Zero);
                    SendMessage(hwnd, WM_SETICON, (IntPtr)ICON_BIG, IntPtr.Zero);

                    // Update the window's non-client area to reflect the changes
                    SetWindowPos(hwnd, IntPtr.Zero, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_FRAMECHANGED);
                };
            }
        }

        #region Native WINAPI

        private const int GWL_EXSTYLE = -20;        
        private const int SWP_NOSIZE = 0x0001;
        private const int SWP_NOMOVE = 0x0002;
        private const int SWP_NOZORDER = 0x0004;
        private const int SWP_FRAMECHANGED = 0x0020;
        private const int WS_EX_DLGMODALFRAME = 0x0001;
        private const int WM_SETICON = 0x0080;
        private const int ICON_SMALL = 0;
        private const int ICON_BIG = 1;

        [DllImport("user32.dll")]
        private static extern int GetWindowLong(IntPtr hwnd, int index);

        [DllImport("user32.dll")]
        private static extern int SetWindowLong(IntPtr hwnd, int index, int newStyle);

        [DllImport("user32.dll")]
        private static extern bool SetWindowPos(IntPtr hwnd, IntPtr hwndInsertAfter, int x, int y, int width, int height, uint flags);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        private static extern IntPtr SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

        #endregion
    }
}
