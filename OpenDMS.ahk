; Activated by Win+o
#o::

; Get the input, exit if user cancels
InputBox, IRN, Open DMS, Enter IRN,,,,,,,,%IRN%
if ErrorLevel
	return

SetTitleMatchMode, RegEx

; Get the Outlook window
WinExist(" - Microsoft Outlook")
WinActivate
WinMaximize

; Click the "Search for Workspace" button
; Click 808, 68, 2

; Use the Alt+4 quick access toolbar "Search for workspace" shortcut
Send !4

; Wait for the Search workspaces window, and exit if it doesn't arrive
WinWaitActive, Search Workspaces,,2
if ErrorLevel
	return

; Click in the IRN field, select all text and enter the IRN
;Click 386, 453
; Use tabs to get to the IRN field
Sleep 50
Send {Tab}
Sleep 50
Send {Tab}
Sleep 50
Send {Tab}
Sleep 50
Send ^a
Send %IRN%{Enter}

; Wait for the Search Results window and exit if it doesn't arrive
WinWaitActive Search Results,,2
if ErrorLevel
	return

Send {Down}{Enter}
Sleep 400

; Navigate to the Correspondence folder
Send +{Tab}
Send {Right}{Down}{Enter}
return
