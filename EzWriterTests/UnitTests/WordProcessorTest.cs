using EzWriterCustomControls.UIElement;
using EzWriterViewModel.Core;
using EzWriterModel.Enums;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EzWriterTests.UnitTests
{
    [TestClass]
    public class WordProcessorTest
    {
        [TestMethod]
        public void TitleTest()
        {
            //Arrange
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor() { RichEdit = richEdit };

            //Act            
            var title = wordProcessor.MainWindow.Title;

            //Assert
            Assert.AreEqual(richEdit.Document.Name, title);
        }

        [TestMethod]
        public void AddTabTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.AddTabCommand.Execute(null);

            Assert.AreEqual("\t", richEdit.Text);
        }
        

        [TestMethod]
        public void AlignParagraphTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.AlignParagraphCommand.Execute(ParagraphAlignment.Justify);

            var alignment = wordProcessor.RichEdit.Document.Selection.Paragraph.Alignment;

            Assert.AreEqual(ParagraphAlignment.Justify, alignment);
        }

        [TestMethod]
        public void ToggleBoldTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleBoldCommand.Execute(null);

            var bold = wordProcessor.RichEdit.Document.Selection.Font.Bold;

            Assert.AreEqual(FormatEffect.Off, bold);
        }

        [TestMethod]
        public void ToggleItalicTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleItalicCommand.Execute(null);

            var italic = wordProcessor.RichEdit.Document.Selection.Font.Italic;

            Assert.AreEqual(FormatEffect.Off, italic);
        }

        [TestMethod]
        public void ToggleShadowTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleShadowCommand.Execute(null);

            var shadow = wordProcessor.RichEdit.Document.Selection.Font.Shadow;

            Assert.AreEqual(FormatEffect.Off, shadow);
        }

        [TestMethod]
        public void ToggleSmallCapsTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleSmallCapsCommand.Execute(null);

            var smallCaps = wordProcessor.RichEdit.Document.Selection.Font.SmallCaps;

            Assert.AreEqual(FormatEffect.Off, smallCaps);
        }

        [TestMethod]
        public void ToggleStrikethroughTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleStrikethroughCommand.Execute(null);

            var strikethrough = wordProcessor.RichEdit.Document.Selection.Font.Strikethrough;

            Assert.AreEqual(FormatEffect.Off, strikethrough);
        }        

        [TestMethod]
        public void ToggleSubscriptTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleSubscriptCommand.Execute(null);

            var subscript = wordProcessor.RichEdit.Document.Selection.Font.Subscript;

            Assert.AreEqual(FormatEffect.Off, subscript);
        }

        [TestMethod]
        public void ToggleSuperscriptTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleSuperscriptCommand.Execute(null);

            var superscript = wordProcessor.RichEdit.Document.Selection.Font.Superscript;

            Assert.AreEqual(FormatEffect.Off, superscript);
        }

        [TestMethod]
        public void ToggleUnderlineTest()
        {
            var richEdit = new RichEditBox();
            var wordProcessor = new WordProcessor { RichEdit = richEdit };

            wordProcessor.ToggleUnderlineCommand.Execute(null);

            var underline = wordProcessor.RichEdit.Document.Selection.Font.Underline;

            Assert.AreEqual(0, underline);
        }
    }
}
