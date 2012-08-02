; Activated by Win+a
#a::

; Get the input, exit if user cancels
InputBox, IRN, New Timesheet Entry, Enter tag,,,,,,,,%IRN%
if ErrorLevel
	return

SetTitleMatchMode, RegEx

; Get the Timesheet window
IfWinNotExist, Inprotech Timesheet
{
	return
}

WinActivate

WinWaitActive, Inprotech Timesheet,,5
if ErrorLevel
	return

Send ^S

Sleep 3000

Send ^N

Sleep 1000

Send %IRN%{Tab}

Sleep 1000

Send T{Tab}

return
