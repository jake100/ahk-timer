started := false
Loop
{
	state := GetKeyState("RButton", "P")
	if not started
	{
		if state
		{
			startTime := A_TickCount / 1000
			started = true
		}
	}
	else
	{
		if not state
		{
			elapsedTime := A_TickCount / 1000 - StartTime
			sleep, 1000
			MsgBox,  %elapsedTime%
			started := false
		}
	}
	
}

