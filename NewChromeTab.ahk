; Activated by Win+t
#t::

SetTitleMatchMode, RegEx

; Get the Google Chrome window
IfWinNotExist, Google Chrome
{
	return
}

WinActivate

WinWaitActive, Google Chrome,,5
if ErrorLevel
	return

Send ^t

Send ^l

return
