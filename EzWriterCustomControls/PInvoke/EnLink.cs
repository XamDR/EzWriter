using System;
using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Contains information about an <see cref="RichEditMessages.EN_LINK"/> notification code from a rich edit control.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    class EnLink
    {
        /// <summary>
        /// The code member of this structure identifies the notification code being sent.
        /// </summary>
        public Nmhdr nmhdr;

        /// <summary>
        /// Identifier of the message that caused the rich edit control to send the <see cref="RichEditMessages.EN_LINK"/> notification code.
        /// </summary>
        public int msg = 0;

        /// <summary>
        /// The wParam parameter of the message received by the rich edit control.
        /// </summary>
        public IntPtr wParam = IntPtr.Zero;

        /// <summary>
        /// The lParam parameter of the message received by the rich edit control.
        /// </summary>
        public IntPtr lParam = IntPtr.Zero;

        /// <summary>
        /// The range of consecutive characters in the rich edit control that have the CFE_LINK (hyperlink) effect.
        /// </summary>
        public CharRange charrange;
    }

    /// <summary>
    /// Contains information about an <see cref="RichEditMessages.EN_LINK"/> notification code from a rich edit control in 64-bit mode.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    public class EnLink64
    {
        /// <summary>
        /// Contents of the <see cref="EnLink64"/> class.
        /// </summary>
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 56)]
        public byte[] contents = new byte[56];
    }
}
