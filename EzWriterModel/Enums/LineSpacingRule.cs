using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies options for line-spacing rules.
    /// </summary>
    public enum LineSpacingRule
    {
        /// <summary>
        /// The line-spacing value specifies the spacing from one line to the next. 
        /// However, if the value is less than single spacing, text is single spaced.
        /// </summary>
        AtLeast = tomConstants.tomLineSpaceAtLeast,

        /// <summary>
        /// Double line spacing. The line-spacing value is ignored.
        /// </summary>
        Double = tomConstants.tomLineSpaceDouble,

        /// <summary>
        /// The line-spacing value specifies the exact spacing from one line to the next, 
        /// even if the value is less than single spacing.
        /// </summary>
        Exactly = tomConstants.tomLineSpaceExactly,

        /// <summary>
        /// The line-spacing value specifies the line spacing, in lines.
        /// </summary>
        Multiple = tomConstants.tomLineSpaceMultiple,

        /// <summary>
        /// One-and-a-half line spacing. The line-spacing value is ignored.
        /// </summary>
        OneAndHalf = tomConstants.tomLineSpace1pt5,

        /// <summary>
        /// Single space. The line-spacing value is ignored.
        /// </summary>
        Single = tomConstants.tomLineSpaceSingle
    }
}