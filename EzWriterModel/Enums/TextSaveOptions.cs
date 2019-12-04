using System;
using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Additional options for saving a document in the Text Object Model.
    /// </summary>
    [Flags]
    public enum TextSaveOptions
    {
        /// <summary>
        /// >No additional options.
        /// </summary>
        None = 0,

        /// <summary>
        /// Other programs cannot read to the file.
        /// </summary>
        ShareDenyRead = tomConstants.tomShareDenyRead,

        /// <summary>
        /// Other programs cannot write to the file.
        /// </summary>
        ShareDenyWrite = tomConstants.tomShareDenyWrite,
    }
}
