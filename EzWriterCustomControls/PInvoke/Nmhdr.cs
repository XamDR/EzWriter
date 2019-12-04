using System;
using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Contains information about a notification message.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    struct Nmhdr
    {
        /// <summary>
        /// A window handle to the control sending the message.
        /// </summary>
        public IntPtr hwndFrom;

        /// <summary>
        /// An identifier of the control sending the message.
        /// </summary>
        public IntPtr idFrom;

        /// <summary>
        /// A notification code.
        /// </summary>
        public int code;
    }
}
