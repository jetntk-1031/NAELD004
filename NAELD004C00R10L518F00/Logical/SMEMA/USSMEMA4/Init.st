(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSMEMA4Stat		:= ADR(eStat);
	p_USSMEMA4Status	:= ADR(eStatus);
	p_USSMEMA4StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSMEMA4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSMEMA4USRdy			:= ADR(bUSRdy);
	p_USSMEMA4USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_USSMEMA4DSRdy			:= ADR(bDSRdy);
	p_USSMEMA4Transporting	:= ADR(bTransporting);
	p_USSMEMA4ConvStart		:= ADR(bConvStart);
	p_USSMEMA4ConvStop		:= ADR(bConvStop);
	p_USSMEMA4USB			:= ADR(bUSB);
	p_USSMEMA4Timer			:= ADR(bTimer);
	p_USSMEMA4Virtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
