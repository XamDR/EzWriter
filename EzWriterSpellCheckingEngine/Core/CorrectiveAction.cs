namespace EzWriterSpellCheckingEngine.Core
{
    /// <summary>
    /// Identifies the type of corrective action to be taken for a spelling error.
    /// </summary>
    public enum CorrectiveAction
    {
        /// <summary>
        /// There are no errors.
        /// </summary>
        None,

        /// <summary>
        /// The user should be prompted with a list of suggestions 
        /// as returned by the method GetSuggestions of the class SpellChecker.
        /// </summary>
        GetSuggestions,

        /// <summary>
        /// Replace the indicated erroneous text with the text provided in the suggestion. 
        /// The user does not need to be prompted.
        /// </summary>
        Replace,

        /// <summary>
        /// The user should be prompted to delete the indicated erroneous text.
        /// </summary>
        Delete
    }
}
