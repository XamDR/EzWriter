using System;
using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Mutually exclusive options for opening/saving a document in the Text Object Model.
    /// </summary>
    [Flags]    
    public enum TextOpenSaveOptions
    {
        /// <summary>
        /// Create a new file. Fail if the file already exists.
        /// </summary>
        CreateNew = tomConstants.tomCreateNew,

        /// <summary>
        /// Create a new file. Destroy the existing file if it exists.
        /// </summary>
        CreateAlways = tomConstants.tomCreateAlways,

        /// <summary>
        /// Gives read/write access and read/write sharing, open always, and 
        /// automatic recognition of the file format (unrecognized file formats 
        /// are treated as text).
        /// </summary>
        Default = 0,

        /// <summary>
        /// Open as HTML.
        /// </summary>
        HTML = tomConstants.tomHTML,

        /// <summary>
        /// Open an existing file. Fail if the file does not exist.
        /// </summary>
        OpenExisting = tomConstants.tomOpenExisting,

        /// <summary>
        /// Open an existing file. Create a new file if the file does not exist.
        /// </summary>
        OpenAlways = tomConstants.tomOpenAlways,

        /// <summary>
        /// Open as text ANSI or Unicode.
        /// </summary>
        PlainText = tomConstants.tomText,

        /// <summary>
        /// Open as RTF.
        /// </summary>
        RTF = tomConstants.tomRTF,

        /// <summary>
        /// Open as Word document.
        /// </summary>
        WordDocument = tomConstants.tomWordDocument,
    }
}
