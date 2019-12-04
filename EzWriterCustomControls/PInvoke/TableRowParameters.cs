namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// Defines the attributes of rows in a table to be inserted by the <see cref="RichEditMessages.EM_INSERTTABLE"/> message.
    /// </summary>
    struct TableRowParameters
    {
        /// <summary>
        /// The count of bytes in this structure.
        /// </summary>
        public byte cbRow;

        /// <summary>
        /// The count of bytes in the <see cref="TableCellParameters"/> struct.
        /// </summary>
        public byte cbCell;

        /// <summary>
        /// The count of cells in a row, up to the maximum specified by MAX_TABLE_CELLS.
        /// </summary>
        public byte cCell;

        /// <summary>
        /// The count of rows.
        /// </summary>
        public byte cRow;

        /// <summary>
        /// The size of the left and right margins in a cell.
        /// </summary>
        public int dxCellMargin;

        /// <summary>
        /// The amount of left indentation, or right indentation if the fRTL member is TRUE.
        /// </summary>
        public int dxIndent;

        /// <summary>
        /// The height of a row.
        /// </summary>
        public int dyHeight;

        /// <summary>
        /// nAlignment : 3,
        /// fRTL : 1,
        /// fKeep : 1,
        /// fKeepFollow : 1,
        /// fWrap : 1,
        /// fIdentCells : 1.
        /// </summary>
        private uint rowParams;

        /// <summary>
        /// The character position that indicates where to insert table. 
        /// A value of –1 indicates the character position of the selection.
        /// </summary>
        public int cpStartRow;

        /// <summary>
        /// The table nesting level.
        /// </summary>
        public byte bTableLevel;

        /// <summary>
        /// The index of the cell to insert or delete.
        /// </summary>
        public byte iCell;

        /// <summary>
        /// 
        /// </summary>
        public uint Alignment
        {
            get => rowParams & 7u;
            set => rowParams = value | rowParams;
        }

        /// <summary>
        /// 
        /// </summary>
        public uint Rtl
        {
            get => (rowParams & 8u) / 8;
            set => rowParams = (value * 8) | rowParams;
        }

        /// <summary>
        /// 
        /// </summary>
        public uint Keep
        {
            get => (rowParams & 16u) / 16;
            set => rowParams = (value * 16) | rowParams;
        }

        /// <summary>
        /// 
        /// </summary>
        public uint KeepFollow
        {
            get => (rowParams & 32u) / 32;
            set => rowParams = (value * 32) | rowParams;
        }

        /// <summary>
        /// 
        /// </summary>
        public uint Wrap
        {
            get => (rowParams & 64u) / 64;
            set => rowParams = (value * 64) | rowParams;
        }

        /// <summary>
        /// 
        /// </summary>
        public uint IdentCells
        {
            get => (rowParams & 128u) / 128;
            set => rowParams = (value * 128) | rowParams;
        }
    }
}
