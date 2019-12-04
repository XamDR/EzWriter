using System.IO;
using System.Reflection;

namespace EzWriterViewModel.Core
{
    /// <summary>
    /// ViewModel for the AboutDialog.
    /// </summary>
    public class AboutDialogViewModel : BaseViewModel
    {
        private readonly WordProcessor wordProcessor;

        /// <summary>
        /// 
        /// </summary>
        public AboutDialogViewModel(WordProcessor wordProcessor) => this.wordProcessor = wordProcessor;

        /// <summary>
        /// Gets the copyright for the current assembly.
        /// </summary>
        public string AssemblyCopyright
        {
            get
            {
                var attributes = Assembly.GetEntryAssembly().GetCustomAttributes(typeof(AssemblyCopyrightAttribute), false);
                return attributes.Length == 0 ? string.Empty : ((AssemblyCopyrightAttribute)attributes[0]).Copyright;
            }
        }

        /// <summary>
        /// Gets the description for the current assembly.
        /// </summary>
        public string AssemblyDescription
        {
            get
            {
                var attributes = Assembly.GetEntryAssembly().GetCustomAttributes(typeof(AssemblyDescriptionAttribute), false);
                return attributes.Length == 0 ? string.Empty : ((AssemblyDescriptionAttribute)attributes[0]).Description;
            }
        }

        /// <summary>
        /// Gets the product associate to the current assembly.
        /// </summary>
        public string AssemblyProduct
        {
            get
            {
                var attributes = Assembly.GetEntryAssembly().GetCustomAttributes(typeof(AssemblyProductAttribute), false);
                return attributes.Length == 0 ? string.Empty : ((AssemblyProductAttribute)attributes[0]).Product;
            }
        }

        /// <summary>
        /// Gets thee title of the current assembly.
        /// </summary>
        public string AssemblyTitle
        {
            get
            {
                var attributes = Assembly.GetEntryAssembly().GetCustomAttributes(typeof(AssemblyTitleAttribute), false);
                
                if (attributes.Length > 0)
                {
                    var titleAttribute = (AssemblyTitleAttribute)attributes[0];
                    
                    if (titleAttribute.Title != "")
                    {
                        return titleAttribute.Title;
                    }
                }
                return Path.GetFileNameWithoutExtension(Assembly.GetEntryAssembly().CodeBase);
            }
        }

        /// <summary>
        /// Gets the version for the current assembly.
        /// </summary>
        public string AssemblyVersion => Assembly.GetEntryAssembly().GetName().Version.ToString();
    }
}
