(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuExtSenTrllyStat		:= ADR(eStat);
	p_PneuExtSenTrllyStatus		:= ADR(eStatus);
	p_PneuExtSenTrllyStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuExtSenTrllyAlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuExtSenTrllyExtCtrl		:= ADR(bExtCtrl);
	p_PneuExtSenTrllyRetCtrl		:= ADR(bRetCtrl);
	p_PneuExtSenTrllyTwoCtrlOut		:= ADR(bTwoCtrlOut);
	p_PneuExtSenTrllyExtended		:= ADR(bExtended);
	p_PneuExtSenTrllyRetracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM