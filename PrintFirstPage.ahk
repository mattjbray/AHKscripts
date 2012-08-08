;
; Print the first page of a document
;

#p::
Send {Alt Down}fp

; Outlook requires an extra keystroke
WinGet _ProcessName, ProcessName, A
If _ProcessName = outlook.exe
{
  Send r
}

Send s{Alt Up}1{Enter}
return
