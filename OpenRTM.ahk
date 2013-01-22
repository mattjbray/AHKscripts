; Activated by Win+q
#q::

; Get the input, exit if user cancels
InputBox, IRN, Open RTM, Enter tag,,,,,,,,%IRN%
if ErrorLevel
	return

SetTitleMatchMode, RegEx

; Get the Firefox window
IfWinNotExist, ahk_class MozillaWindowClass
{
	return
}

WinActivate
WinMaximize

WinWaitActive,,,5
if ErrorLevel
	return

Send ^1

Sleep 100

; Click the search box
CoordMode Mouse, Relative
Click 1080,105

Sleep 100

Send ^atag:%IRN%{Enter}

return
