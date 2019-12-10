namespace EzWriterCustomControls.UIElement
{
    partial class DocumentViewer
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de componentes

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DocumentViewer));
            this.contextMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tsMenuItemCopy = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMenuItemPrint = new System.Windows.Forms.ToolStripMenuItem();
            this.contextMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // contextMenu
            // 
            this.contextMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsMenuItemCopy,
            this.tsMenuItemPrint});
            this.contextMenu.Name = "contextMenu";
            this.contextMenu.Size = new System.Drawing.Size(121, 48);
            // 
            // tsMenuItemCopy
            // 
            this.tsMenuItemCopy.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemCopy.Image")));
            this.tsMenuItemCopy.Name = "tsMenuItemCopy";
            this.tsMenuItemCopy.Size = new System.Drawing.Size(120, 22);
            this.tsMenuItemCopy.Text = "Copiar";
            // 
            // tsMenuItemPrint
            // 
            this.tsMenuItemPrint.Image = ((System.Drawing.Image)(resources.GetObject("tsMenuItemPrint.Image")));
            this.tsMenuItemPrint.Name = "tsMenuItemPrint";
            this.tsMenuItemPrint.Size = new System.Drawing.Size(120, 22);
            this.tsMenuItemPrint.Text = "Imprimir";
            this.contextMenu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ContextMenuStrip contextMenu;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemCopy;
        private System.Windows.Forms.ToolStripMenuItem tsMenuItemPrint;
    }
}
