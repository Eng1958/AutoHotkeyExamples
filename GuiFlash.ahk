Run Notepad
WinWait Untitled
NotepadHwnd := WinExist()
Send !{tab}  ; Switch away from it for demonstration purposes.
Sleep 100
Loop 10
{
	DllCall("FlashWindow", UInt, NotepadHwnd, Int, 1)
	Sleep 300
}