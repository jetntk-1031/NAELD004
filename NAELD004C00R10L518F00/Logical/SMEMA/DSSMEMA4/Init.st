(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	bGdBrd				:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMA4Stat		:= ADR(eStat);
	p_DSSMEMA4Status	:= ADR(eStatus);
	p_DSSMEMA4StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMA4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMA4USRdy			:= ADR(bUSRdy);
	p_DSSMEMA4USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMA4DSRdy			:= ADR(bDSRdy);
	p_DSSMEMA4Transporting	:= ADR(bTransporting);
	p_DSSMEMA4ConvStart		:= ADR(bConvStart);
	p_DSSMEMA4ConvStop		:= ADR(bConvStop);
	p_DSSMEMA4DBA			:= ADR(bDBA);
	p_DSSMEMA4DBAStat		:= ADR(bDBAStat);
	p_DSSMEMA4Timer			:= ADR(bTimer);
	p_DSSMEMA4Virtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
