#SingleInstance force
/*
	**********************************************************
	* Blinkende Fenster in der Taskleiste feststellen
	* http://www.autohotkey.com/board/topic/36510-detect-flashingblinking-window-on-taskbar/#43203
	*
	* Author:	D. Engemann
	* Date:		04.08.2015
	**********************************************************
*/
DetectHiddenWindows, On
; Script_Hwnd := WinExist("ahk_class AutoHotkey ahk_pid " DllCall("GetCurrentProcessId"))
Script_Hwnd := WinExist("ahk_class LyncConversationWindowClass ahk_pid " DllCall("GetCurrentProcessId"))
DetectHiddenWindows, Off
; Register shell hook to detect flashing windows.
DllCall("RegisterShellHookWindow", "uint", Script_Hwnd)
OnMessage(DllCall("RegisterWindowMessage", "str", "SHELLHOOK"), "ShellEvent")
;...
ShellEvent(wParam, lParam) {
    if (wParam = 0x8006) ; HSHELL_FLASH
    {   ; lParam contains the ID of the window which flashed:
        WinActivate, ahk_id %lParam%
    }
}