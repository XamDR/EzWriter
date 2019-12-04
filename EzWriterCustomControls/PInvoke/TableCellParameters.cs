namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Defines the attributes of cells in a table row to be inserted by the <see cref="RichEditMessages.EM_INSERTTABLE"/> message.
    /// </summary>
    struct TableCellParameters
    {
        /// <summary>
        /// The width of a cell.
        /// </summary>
        public int dxWidth;

        /// <summary>
        /// nVertAlign : 2,
        /// fMergeTop : 1,
        /// fMergePrev : 1,
        /// fVertical : 1,
        /// fMergeStart : 1,
        /// fMergeCont : 1.
        /// </summary>
        private ushort cellParams;

        /// <summary>
        /// Shading in .01%. This controls the amount of pattern foreground color (<see cref="crForePat"/>) 
        /// and pattern background color (<see cref="crBackPat"/>) that is used to create the cell background color. 
        /// If wShading is 0, the cell background is <see cref="crBackPat"/>. 
        /// If it’s 10000, the cell background is <see cref="crForePat"/>. Values of wShading in between are mixtures of the two pattern colors.
        /// </summary>
        public ushort wShading;

        /// <summary>
        /// Left border width, in twips.
        /// </summary>
        public short dxBrdrLeft;

        /// <summary>
        /// Top border width, in twips.
        /// </summary>
        public short dyBrdrTop;

        /// <summary>
        /// Right border width, in twips.
        /// </summary>
        public short dxBrdrRight;

        /// <summary>
        /// Bottom border width, in twips.
        /// </summary>
        public short dyBrdrBottom;

        /// <summary>
        /// Left border color.
        /// </summary>
        public int crBrdrLeft;

        /// <summary>
        /// Top border color.
        /// </summary>
        public int crBrdrTop;

        /// <summary>
        /// Right border color.
        /// </summary>
        public int crBrdrRight;

        /// <summary>
        /// Bottom border color.
        /// </summary>
        public int crBrdrBottom;

        /// <summary>
        /// Background color.
        /// </summary>
        public int crBackPat;

        /// <summary>
        /// Foreground color.
        /// </summary>
        public int crForePat;

        /// <summary>
        /// 
        /// </summary>
        public ushort VertAlign
        {
            get => (ushort)(cellParams & 3u);
            set => cellParams = (ushort)(value | cellParams);
        }

        /// <summary>
        /// 
        /// </summary>
        public ushort MergeTop
        {
            get => (ushort)((cellParams & 4u) / 4);
            set => cellParams = (ushort)((value * 4) | cellParams);
        }

        /// <summary>
        /// 
        /// </summary>
        public ushort MergePrev
        {
            get => (ushort)((cellParams & 8u) / 8);
            set => cellParams = (ushort)((value * 8) | cellParams);
        }

        /// <summary>
        /// 
        /// </summary>
        public ushort Vertical
        {
            get => (ushort)((cellParams & 16u) / 16);
            set => cellParams = (ushort)((value * 16) | cellParams);
        }

        /// <summary>
        /// 
        /// </summary>
        public ushort MergeStart
        {
            get => (ushort)((cellParams & 32u) / 32);
            set => cellParams = (ushort)((value * 32) | cellParams);
        }

        /// <summary>
        /// 
        /// </summary>
        public ushort MergeCont
        {
            get => (ushort)((cellParams & 64u) / 64);
            set => cellParams = (ushort)((value * 64) | cellParams);
        }
    }
}
