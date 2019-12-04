namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// This class is used as a container for different window messages defined in the Windows API.
    /// </summary>
    class WindowsMessages
    {
        /// <summary>
        /// Sent to a window immediately before it loses the keyboard focus.
        /// </summary>
        public const int WM_KILLFOCUS = 0x0008;

        /// <summary>
        /// Posted when the user presses the left mouse button while the cursor is in the client area of a window.
        /// </summary>
        public const int WM_LBUTTONDOWN = 0x0201;

        /// <summary>
        /// Sent to the active window when the mouse's horizontal scroll wheel is tilted or rotated.
        /// </summary>
        public const int WM_MOUSEWHEEL = 0x020A;

        /// <summary>
        /// Sent by a common control to its parent window when an event has occurred or the control requires some information.
        /// </summary>
        public const int WM_NOTIFY = 0x004E;

        /// <summary>
        /// Sent when the system or another application makes a request to paint a portion of an application's window. 
        /// </summary>
        public const int WM_PAINT = 0x000F;

        /// <summary>
        /// Sent to a window if the mouse causes the cursor to move within a window and mouse input is not captured.
        /// </summary>
        public const int WM_SETCURSOR = 0x0020;

        /// <summary>
        /// Used to define private messages for use by private window classes.
        /// </summary>
        public const int WM_USER = 0x0400;

        /// <summary>
        /// Reflects messages from a parent window to an specified child when an event has occurred or the child requires some information.
        /// </summary>
        public const int WM_REFLECT = WM_USER + 0x1C00;
    }
}
