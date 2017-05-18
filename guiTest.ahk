myGui()



myGui()	
{
	static thisVar, thatVar
	gui, DoceScanFiles: new
	gui,Default
	gui,+LastFound
	gui, add, groupbox, w250 h125, example
	gui, add, text, xm12 ym30 section, this Label
	gui, add, text, xm12 yp+30, that Label
	gui, add, button, yp+30 gguiDone, Ok
	gui, add, edit, ys ym30 vthisVar,
	gui, add, edit, yp+30  vthatVar,
	gui, add, button, yp+30 gguiClose, cancel
	gui, show,, gui in a function

	return winexist()

	guiDone:	
	{
		gui,submit,nohide
		ListVars
		msgbox your values `nthisVar :%thisVar%`nthatVar :%thatVar%

		return
	}
	guiClose:	
	{
		gui,destroy
		ExitApp

		return

	}
}