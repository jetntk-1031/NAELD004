(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMAAStat		:= ADR(eStat);
	p_DSSMEMAAStatus	:= ADR(eStatus);
	p_DSSMEMAAStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMAAAlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMAAUSRdy			:= ADR(bUSRdy);
	p_DSSMEMAAUSGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMAADSRdy			:= ADR(bDSRdy);
	p_DSSMEMAATransporting	:= ADR(bTransporting);
	p_DSSMEMAAConvStart		:= ADR(bConvStart);
	p_DSSMEMAAConvStop		:= ADR(bConvStop);
	p_DSSMEMAADBA			:= ADR(bDBA);
	p_DSSMEMAADBAStat		:= ADR(bDBAStat);
	p_DSSMEMAATimer			:= ADR(bTimer);
	p_DSSMEMAAVirtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
