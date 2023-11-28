(** 2019-01-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	sProgNm	:= 'AGVMag 4';
	
	//Physical Configuration
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AGVMag4Stat		:= ADR(eStat);
	p_AGVMag4Status		:= ADR(eStatus);
	p_AGVMag4StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_AGVMag4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_AGVMag4RdyEnter		:= ADR(bRdyEnt);
	p_AGVMag4RdyExit		:= ADR(bRdyExit);
	p_AGVMag4McRunRdy		:= ADR(bMcRunRdy);
	p_AGVMag4DTMagToAGV		:= ADR(tyDTMagToAGV);
	
	
	(* Always Change If Project Change *)
	
END_PROGRAM
