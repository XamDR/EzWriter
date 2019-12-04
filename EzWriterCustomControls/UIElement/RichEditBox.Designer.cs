namespace EzWriterCustomControls.UIElement
{
    partial class RichEditBox
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;        

        #region Código generado por el Diseñador de componentes

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RichEditBox));
            this.contextMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tsMenuItemCopy = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemCut = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemPaste = new System.Windows.Forms.ToolStripMenuItem();
            this.tsSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.tsMenuItemSelectAll = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemClear = new System.Windows.Forms.ToolStripMenuItem();
            this.tsSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.tsMenuItemSearch = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemTranslate = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemEsEn = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemEnEs = new System.Windows.Forms.ToolStripMenuItem();
            this.contextMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // contextMenu
            // 
            this.contextMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsMenuItemCopy,
            this.tsMenuItemCut,
            this.tsMenuItemPaste,
            this.tsSeparator1,
            this.tsMenuItemSelectAll,
            this.tsMenuItemClear,
            this.tsSeparator2,
            this.tsMenuItemSearch,
            this.tsMenuItemTranslate});
            this.contextMenu.Name = "contextMenu";
            this.contextMenu.Size = new System.Drawing.Size(200, 170);
            // 
            // tsMenuItemCopy
            // 
            this.tsMenuItemCopy.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemCopy.Image")));
            this.tsMenuItemCopy.Name = "tsMenuItemCopy";
            this.tsMenuItemCopy.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemCopy.Text = "Copiar";
            // 
            // tsMenuItemCut
            // 
            this.tsMenuItemCut.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemCut.Image")));
            this.tsMenuItemCut.Name = "tsMenuItemCut";
            this.tsMenuItemCut.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemCut.Text = "Cortar";
            // 
            // tsMenuItemPaste
            // 
            this.tsMenuItemPaste.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemPaste.Image")));
            this.tsMenuItemPaste.Name = "tsMenuItemPaste";
            this.tsMenuItemPaste.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemPaste.Text = "Pegar";
            // 
            // tsSeparator1
            // 
            this.tsSeparator1.Name = "tsSeparator1";
            this.tsSeparator1.Size = new System.Drawing.Size(196, 6);
            // 
            // tsMenuItemSelectAll
            // 
            this.tsMenuItemSelectAll.Name = "tsMenuItemSelectAll";
            this.tsMenuItemSelectAll.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemSelectAll.Text = "Seleccionar todo";
            // 
            // tsMenuItemClear
            // 
            this.tsMenuItemClear.Name = "tsMenuItemClear";
            this.tsMenuItemClear.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemClear.Text = "Eliminar todo";
            // 
            // tsSeparator2
            // 
            this.tsSeparator2.Name = "tsSeparator2";
            this.tsSeparator2.Size = new System.Drawing.Size(196, 6);
            // 
            // tsMenuItemSearch
            // 
            this.tsMenuItemSearch.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemSearch.Image")));
            this.tsMenuItemSearch.Name = "tsMenuItemSearch";
            this.tsMenuItemSearch.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemSearch.Text = "Búsqueda con Google...";
            // 
            // tsMenuItemTranslate
            // 
            this.tsMenuItemTranslate.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsMenuItemEsEn,
            this.tsMenuItemEnEs});
            this.tsMenuItemTranslate.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemTranslate.Image")));
            this.tsMenuItemTranslate.Name = "tsMenuItemTranslate";
            this.tsMenuItemTranslate.Size = new System.Drawing.Size(199, 22);
            this.tsMenuItemTranslate.Text = "Traducir";
            // 
            // tsMenuItemEsEn
            // 
            this.tsMenuItemEsEn.Name = "tsMenuItemEsEn";
            this.tsMenuItemEsEn.Size = new System.Drawing.Size(157, 22);
            this.tsMenuItemEsEn.Text = "Español - Inglés";
            // 
            // tsMenuItemEnEs
            // 
            this.tsMenuItemEnEs.Name = "tsMenuItemEnEs";
            this.tsMenuItemEnEs.Size = new System.Drawing.Size(157, 22);
            this.tsMenuItemEnEs.Text = "Inglés - Español";
            this.contextMenu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ContextMenuStrip contextMenu;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemCopy;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemCut;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemPaste;
        private System.Windows.Forms.ToolStripSeparator tsSeparator1;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemSelectAll;
        private System.Windows.Forms.ToolStripSeparator tsSeparator2;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemSearch;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemClear;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemTranslate;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemEsEn;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemEnEs;
    }
}
