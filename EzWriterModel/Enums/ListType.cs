using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the kind of characters used to mark the item paragraphs in a list.
    /// </summary>
    public enum ListType
    {
        /// <summary>
        /// The list is numbered with Arabic numerals (0, 1, 2, ...).
        /// </summary>
        Arabic = tomConstants.tomListNumberAsArabic,

        /// <summary>
        /// The list uses bullets (character code 0x2022).
        /// </summary>
        Bullet = tomConstants.tomListBullet,

        /// <summary>
        /// The list is ordered with lowercase letters (a, b, c, ...).
        /// </summary>
        LowercaseLetter = tomConstants.tomListNumberAsLCLetter,

        /// <summary>
        /// The list is ordered with lowercase Roman letters (i, ii, iii, ...).
        /// </summary>
        LowercaseRoman = tomConstants.tomListNumberAsLCRoman,

        /// <summary>
        /// The list is ordered with uppercase letters (A, B, C, ...).
        /// </summary>
        UppercaseLetter = tomConstants.tomListNumberAsUCLetter,

        /// <summary>
        /// The list is ordered with uppercase Roman letters (I, II, III, ...).
        /// </summary>
        UppercaseRoman = tomConstants.tomListNumberAsUCRoman,        
    }
}
