; Activated by Win+q
#q::

; Get the input, exit if user cancels
InputBox, IRN, Open RTM, Enter tag,,,,,,,,%IRN%
if ErrorLevel
	return

SetTitleMatchMode, RegEx

; Get the Google Chrome window
IfWinNotExist, Google Chrome
{
	return
}

WinActivate
WinMaximize

WinWaitActive, Google Chrome,,5
if ErrorLevel
	return

Send ^1

Sleep 100

Send {Tab}/

Sleep 100

Send ^atag:%IRN%{Enter}

return
