using EzWriterSpellCheckingEngine.Core;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Linq;

namespace EzWriterTests.UnitTests
{
    [TestClass]
    public class SpellCheckerTest
    {
        [TestMethod]
        public void CheckTest()
        {
            using (var spellChecker = new SpellChecker())
            {
                var text = "Hola me yamo Max. Estudio en la univercidad Continental.";

                var results = spellChecker.Check(text).ToList();

                Assert.AreEqual(2, results.Count);

                var firstError = results[0];

                Assert.AreEqual(8, firstError.StartIndex);
                Assert.AreEqual(4, firstError.Length);
                Assert.AreEqual(CorrectiveAction.GetSuggestions, firstError.CorrectiveAction);
                Assert.AreEqual(string.Empty, firstError.Replacement);
            }
        }

        [TestMethod]
        public void GetSuggestionsTest()
        {
            using (var spellChecker = new SpellChecker())
            {
                var suggestions = spellChecker.GetSuggestions("construccion de software");

                Assert.IsTrue(suggestions.Any());
            }
        }

        [TestMethod]
        public void SupportedLanguagesTest() => Assert.IsTrue(SpellChecker.SupportedLanguages.Any());

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void UnsupportedLanguageTest()
        {
            using (var spellChecker = new SpellChecker("zz-zz")) { }
        }
    }
}
