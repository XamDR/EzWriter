namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the vertical position of a character relative to a bounding rectangle.
    /// </summary>
    public enum VerticalCharacterAlignment
    {
        /// <summary>
        /// The character is positioned at the text baseline.
        /// </summary>
        Baseline = 24,

        /// <summary>
        /// The character is positioned at the bottom edge of the bounding rectangle.
        /// </summary>
        Bottom = 8,

        /// <summary>
        /// The character is positioned at the top edge of the bounding rectangle.
        /// </summary>
        Top = 0,
    }
}
