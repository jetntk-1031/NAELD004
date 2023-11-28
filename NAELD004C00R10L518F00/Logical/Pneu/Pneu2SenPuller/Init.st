(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SenPullerStat		:= ADR(eStat);
	p_Pneu2SenPullerStatus		:= ADR(eStatus);
	p_Pneu2SenPullerStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SenPullerAlmData		:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SenPullerExtCtrl		:= ADR(bExtCtrl);
	p_Pneu2SenPullerRetCtrl		:= ADR(bRetCtrl);
	p_Pneu2SenPullerTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SenPullerExtended	:= ADR(bExtended);
	p_Pneu2SenPullerRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM