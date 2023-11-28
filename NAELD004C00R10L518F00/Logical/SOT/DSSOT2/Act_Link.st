(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Send
	p_bRdySend	:= TRUE;
	

	p_bLeftSen ACCESS p_DIMagConvEntSen2;
	p_bRightSen ACCESS p_DIMagPresentSen2;
	p_bDSB ACCESS p_DISOT2Ready;	
		

	//Send Complete Signal
	IF EDGENEG(p_bLeftSen) THEN
		p_bComplSigOn	:= TRUE;
	END_IF
	
	IF eStat <> SOTActRun THEN
		p_bComplSigOn	:= FALSE;
	END_IF
	
	
END_ACTION
