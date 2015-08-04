#SingleInstance force
;~ ; Example 3
if WinExist("ahk_class LyncConversationWindowClass") 
{
 MsgBox "found"
 WinActivate  ; Uses the last found window.
 WinActivate, ahk_class LyncConversationWindowClass
 WinGetTitle, Title, A
 MsgBox, The active window is "%Title%".
 ; WinSetTitle, This is a new Title
; WinMaximize
}

MsgBox % "The active window's ID is " . WinExist("A")

/* WasFlashing := DllCall("FlashWindow", "uInt", hwnd, "int", true)
 * 
 * if (WasFlashing)
 * {
 *     MsgBox, % "Was flashing..."
 * }
 * else
 * {
 *     MsgBox, % "Was NOT flashing..."
 * }
 * 
 */

return

DetectHiddenWindows, On
;; Script_Hwnd := WinExist("ahk_class AutoHotkey ahk_pid " DllCall("GetCurrentProcessId"))
Script_Hwnd := WinExist("ahk_class LyncConversationWindowClass " DllCall("GetCurrentProcessId"))
DetectHiddenWindows, Off
msgBox %Script_Hwnd%
; Register shell hook to detect flashing windows.
DllCall("RegisterShellHookWindow", "uint", Script_Hwnd)
OnMessage(DllCall("RegisterWindowMessage", "str", "SHELLHOOK"), "ShellEvent")
;...
ShellEvent(wParam, lParam) {
    if (wParam = 0x8006) ; HSHELL_FLASH
    {   ; lParam contains the ID of the window which flashed:
		MsgBox "found"
        WinActivate, ahk_id %lParam%
    }
}