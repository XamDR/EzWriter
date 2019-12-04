using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the options to use when doing a text search.
    /// </summary>
    public enum FindOptions
    {
        /// <summary>
        /// Match case; that is, a case-sensitive search. 
        /// </summary>
        Case = tomConstants.tomMatchCase,

        /// <summary>
        /// Use the default text search options; namely, use case- independent, arbitrary character boundaries.
        /// </summary>
        None = tomConstants.tomNone,

        /// <summary>
        /// Match regular expressions.
        /// </summary>
        Pattern = tomConstants.tomMatchPattern,

        /// <summary>
        /// Matches whole words.
        /// </summary>
        Word = tomConstants.tomMatchWord,
    }
}
