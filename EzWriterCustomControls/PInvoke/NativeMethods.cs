using System;
using System.ComponentModel;
using System.Runtime.InteropServices;
using TextObjectModel.Interop;

namespace EzWriterCustomControls.PInvoke
{
    static class NativeMethods
    {
        internal static unsafe EnLink ConvertFromENLINK64(EnLink64 el64)
        {
            var el = new EnLink();

            fixed (byte* el64p = &el64.contents[0])
            {
                el.nmhdr = new Nmhdr();
                el.charrange = new CharRange();
                el.nmhdr.hwndFrom = Marshal.ReadIntPtr((IntPtr)el64p);
                el.nmhdr.idFrom = Marshal.ReadIntPtr((IntPtr)(el64p + 8));
                el.nmhdr.code = Marshal.ReadInt32((IntPtr)(el64p + 16));
                el.msg = Marshal.ReadInt32((IntPtr)(el64p + 24));
                el.wParam = Marshal.ReadIntPtr((IntPtr)(el64p + 28));
                el.lParam = Marshal.ReadIntPtr((IntPtr)(el64p + 36));
                el.charrange.cpMin = Marshal.ReadInt32((IntPtr)(el64p + 44));
                el.charrange.cpMax = Marshal.ReadInt32((IntPtr)(el64p + 48));
            }            
            return el;
        }

        internal static IntPtr LoadLibrary(string filename)
        {
            var module = LoadLibraryW(filename);

            if (module == IntPtr.Zero)
            {
                int error = Marshal.GetLastWin32Error();
                throw new Win32Exception(error);
            }
            return module;
        }

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern IntPtr SendMessage(IntPtr HWnd, int msg, int wparam, int lparam);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wparam, IntPtr lparam);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern int SendMessage(IntPtr hWnd, int msg, int wparam, [MarshalAs(UnmanagedType.IUnknown)] out object editOle);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern int SendMessage(IntPtr hWnd, int msg, IntPtr wparam, ref ImageParameters lparam);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern int SendMessage(IntPtr hWnd, int msg, ref TableRowParameters wParam, ref TableCellParameters lParam);

        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        internal static extern IntPtr SendMessage(IntPtr hwnd, int msg, IntPtr wparam, ref TextRange lparam);

        [DllImport("shlwapi.dll", CharSet = CharSet.Unicode, PreserveSig = false)]
        internal static extern IStream SHCreateStreamOnFileEx(string pszFile, uint grfMode, uint dwAttributes, bool fCreate, IStream pstmTemplate);

        [DllImport("kernel32.dll", EntryPoint = "LoadLibraryW", CharSet = CharSet.Unicode, SetLastError = true)]
        private static extern IntPtr LoadLibraryW(string lpLibFileName);
    }
}
