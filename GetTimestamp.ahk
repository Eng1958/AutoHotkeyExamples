/*
   ***************************************************
   * SciTE4AutoHotkey v3 syntax highlighting demo    *
   * August 19, 2010 - fincs                         *
   ***************************************************
  */

; Directives, keywords
#SingleInstance Force

/*
	Time-String
*/
#p::
FormatTime, TimeString, , yyyy.MM.dd-hh:mm
Send, %TimeString%
return

/* 
	Abkuerzungen
*/
  ::btw::by the way
  ::Plie::Hallo Frau Plieschnegger,


; Label, hotkey, hotstring
  Label:
  #v::MsgBox You pressed Win+V
