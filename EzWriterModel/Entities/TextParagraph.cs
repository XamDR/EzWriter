using EzWriterModel.Enums;
using TextObjectModel.Interop;

namespace EzWriterModel.Entities
{
    /// <summary>
    /// The TextParagraph class defines the default paragraph formatting attributes of a document, 
    /// or the current paragraph formatting attributes of a text range.
    /// </summary>
    public class TextParagraph
    {
        private readonly ITextPara2 paragraph;

        /// <summary>
        /// Constructor that utilizes dependency injection.
        /// </summary>
        /// <param name="paragraph">An instance of the ITextPara2 COM interface.</param>
        internal TextParagraph(ITextPara2 paragraph) => this.paragraph = paragraph;

        /// <summary>
        /// Gets or sets the paragraph alignment.
        /// </summary>
        public ParagraphAlignment Alignment
        {
            get => (ParagraphAlignment)paragraph.Alignment;
            set => paragraph.Alignment = (int)value;
        }

        /// <summary>
        /// Gets the paragraph line-spacing value.
        /// </summary>
        public float LineSpacing => paragraph.LineSpacing;

        /// <summary>
        /// Gets the paragraph line-spacing rule.
        /// </summary>
        public LineSpacingRule LineSpacingRule => (LineSpacingRule)paragraph.LineSpacingRule;

        /// <summary>
        /// Gets or sets the list level index used with paragraphs.
        /// </summary>
        public int ListLevelIndex
        {
            get => paragraph.ListLevelIndex;
            set => paragraph.ListLevelIndex = value;
        }

        /// <summary>
        /// Gets or sets the style used to mark the item paragraphs in a list.
        /// </summary>
        public ListStyle ListStyle { get; set; }

        /// <summary>
        /// Gets or sets the kind of characters used to mark the item paragraphs in a list.
        /// </summary>
        public ListType ListType
        {
            get => (ListType)paragraph.ListType;
            set => paragraph.ListType = (int)value;
        }

        /// <summary>
        /// Gets or sets the amount of vertical space that follows a paragraph.
        /// </summary>
        public float SpaceAfter
        {
            get => paragraph.SpaceAfter;
            set => paragraph.SpaceAfter = value;
        }

        /// <summary>
        /// Gets or sets the amount of vertical space above a paragraph.
        /// </summary>
        public float SpaceBefore
        {
            get => paragraph.SpaceBefore;
            set => paragraph.SpaceBefore = value;
        }

        /// <summary>
        /// Sets the paragraph line-spacing rule and the amount of line spacing for a paragraph.
        /// Because the line-spacing rule and line spacing work together, they must be set together.
        /// </summary>
        /// <param name="spacing">The new line spacing amount.</param>
        /// <param name="rule">The new line-spacing rule.
        /// The default value is <see cref="Enums.LineSpacingRule.Multiple"/></param>
        public void SetLineSpacing(float spacing, LineSpacingRule rule = LineSpacingRule.Multiple)
            => paragraph.SetLineSpacing((int)rule, spacing);
    }
}
