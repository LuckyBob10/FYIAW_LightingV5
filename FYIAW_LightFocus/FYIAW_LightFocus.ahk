; Keeps FYIAW in focus

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2
SetTimer LightFocus, 2500
FYIAWWinName = FYIAW Lv
VisualizerWinName = Visualizations
WinTransitionTime = 25

1::
IfWinExist %VisualizerWinName%
{
	WinActivate %VisualizerWinName%
	Sleep %WinTransitionTime%
	Send y
	IfWinExist %FYIAWWinName%
	{
		WinActivate %FYIAWWinName%
	}
}
return

2::
IfWinExist %VisualizerWinName%
{
	WinActivate %VisualizerWinName%
	Sleep %WinTransitionTime%
	Send u
	IfWinExist %FYIAWWinName%
	{
		WinActivate %FYIAWWinName%
	}
}
return

LightFocus:
IfWinExist Winamp
{
	WinActivate Winamp
}
IfWinExist %FYIAWWinName%
{
	WinActivate %FYIAWWinName%
}
return