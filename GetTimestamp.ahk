/*
   ***************************************************
   * SciTE4AutoHotkey v3 syntax highlighting demo    *
   * August 19, 2010 - fincs                         *
   ***************************************************
  */

; Directives, keywords
#SingleInstance Force
#p::

;FormatTime, TimeString
;MsgBox The current time and date (time first) is %TimeString%.

; FormatTime, TimeString, 20050423220133, dddd MMMM d, yyyy hh:mm:ss tt
; FormatTime, TimeString, , dddd MMMM d, yyyy hh:mm:ss tt
FormatTime, TimeString, , yyyy.MM.dd-hh:mm
Send, %TimeString%

; MsgBox The specified date and time, when formatted, is %TimeString%.
return

/* 
	Abkuerzungen
*/
  ::btw::by the way
  ::Plie::Hallo Frau Plieschnegger,


; Label, hotkey, hotstring
  Label:
  #v::MsgBox You pressed Win+V
