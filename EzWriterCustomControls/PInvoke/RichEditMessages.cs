namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// This class is used as a container for different messages used by a rich edit control as defined in the Windows API.
    /// </summary>
    static class RichEditMessages
    {
        /// <summary>
        /// Formats a range of text in a rich edit control for a specific device.
        /// </summary>
        public const int EM_FORMATRANGE = WindowsMessages.WM_USER + 57;

        /// <summary>
        /// Retrieves the current edit style flags.
        /// </summary>
        public const int EM_GETEDITSTYLE = 0x04CD;

        /// <summary>
        /// Gets a rich edit control's option settings for Input Method Editor (IME) and Asian language support.
        /// </summary>
        public const int EM_GETLANGOPTIONS = 0x0479;

        /// <summary>
        /// Retrieves an IRichEditOle object that a client can use to access a rich edit control's Component Object Model (COM) functionality.
        /// </summary>
        public const int EM_GETOLEINTERFACE = 0x043C;

        /// <summary>
        /// Retrieves a specified range of characters from a rich edit control.
        /// </summary>
        public const int EM_GETTEXTRANGE = 0x044B;

        /// <summary>
        /// Inserts a blob that displays an image.
        /// </summary>
        public const int EM_INSERTIMAGE = WindowsMessages.WM_USER + 314;

        /// <summary>
        /// Inserts one or more identical table rows with empty cells.
        /// </summary>
        public const int EM_INSERTTABLE = WindowsMessages.WM_USER + 232;

        /// <summary>
        /// Sets the current edit style flags for a rich edit control.
        /// </summary>
        public const int EM_SETEDITSTYLE = 0x04CC;

        /// <summary>
        /// Sets options for Input Method Editor (IME) and Asian language support in a rich edit control.
        /// </summary>
        public const int EM_SETLANGOPTIONS = 0x0478;

        /// <summary>
        /// Sends EN_LINK notification codes by a rich edit control when it receives various messages, for example, 
        /// when the mouse pointer is over text that has the CFE_LINK (hyperlink) effect.
        /// </summary>
        public const int EN_LINK = 0x070B;
    }
}
