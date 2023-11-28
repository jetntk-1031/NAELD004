(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSOT4Stat		:= ADR(eStat);
	p_DSSOT4Status		:= ADR(eStatus);
	p_DSSOT4StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_DSSOT4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSOT4USRdy			:= ADR(bUSRdy);
	p_DSSOT4DSRdy			:= ADR(bDSRdy);
	p_DSSOT4Transporting	:= ADR(bTransporting);
	p_DSSOT4ConvStart		:= ADR(bConvStart);
	p_DSSOT4ConvStop		:= ADR(bConvStop);
	p_DSSOT4DBA				:= ADR(bDBA);
	p_DSSOT4Virtual			:= ADR(bVirtual);
	p_DSSOT4MagSizeLarge	:= ADR(bDSMagSizeLarge);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
