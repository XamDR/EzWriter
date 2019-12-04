using TextObjectModel.Interop;

namespace EzWriterModel.Enums
{
    /// <summary>
    /// Defines values that indicate the state of a character or paragraph formatting property.
    /// </summary>
    public enum FormatEffect
    {
        /// <summary>
        /// Turns off the property.
        /// </summary>
        Off = tomConstants.tomFalse,

        /// <summary>
        /// Turns on the property.
        /// </summary>
        On = tomConstants.tomTrue,

        /// <summary>
        /// Toggles the state of the property.
        /// </summary>
        Toggle = tomConstants.tomToggle,

        /// <summary>
        /// The state of the property is undefined.
        /// </summary>
        Undefined = tomConstants.tomUndefined
    }
}