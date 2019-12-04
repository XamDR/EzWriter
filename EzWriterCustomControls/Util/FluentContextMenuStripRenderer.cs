using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace EzWriterCustomControls.Util
{
    /// <summary>
    /// Custom renderer for a <see cref="ContextMenuStrip"/>.
    /// </summary>
    class FluentContextMenuStripRenderer : ToolStripProfessionalRenderer
    {
        /// <summary>
        /// This constructor calls its base class' constructor.
        /// </summary>
        public FluentContextMenuStripRenderer() : base(new FluentContextMenuStripColorTable()) { }

        /// <summary>
        /// Raises the RenderArrow event.
        /// </summary>
        /// <param name="e">A <see cref="ToolStripArrowRenderEventArgs"/> that contains the event data.</param>
        protected override void OnRenderArrow(ToolStripArrowRenderEventArgs e)
        {
            var g = e.Graphics;
            var oldMode = g.Save();
            g.SmoothingMode = SmoothingMode.AntiAlias;

            var rect = new Rectangle(e.ArrowRectangle.Location, e.ArrowRectangle.Size);
            rect.Inflate(-2, -6);
            using (var pen = new Pen(Color.Black))
            {
                g.DrawLines(pen, new Point[]
                {
                    new Point(rect.Left, rect.Top), //top point
                    new Point(rect.Right, rect.Top + rect.Height / 2), //middle point
                    new Point(rect.Left, rect.Top + rect.Height) //bottom point
                });
            }
            g.Restore(oldMode);
        }

        /// <summary>
        /// A custom <see cref="ProfessionalColorTable"/> class to use with a <see cref="FluentContextMenuStripRenderer"/>.
        /// </summary>
        private class FluentContextMenuStripColorTable : ProfessionalColorTable
        {
            public override Color MenuItemBorder => SystemColors.GradientActiveCaption;

            public override Color MenuItemSelected => SystemColors.GradientActiveCaption;

            public override Color ToolStripDropDownBackground => Color.White;

            public override Color ImageMarginGradientBegin => Color.White;

            public override Color ImageMarginGradientMiddle => Color.White;

            public override Color ImageMarginGradientEnd => Color.White;
        }
    }
}
