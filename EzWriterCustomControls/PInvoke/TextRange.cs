using System;
using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// A range of text from a rich edit control. This structure is filled in by the <see cref="RichEditMessages.EM_GETTEXTRANGE"/> message. 
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    struct TextRange
    {
        /// <summary>
        /// The range of characters to retrieve.
        /// </summary>
        public CharRange chrg;

        /// <summary>
        /// The text of the rich edit control.
        /// </summary>
        public IntPtr lpstrText;
    }
}
