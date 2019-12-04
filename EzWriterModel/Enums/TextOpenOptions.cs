using System;
using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Additional options for opening a document in the Text Object Model.
    /// </summary>
    [Flags]
    public enum TextOpenOptions
    {
        /// <summary>
        /// No additional options.
        /// </summary>
        None = 0,

        /// <summary>
        /// Opens a file in read-only mode.
        /// </summary>
        ReadOnly = tomConstants.tomReadOnly,

        /// <summary>
        /// Other programs cannot read to the file.
        /// </summary>
        ShareDenyRead = tomConstants.tomShareDenyRead,

        /// <summary>
        /// Other programs cannot write to the file.
        /// </summary>
        ShareDenyWrite = tomConstants.tomShareDenyWrite,

        /// <summary>
        /// Replaces the selection with a file.
        /// </summary>
        PasteFile = tomConstants.tomPasteFile,
    }
}
