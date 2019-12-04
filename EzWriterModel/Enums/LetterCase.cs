using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Represents the character case formatting.
    /// </summary>
    public enum LetterCase
    {
        /// <summary>
        /// Sets all text to lowercase.
        /// </summary>
        Lower = tomConstants.tomLowerCase,

        /// <summary>
        /// Capitalizes the first letter of each sentence.
        /// </summary>
        Sentence = tomConstants.tomSentenceCase,

        /// <summary>
        /// Capitalizes the first letter of each word.
        /// </summary>
        Title = tomConstants.tomTitleCase,

        /// <summary>
        /// Toggles the case of each letter.
        /// </summary>
        Toggle = tomConstants.tomToggleCase,

        /// <summary>
        /// Sets all text to uppercase.
        /// </summary>
        Upper = tomConstants.tomUpperCase,
    }
}