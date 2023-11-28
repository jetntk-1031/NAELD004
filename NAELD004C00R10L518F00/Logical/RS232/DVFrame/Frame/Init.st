(** 2019-05-29 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_FrmStat		:= ADR(eStat);
	p_FrmStatus		:= ADR(eMainStatus);
	p_FrmStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_FrmAlmData	:= ADR(tyAlmData);
	p_FrmAlmData1	:= ADR(tyAlmData1);
	//Output
	p_FrmFullMsgRd	:= ADR(sFullMsgRd);
	p_FrmMsgRd		:= ADR(sMsgRd);
	p_FrmMsgRdValid	:= ADR(bMsgRdValid);
	p_FrmMsgRdLen	:= ADR(uiMsgRdLen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM