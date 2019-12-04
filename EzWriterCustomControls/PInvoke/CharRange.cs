using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Specifies a range of characters in a rich edit control.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    struct CharRange
    {
        /// <summary>
        /// Character position index immediately preceding the first character in the range.
        /// </summary>
        public int cpMin;

        /// <summary>
        /// Character position immediately following the last character in the range.
        /// </summary>
        public int cpMax;
    }
}
