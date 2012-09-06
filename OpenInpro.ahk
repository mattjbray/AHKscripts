; Activated by Win+z
#z::

; Get the input, exit if user cancels
InputBox, IRN, Open Inprotech Case, Enter tag,,,,,,,,%IRN%
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

; Select the Inprotech tab
Send ^3

Sleep 100

; Click in window to enable keyboard shortcuts
CoordMode Mouse, Relative
Click 220, 190

; Minimize existing windows
Send ^A

Sleep 500

; Click in the search box
Click 220, 190

; Select all text
Send ^a

Send %IRN%{Enter}

return
