$MethodDefinition = @'

[DllImport("user32.dll", CharSet = CharSet.Unicode)]
[return: MarshalAs(UnmanagedType.Bool)]
private static extern bool InvalidateRect(IntPtr hWnd, IntPtr rect, bool bErase);

[DllImport("user32.dll")]
[return: MarshalAs(UnmanagedType.Bool)]
private static extern bool UpdateWindow(IntPtr hWnd);

public static void PaintWindow()
{
    InvalidateRect(IntPtr.Zero, IntPtr.Zero, true);
    //return UpdateWindow(IntPtr.Zero);
}

'@

Add-Type -MemberDefinition $MethodDefinition -Name 'Kernel32' -Namespace 'Win32'
