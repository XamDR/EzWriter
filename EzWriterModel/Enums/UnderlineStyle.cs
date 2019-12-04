using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the type of character underlining.
    /// </summary>
    public enum UnderlineStyle
    {
        /// <summary>
        /// No underline.
        /// </summary>
        None = tomConstants.tomNone,

        /// <summary>
        /// A dashed line.
        /// </summary>
        Dash = tomConstants.tomDash,

        /// <summary>
        /// Alternating dashes and dots.
        /// </summary>
        DashDot = tomConstants.tomDashDot,

        /// <summary>
        /// Single dashes, each followed by two dots.
        /// </summary>
        DashDotDot = tomConstants.tomDashDotDot,

        /// <summary>
        /// A dotted line.
        /// </summary>
        Dotted = tomConstants.tomDotted,

        /// <summary>
        /// Two solid double lines.
        /// </summary>
        Double = tomConstants.tomDouble,

        /// <summary>
        /// A single solid line.
        /// </summary>
        Single = tomConstants.tomSingle,

        /// <summary>
        /// A thick solid line.
        /// </summary>
        Thick = tomConstants.tomThick,

        /// <summary>
        /// No underline type is defined.
        /// </summary>
        Undefined = tomConstants.tomUndefined,

        /// <summary>
        /// A wavy line.
        /// </summary>
        Wave = tomConstants.tomWave,

        /// <summary>
        /// Underline words, but not the spaces between them.
        /// </summary>
        Words = tomConstants.tomWords,
    }
}