myGui()



myGui()	{
	static thisVar, thatVar
	gui, DoceScan Scanning & Filing: new
	gui,Default
	gui,+LastFound
	gui, add, groupbox, w250 h125, example
	gui, add, text, xm12 ym30 section, this Label
	gui, add, text, xm12 yp+30, that label
	gui, add, button, yp+30 gDone, Ok
	gui, add, edit, ys ym30 vthisVar,
	gui, add, edit, yp+30  vthatVar,
	gui, add, button, yp+30  guiclose, cancel
	gui, show,, gui in a function

	return winexist()

	guiDone:	{
		gui,submit,nohide
		ListVars
		msgbox your values `nthisVar :%thisVar%`nthatVar :%thatVar%

		return
	}

	guiClose:	{
		gui,destroy
		ExitApp

		return

	}

}
