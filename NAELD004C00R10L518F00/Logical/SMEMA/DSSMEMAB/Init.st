(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMABStat		:= ADR(eStat);
	p_DSSMEMABStatus	:= ADR(eStatus);
	p_DSSMEMABStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMABAlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMABUSRdy			:= ADR(bUSRdy);
	p_DSSMEMABUSGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMABDSRdy			:= ADR(bDSRdy);
	p_DSSMEMABTransporting	:= ADR(bTransporting);
	p_DSSMEMABConvStart		:= ADR(bConvStart);
	p_DSSMEMABConvStop		:= ADR(bConvStop);
	p_DSSMEMABDBA			:= ADR(bDBA);
	p_DSSMEMABDBAStat		:= ADR(bDBAStat);
	p_DSSMEMABTimer			:= ADR(bTimer);
	p_DSSMEMABVirtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
