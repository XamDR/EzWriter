using System;
using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Information that a rich edit control uses to format its output for a particular device. 
    /// This structure is used with the <see cref="RichEditMessages.EM_FORMATRANGE"/> message.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    struct FormatRange
    {
        /// <summary>
        /// An HDC for the target device to format for.
        /// </summary>
        public IntPtr hdc;

        /// <summary>
        /// A HDC for the device to render to, if <see cref="RichEditMessages.EM_FORMATRANGE"/> is being used to send the output to a device.
        /// </summary>
        public IntPtr hdcTarget;

        /// <summary>
        /// The area within the <see cref="rcPage"/> rectangle to render to. Units are measured in twips.
        /// </summary>
        public Rect rc;

        /// <summary>
        /// The entire area of a page on the rendering device. Units are measured in twips.
        /// </summary>
        public Rect rcPage;

        /// <summary>
        /// The range of characters to format.
        /// </summary>
        public CharRange chrg;
    }
}
