; Activated by Win+s
#s::

InputBox, IRN, Open MOS, Enter IRN,,,,,,,,%IRN%
if ErrorLevel
	return

SetTitleMatchMode, RegEx

; Get the Word window
IfWinNotExist, Microsoft Word
{
	return
}

WinActivate
WinMaximize

; Click the "Inprotech" button
;Click 180, 95, 2

; Click the "Forms" button
;Click 212, 150

; Click the "Marking off sheet" button
;Click 493, 149

; Enter the Marking_off macro shortcut
Send {Control Down}{Alt Down}q{Alt Up}{Control Up}

; Wait for the "Enter IRN Selection" window, and exit if it doesn't arrive
WinWaitActive, Enter IRN Selection,,7
if ErrorLevel
	return

; Enter the IRN
Send %IRN%{Enter}

return
