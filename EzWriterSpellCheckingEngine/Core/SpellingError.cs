namespace EzWriterSpellCheckingEngine.Core
{
    /// <summary>
    /// Provides information about a spelling error.
    /// </summary>
    public class SpellingError
    {
        /// <summary>
        /// Indicates which corrective action should be taken for the spelling error.
        /// </summary>
        public CorrectiveAction CorrectiveAction { get; internal set; }

        /// <summary>
        /// Gets the length of the erroneous text.
        /// </summary>
        public int Length { get; internal set; }

        /// <summary>
        /// Gets the text to use as replacement text when the corrective action is replace.
        /// </summary>
        public string Replacement { get; internal set; }

        /// <summary>
        /// Gets the position in the checked text where the error begins.
        /// </summary>
        public int StartIndex { get; internal set; }
    }
}
