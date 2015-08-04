/*
   ***************************************************
   * SciTE4AutoHotkey v3 syntax highlighting demo    *
   * August 19, 2010 - fincs                         *
   ***************************************************
  */

; Directives, keywords
#SingleInstance Force

Menu, Tray, Icon, Abbreviation.ico,, 1
/*
	Time-String
*/
#p::
FormatTime, TimeString, , yyyy.MM.dd-hh:mm
Send, %TimeString%
return

/* 
	Abkuerzungen / ShortCuts
*/
::btw::by the way
::Plie::Hallo Frau Plieschnegger,
/*
  * Ausgabe des Datums und der Uhrzeit im Format  yyyy.MM.dd-hh:mm
*/
::DatY::
{
    FormatTime, TimeString, , yyyy.MM.dd-hh:mm
    Send, %TimeString%
    return
}
/*
  * Ausgabe des Datums und der Uhrzeit im Format  dd.MM.yyyy-hh:mm
*/
::DatD::
{
    FormatTime, TimeString, , dd.MM.yyyy-hh:mm
    Send, %TimeString%
    return
}

; Label, hotkey, hotstring
  Label:
  #v::MsgBox You pressed Win+V
