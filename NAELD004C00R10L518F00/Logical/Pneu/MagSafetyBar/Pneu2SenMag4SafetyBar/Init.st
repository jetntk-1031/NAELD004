(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SMag4SafetyBarStat		:= ADR(eStat);
	p_Pneu2SMag4SafetyBarStatus		:= ADR(eStatus);
	p_Pneu2SMag4SafetyBarStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SMag4SafetyBarAlmData	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SMag4SafetyBarExtCtrl	:= ADR(bExtCtrl);
	p_Pneu2SMag4SafetyBarRetCtrl	:= ADR(bRetCtrl);
	p_Pneu2SMag4SafetyBarTwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_Pneu2SMag4SafetyBarExtended	:= ADR(bExtended);
	p_Pneu2SMag4SafetyBarRetracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM