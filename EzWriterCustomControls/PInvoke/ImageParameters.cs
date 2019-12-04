using System.Runtime.InteropServices;
using TextObjectModel.Interop;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Defines the attributes of an image to be inserted by the <see cref="RichEditMessages.EM_INSERTIMAGE"/> message.
    /// </summary>
    [StructLayout(LayoutKind.Sequential)]
    struct ImageParameters
    {
        /// <summary>
        /// The width, in HIMETRIC units (0.01 mm), of the image.
        /// </summary>
        public int xWidth;

        /// <summary>
        /// The height, in HIMETRIC units (0.01 mm), of the image.
        /// </summary>
        public int yHeight;

        /// <summary>
        /// If <see cref="type"/> is <see cref="EzWriterModel.Enums.VerticalCharacterAlignment.Baseline"/>, this parameter is the distance, 
        /// in HIMETRIC units, that the top of the image extends above the text baseline. 
        /// If <see cref="type"/> is <see cref="EzWriterModel.Enums.VerticalCharacterAlignment.Baseline"/> and ascent is zero, 
        /// the bottom of the image is placed at the text baseline.
        /// </summary>
        public int ascent;

        /// <summary>
        /// The vertical alignment of the image. 
        /// See <see cref="EzWriterModel.Enums.VerticalCharacterAlignment"/> for more information about the possible values.
        /// </summary>
        public int type;

        /// <summary>
        /// The alternate text for the image.
        /// </summary>
        [MarshalAs(UnmanagedType.LPWStr)]
        public string pwszAlternateText;

        /// <summary>
        /// The stream that contains the image data. See also <see cref="System.Runtime.InteropServices.ComTypes.IStream"/>.
        /// </summary>
        public IStream pIStream;
    }
}
