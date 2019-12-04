using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the style used to mark the item paragraphs in a list.
    /// </summary>
    public enum ListStyle
    {
        /// <summary>
        /// The item marker is followed by a hyphen (-).
        /// </summary>
        Minus = tomConstants.tomListMinus,

        /// <summary>
        /// The items have no markers.
        /// </summary>
        NoNumber = tomConstants.tomListNoNumber,

        /// <summary>
        /// The item marker is enclosed in parentheses, as in (1).
        /// </summary>
        Parentheses = tomConstants.tomListParentheses,

        /// <summary>
        /// The item marker is followed by a parenthesis, as in 1).
        /// </summary>
        Parenthesis = 0,

        /// <summary>
        /// The item marker is followed by a period.
        /// </summary>
        Period = tomConstants.tomListPeriod,

        /// <summary>
        /// The item marker appears by itself.
        /// </summary>
        Plain = tomConstants.tomListPlain,
    }
}
