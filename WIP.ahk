;
; Get current WIP
;

#c::
Send, {LWINDOWN}d{LWINUP}
MouseClick, left,  213,  64
MouseClick, left,  213,  64

WinWait, Database Login,,2
IfWinNotActive, Database Login, , winActivate, Database Login, 
WinWaitActive, Database Login,,2
if ErrorLevel
    return

Send, {ENTER}

WinWait, Database Login - Subreport,,2
IfWinNotActive, Database Login - Subreport, , winActivate, Database Login - Subreport, 
WinWaitActive, Database Login - Subreport,,2
if ErrorLevel
    return

Send, {ENTER}

WinWait, Enter Parameter Values,,2
IfWinNotActive, Enter Parameter Values, , WinActivate, Enter Parameter Values, 
WinWaitActive, Enter Parameter Values,,2
if ErrorLevel
    return

Send, {SHIFTDOWN}{TAB}{SHIFTUP}{DOWN}{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}mb{ENTER}

WinWait, Enter Parameter Values,,2
IfWinNotActive, Enter Parameter Values, , WinActivate, Enter Parameter Values, 
WinWaitActive, Enter Parameter Values,,2
if ErrorLevel
    return

Send, {ENTER}

WinWait, Crystal Ease - Deluxe Edition,,2
IfWinNotActive, Crystal Ease - Deluxe Edition, , WinActivate, Crystal Ease - Deluxe Edition, 
WinWaitActive, Crystal Ease - Deluxe Edition,,2
if ErrorLevel
    return

MouseClick, left,  340,  119
MouseClick, left,  340,  119

return
