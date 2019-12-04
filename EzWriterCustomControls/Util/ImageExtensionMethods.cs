using System;
using System.Drawing;
using Microsoft.Win32;

namespace EzWriterCustomControls.Util
{
    /// <summary>
    /// Extension methods for the <see cref="Image"/> class.
    /// </summary>
    static class ImageExtensionMethods
    {
        //www.vbforums.com/showthread.php?797607-In-case-you-need-to-convert-between-pixels-and-himetrics 
        //const double himPerPixel = 26.45833;

        /// <summary>
        /// Gets the HIMETRIC width of this image.
        /// See <see cref="PInvoke.ImageParameters.xWidth"/> for more information.
        /// </summary>
        /// <param name="image">The image to measure.</param>
        /// <returns></returns>
        public static int HiMetricWidth(this Image image)
        {
            int dpi = default;
            var name = @"Control Panel\Desktop\WindowMetrics"; //we need to get the DPI settings of the client machine.

            using (var key = Registry.CurrentUser.OpenSubKey(name))
            {
                if (key != null)
                {
                    object o = key.GetValue("AppliedDPI");
                    dpi = Convert.ToInt32(o);
                }
            }
            return image.Width * (2540 / dpi);
        }

        /// <summary>
        /// Gets the HIMETRIC height of this image. 
        /// See <see cref="PInvoke.ImageParameters.yHeight"/> for more information.
        /// </summary>
        /// <param name="image">The image to measure.</param>
        /// <returns></returns>
        public static int HiMetricHeight(this Image image)
        {
            int dpi = default;
            var name = @"Control Panel\Desktop\WindowMetrics"; //we need to get the DPI settings of the client machine.

            using (var key = Registry.CurrentUser.OpenSubKey(name))
            {
                if (key != null)
                {
                    object o = key.GetValue("AppliedDPI");
                    dpi = Convert.ToInt32(o);
                }
            }
            return image.Height * (2540 / dpi);
        }
    }
}
