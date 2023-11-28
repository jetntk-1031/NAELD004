(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Receive
	IF p_bLinkSOTReadyOnFirst THEN
		p_bRdyRcv	:= TRUE;
	ELSE
		p_bRdyRcv ACCESS p_DISOT4Available;
	END_IF
	p_bLeftSen ACCESS p_DIMagConvEntSen4;
	p_bRightSen ACCESS p_DIMagPresentSen4;
	p_bUMA ACCESS p_DISOT4Available;	
	p_bUMASize ACCESS p_DISOT4SizeLarge;	
	p_bDirLToR := TRUE;

	p_bComplSigOn	:= p_bRightSen;
	
END_ACTION
