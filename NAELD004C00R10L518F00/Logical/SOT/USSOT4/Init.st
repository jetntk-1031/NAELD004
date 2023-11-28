(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSOT4Stat		:= ADR(eStat);
	p_USSOT4Status	:= ADR(eStatus);
	p_USSOT4StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSOT4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSOT4USRdy			:= ADR(bUSRdy);
	p_USSOT4USLargeMagRdy	:= ADR(bUSLargeMagRdy);
	p_USSOT4DSRdy			:= ADR(bDSRdy);
	p_USSOT4Transporting	:= ADR(bTransporting);
	p_USSOT4ConvStart		:= ADR(bConvStart);
	p_USSOT4ConvStop		:= ADR(bConvStop);
	p_USSOT4USB				:= ADR(bUSB);
	p_USSOT4Virtual			:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
