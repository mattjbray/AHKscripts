; Activated by Win+w
#w::

; Get the input, exit if user cancels
; Use the clipboard contents as the default input if less than 12 characters
StringLen, length, clipboard
IfLess length, 20
	InputBox, number, Open EPO Register, Enter Application or Publication number,,,,,,,,%clipboard%
Else
	InputBox, number, Open EPO Register, Enter Application or Publication number
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

Send ^t

Sleep 100

Send reg EP%number%{Enter}

return
