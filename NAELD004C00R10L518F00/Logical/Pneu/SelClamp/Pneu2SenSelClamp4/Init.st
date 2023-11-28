(** 2039-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuNoSenSelClamp4Stat		:= ADR(eStat);
	p_PneuNoSenSelClamp4Status		:= ADR(eStatus);
	p_PneuNoSenSelClamp4StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuNoSenSelClamp4AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuNoSenSelClamp4ExtCtrl		:= ADR(bExtCtrl);
	p_PneuNoSenSelClamp4RetCtrl		:= ADR(bRetCtrl);
	p_PneuNoSenSelClamp4TwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuNoSenSelClamp4Extended	:= ADR(bExtended);
	p_PneuNoSenSelClamp4Retracted	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM