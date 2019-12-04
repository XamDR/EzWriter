using System;
using System.Runtime.InteropServices;

namespace EzWriterCustomControls.PInvoke
{
    /// <summary>
    /// 
    /// </summary>
    abstract class CharBuffer
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="size"></param>
        /// <returns></returns>
        public static CharBuffer CreateBuffer(int size) => new UnicodeCharBuffer(size);

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public abstract IntPtr AllocCoTaskMem();

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public abstract string GetString();

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ptr"></param>
        public abstract void PutCoTaskMem(IntPtr ptr);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        public abstract void PutString(string s);
    }

    /// <summary>
    /// 
    /// </summary>
    class UnicodeCharBuffer : CharBuffer
    {
        internal char[] buffer;
        internal int offset;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="size"></param>
        public UnicodeCharBuffer(int size) => buffer = new char[size];

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override IntPtr AllocCoTaskMem()
        {
            IntPtr result = Marshal.AllocCoTaskMem(buffer.Length * 2);
            Marshal.Copy(buffer, 0, result, buffer.Length);
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public override string GetString()
        {
            int i = offset;

            while (i < buffer.Length && buffer[i] != 0)
            {
                i++;
            }
            string result = new string(buffer, offset, i - offset);
            
            if (i < buffer.Length)
            {
                i++;
            }
            offset = i;
            return result;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ptr"></param>
        public override void PutCoTaskMem(IntPtr ptr)
        {
            Marshal.Copy(ptr, buffer, 0, buffer.Length);
            offset = 0;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        public override void PutString(string s)
        {
            int count = Math.Min(s.Length, buffer.Length - offset);
            s.CopyTo(0, buffer, offset, count);
            offset += count;

            if (offset < buffer.Length)
            {
                buffer[offset++] = (char)0;
            }
        }
    }
}
