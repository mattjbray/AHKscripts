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

Send {Alt Down}hy2{Alt Up}

; Wait for the "Select Case" window, and exit if it doesn't arrive
;WinWaitActive, Select Case,,7
;if ErrorLevel
;	return

Sleep 100

Send %IRN%{Tab}{Down}{Tab}
Send mark{Down}{Tab}{Enter}{Enter}

return
