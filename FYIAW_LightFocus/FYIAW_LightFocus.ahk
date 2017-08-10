; Keeps FYIAW_Lighting in focus

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2
SetTimer LightFocus, 10000

F1::
IfWinExist Visualizations
{
	WinActivate Visualizations
	Sleep 50
	Send y
	IfWinExist FYIAW Lighting v
	{
		WinActivate FYIAW Lighting v
	}
}
return

F2::
IfWinExist Visualizations
{
	WinActivate Visualizations
	Sleep 50
	Send u
	IfWinExist FYIAW Lighting v
	{
		WinActivate FYIAW Lighting v
	}
}
return

F3::
IfWinExist Winamp
{
	WinActivate Winamp
	Sleep 50
	Send Space
	IfWinExist FYIAW Lighting v
	{
		WinActivate FYIAW Lighting v
	}
}
return

LightFocus:
IfWinExist Winamp
{
	WinActivate Winamp
}
IfWinExist FYIAW Lighting v
{
	WinActivate FYIAW Lighting v
}
return