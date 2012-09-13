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

Send {Alt}hy2

; Wait for the "Select Case" window, and exit if it doesn't arrive
;WinWaitActive, Select Case,,7
;if ErrorLevel
;	return

Sleep 100

Send %IRN%{Tab}{Down}{Enter}

return
