^!Numpad4::
WinExist("A") ; Get the active window
WinGetPos,X,,width
WinRestore
if (width = A_ScreenWidth/2 and x = 0)
{
	WinMove,,,0,0,(A_ScreenWidth/3),(A_ScreenHeight-60)
}
else 
{
	if (width = 426)
		WinMove,,,0,0,(2*A_ScreenWidth/3),(A_ScreenHeight-60)
	else
		WinMove,,,0,0,(A_ScreenWidth/2), (A_ScreenHeight-60) ; Move it to top-left
}
return

^!Numpad6::
WinExist("A") ; Get the active window
WinGetPos,x,,width
WinRestore
if (width = A_ScreenWidth/2 and x = A_ScreenWidth/2)
{
	WinMove,,,(2*A_ScreenWidth/3),0,(A_ScreenWidth/3),(A_ScreenHeight-60)
}
else 
{

	if (width = 426)
		WinMove,,,(A_ScreenWidth/3),0,(2*A_ScreenWidth/3),(A_ScreenHeight-60)
	else
		WinMove,,,(A_screenWidth/2),0,(A_ScreenWidth/2),(A_ScreenHeight-60)
}

return

^!Numpad5::
WinExist("A")
WinGet, maximized, MinMax
if maximized = 1
{
	WinRestore
	WinMove,,,(A_ScreenWidth/4),0,(A_ScreenWidth/2),(A_ScreenHeight-60)
}
else
{
	WinGetPos,x,,width
	if (width = A_ScreenWidth/2 and x = A_ScreenWidth/4)
		WinMove,,,(A_ScreenWidth/3),0,(A_ScreenWidth/3),(A_ScreenHeight-60)
	else
		WinMaximize
}
return

^!Numpad8::
WinExist("A")
WinRestore
WinMove,,,100,45,1094,757
return