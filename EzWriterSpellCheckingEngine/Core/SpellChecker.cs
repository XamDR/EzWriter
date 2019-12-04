using MsSpellCheckLib;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Runtime.InteropServices;

namespace EzWriterSpellCheckingEngine.Core
{
    /// <summary>
    /// Represents a spell checker for a particular language and permits to check text, get suggestions,
    /// and maintain settings and user dictionaries.
    /// </summary>
    public class SpellChecker : IDisposable
    {
        private ISpellChecker spellChecker;

        /// <summary>
        /// Creates a spell checker that supports the current UI language.
        /// </summary>
        public SpellChecker()
        {
            var factory = new SpellCheckerFactory();

            try
            {
                spellChecker = factory.CreateSpellChecker(CultureInfo.CurrentCulture.Name);
            }
            finally
            {
                Marshal.ReleaseComObject(factory);
            }
        }

        /// <summary>
        /// Creates a spell checker that supports the specified language.
        /// </summary>
        /// <exception cref="ArgumentException">languageTag is an empty string, or there is no spell checker available for languageTag.</exception>
        /// <param name="languageTag">A BCP47 language tag that identifies the language for the requested spell checker.</param>
        public SpellChecker(string languageTag)
        {
            var factory = new SpellCheckerFactory();

            try
            {
                spellChecker = factory.CreateSpellChecker(languageTag);

            }
            finally
            {
                Marshal.ReleaseComObject(factory);
            }
        }

        /// <summary>
        /// Determines if the current operating system supports the Windows Spell Checking API.
        /// </summary>
        /// <returns>True if the OS is supported; false otherwise.</returns>
        public static bool IsPlatformSupported()
            => Environment.OSVersion.Version.Major > 6 || (Environment.OSVersion.Version.Major == 6 && Environment.OSVersion.Version.Minor >= 2);

        /// <summary>
        /// Determines if the specified language is supported by a registered spell checker.
        /// </summary>
        /// <param name="languageTag">A BCP47 language tag that identifies the language for the requested spell checker.</param>
        /// <returns>True if supported; false otherwise.</returns>
        public static bool IsLanguageSupported(string languageTag)
        {
            var factory = new SpellCheckerFactory();

            try
            {
                return factory.IsSupported(languageTag) != 0;
            }
            finally
            {
                Marshal.ReleaseComObject(factory);
            }
        }

        /// <summary>
        /// Gets the set of BCP47 language tags supported by the spell checker.
        /// </summary>
        public static IEnumerable<string> SupportedLanguages
        {
            get
            {
                var factory = new SpellCheckerFactory();
                IEnumString languages = null;

                try
                {
                    languages = factory.SupportedLanguages;
                    languages.RemoteNext(1, out string currentLanguage, out uint fetched);

                    while (currentLanguage != null)
                    {
                        yield return currentLanguage;
                        languages.RemoteNext(1, out currentLanguage, out fetched);
                    }
                }
                finally
                {
                    if (languages != null)
                    {
                        Marshal.ReleaseComObject(languages);
                    }
                    Marshal.ReleaseComObject(factory);
                }
            }
        }

        /// <summary>
        /// Gets the BCP47 language tag this instance of the spell checker supports.
        /// </summary>
        public string LanguageTag => spellChecker.languageTag;

        /// <summary>
        /// Treats the provided word as though it were part of the original dictionary.
        /// The word will no longer be considered misspelled, and will also be considered as a candidate for suggestions.
        /// </summary>
        /// <param name="word">The word to be added to the list of added words.</param>
        public void Add(string word) => spellChecker.Add(word);

        /// <summary>
        /// Causes occurrences of one word to be replaced by another.
        /// </summary>
        /// <param name="from">The incorrectly spelled word to be autocorrected.</param>
        /// <param name="to">The correctly spelled word that should replace from.</param>
        public void AutoCorrect(string from, string to) => spellChecker.AutoCorrect(from, to);

        /// <summary>
        /// Checks the spelling of the supplied text and returns a collection of spelling errors.
        /// </summary>
        /// <param name="text">The text to check.</param>
        /// <returns>The result of checking this text, returned as an IEnumerable&lt;SpellingError&gt;.</returns>
        public IEnumerable<SpellingError> Check(string text)
        {
            var errors = spellChecker.Check(text);
            ISpellingError currentError = null;

            try
            {
                while ((currentError = errors.Next()) != null)
                {
                    var action = CorrectiveAction.None;

                    switch (currentError.CorrectiveAction)
                    {
                        case CORRECTIVE_ACTION.CORRECTIVE_ACTION_GET_SUGGESTIONS: action = CorrectiveAction.GetSuggestions; break;

                        case CORRECTIVE_ACTION.CORRECTIVE_ACTION_REPLACE: action = CorrectiveAction.Replace; break;

                        case CORRECTIVE_ACTION.CORRECTIVE_ACTION_DELETE: action = CorrectiveAction.Delete; break;
                    }
                    yield return new SpellingError
                    {
                        StartIndex = (int)currentError.StartIndex,
                        Length = (int)currentError.Length,
                        CorrectiveAction = action,
                        Replacement = currentError.Replacement
                    };
                    Marshal.ReleaseComObject(currentError);
                }
            }
            finally
            {
                if (currentError != null)
                {
                    Marshal.ReleaseComObject(currentError);
                }
                Marshal.ReleaseComObject(errors);
            }
        }

        /// <summary>
        /// Retrieves spelling suggestions for the supplied word.
        /// </summary>
        /// <param name="word">The word or phrase to get suggestions for.</param>
        /// <returns>The list of suggestions.</returns>
        public IEnumerable<string> GetSuggestions(string word)
        {
            var suggestions = spellChecker.Suggest(word);

            try
            {
                suggestions.RemoteNext(1, out string currentSuggestion, out uint fetched);

                while (currentSuggestion != null)
                {
                    yield return currentSuggestion;
                    suggestions.RemoteNext(1, out currentSuggestion, out fetched);
                }
            }
            finally
            {
                Marshal.ReleaseComObject(suggestions);
            }
        }

        /// <summary>
        /// Ignores the provided word for the rest of this session.
        /// </summary>
        /// <param name="word">The word to ignore.</param>
        public void Ignore(string word) => spellChecker.Ignore(word);

        /// <summary>
        /// Disposes resources used by the SpellChecker class.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Clean the resources being currently in use.
        /// </summary>
        /// <param name="disposing">True if managed resources should be discarded; false otherwise.</param>
        private void Dispose(bool disposing)
        {
            if (spellChecker != null)
            {
                Marshal.ReleaseComObject(spellChecker);
                spellChecker = null;
            }
        }

        /// <summary>
        /// Disposes resources used by the SpellChecker.
        /// </summary>
        ~SpellChecker() => Dispose(false);
    }
}
