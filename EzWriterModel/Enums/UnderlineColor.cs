namespace EzWriterModel.Enums
{
    /// <summary>
    /// Specifies the color for the character underlining.
    /// </summary>
    public enum UnderlineColor
    {
        /// <summary>
        /// Color matches the character foreground color.
        /// </summary>
        Auto = 0x00,

        /// <summary>
        /// RGB(0, 0, 0)
        /// </summary>
        Black = 0x01,

        /// <summary>
        /// RGB(0, 0, 255)
        /// </summary>
        Blue = 0x02,

        /// <summary>
        /// RGB(0, 255, 255)
        /// </summary>
        Cyan = 0x03,

        /// <summary>
        /// RGB(0, 255, 0)
        /// </summary>
        Green = 0x04,

        /// <summary>
        /// RGB(255, 0, 255)
        /// </summary>
        Fuchsia = 0x05,

        /// <summary>
        /// RGB(255, 0, 0)
        /// </summary>
        Red = 0x06,

        /// <summary>
        /// RGB(255, 255, 0)
        /// </summary>
        Yellow = 0x07,

        /// <summary>
        /// RGB(255, 255, 255)
        /// </summary>
        White = 0x08,

        /// <summary>
        /// RGB(0, 0, 128)
        /// </summary>
        DarkBlue = 0x09,

        /// <summary>
        /// RGB(0, 128, 128)
        /// </summary>
        Teal = 0x0A,

        /// <summary>
        /// RGB(0, 128, 0)
        /// </summary>
        Lime = 0x0B,

        /// <summary>
        /// RGB(128, 0, 128)
        /// </summary>
        Purple = 0x0C,

        /// <summary>
        /// RGB(128, 0, 0)
        /// </summary>
        Brown = 0x0D,

        /// <summary>
        /// RGB(128, 128, 0)
        /// </summary>
        Olive = 0x0E,

        /// <summary>
        /// RGB(128, 128, 128)
        /// </summary>
        Gray = 0x0F
    }
}