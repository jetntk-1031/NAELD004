(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PneuExtSenTrlly2Stat			:= ADR(eStat);
	p_PneuExtSenTrlly2Status			:= ADR(eStatus);
	p_PneuExtSenTrlly2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_PneuExtSenTrlly2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_PneuExtSenTrlly2ExtCtrl		:= ADR(bExtCtrl);
	p_PneuExtSenTrlly2RetCtrl		:= ADR(bRetCtrl);
	p_PneuExtSenTrlly2TwoCtrlOut	:= ADR(bTwoCtrlOut);
	p_PneuExtSenTrlly2Extended		:= ADR(bExtended);
	p_PneuExtSenTrlly2Retracted		:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM