using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the units to use when navigating a text range.
    /// </summary>
    public enum TextRangeUnit
    {
        /// <summary>
        /// A single character.
        /// </summary>
        Character = tomConstants.tomCharacter,

        /// <summary>
        /// A text run of characters that all have identical character formatting properties.
        /// </summary>
        CharFormat = tomConstants.tomCharFormat,

        /// <summary>
        /// A single line of text on a display, provided that the display is associated with the range. 
        /// If no display is associated with a range, Line is treated as Paragraph. A selection automatically has a display.
        /// </summary>
        Line = tomConstants.tomLine,

        /// <summary>
        /// Hyperlink text.
        /// </summary>
        Link = tomConstants.tomLink,

        /// <summary>
        /// Characters in one or more contiguous, friendly-name hyperlinks. 
        /// To work with single links that might be adjacent, use the Link unit.
        /// </summary>
        LinkProtected = tomConstants.tomLinkProtected,

        /// <summary>
        /// An embedded object.
        /// </summary>
        Object = tomConstants.tomObject,

        /// <summary>
        /// A string of text terminated by an end-of-paragraph mark, such as carriage return/line feed (CR/LF), 
        /// carriage return (CR), vertical tab(VT), line feed (LF), form feed (FF), or the Unicode paragraph separator (0x2029).
        /// </summary>
        Paragraph = tomConstants.tomParagraph,

        /// <summary>
        /// A text run of characters that all have identical paragraph formatting properties.
        /// </summary>
        ParagraphFormat = tomConstants.tomParaFormat,

        /// <summary>
        /// The contents of a screen. Typically, a screen is the amount of content associated with the Page Up or Page Down key.
        /// </summary>
        Screen = tomConstants.tomScreen,

        /// <summary>
        /// A section.
        /// </summary>
        Section = tomConstants.tomSection,

        /// <summary>
        /// Describes a string of text that ends with a period, question mark, or exclamation mark and is followed either
        /// by one or more ASCII white space characters (9 through 0xd and 0x20), or the Unicode paragraph separator (0x2029).
        /// </summary>
        Sentence = tomConstants.tomSentence,

        /// <summary>
        /// A story, which is a contiguous range of text in a document.
        /// </summary>
        Story = tomConstants.tomStory,
        
        /// <summary>
        /// A table.
        /// </summary>
        Table = tomConstants.tomTable,

        /// <summary>
        /// A table cell.
        /// </summary>
        TableCell = tomConstants.tomCell,

        /// <summary>
        /// A table column.
        /// </summary>
        TableColumn = tomConstants.tomTableColumn,

        /// <summary>
        /// A table row.
        /// </summary>
        TableRow = tomConstants.tomRow,

        /// <summary>
        /// The characters between the upper-left and lower-right corners of the window.
        /// </summary>
        Window = tomConstants.tomWindow,

        /// <summary>
        /// A span of alphanumeric characters, an end of paragraph, or punctuation that includes any blanks that follow.
        /// </summary>
        Word = tomConstants.tomWord,
    }
}
