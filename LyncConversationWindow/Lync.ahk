MsgBox, 4, , Do you want to continue? (Press YES or NO)

; Tom Engemann
; ahk_class LyncConversationWindowClass
; ahk_exe lync.exe

; Example 3
if WinExist("ahk_class" . LyncConversationWindowClass)
{
    WinActivate  ; Uses the last found window.
    WinSetTitle, NewTitle

}

    WinSetTitle, NewTitle
MsgBox % "The active window's ID is " . WinExist("A")
