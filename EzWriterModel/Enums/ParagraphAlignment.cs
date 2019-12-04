using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies values for aligning paragraphs.
    /// </summary>
    public enum ParagraphAlignment
    {
        /// <summary>
        /// Text aligns with the left margin.
        /// </summary>
        Left = tomConstants.tomAlignLeft,

        /// <summary>
        /// Text is centered between the margins.
        /// </summary>
        Center = tomConstants.tomAlignCenter,

        /// <summary>
        /// Text aligns with the right margin.
        /// </summary>
        Right = tomConstants.tomAlignRight,

        /// <summary>
        /// Text is equally distributed between the margins so that each line of the paragraph, 
        /// other than the last, is identical in length.
        /// </summary>
        Justify = tomConstants.tomAlignJustify
    }
}