(** 2019-10-30 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bFixClprClampCtrl	:= FALSE;
		bRmtClprClampCtrl	:= FALSE;
	END_IF
	
	p_bFixClprUnclampSen :=  p_bLinkFixClprUnClampSen; //unclamp
	
	IF p_bLinkNtParamMagModelAutoVerify THEN
		fbSmallLargeSenDlyTm(IN:= p_bLinkMagSmallSen OR p_bLinkMagLargeSen);
		IF fbSmallLargeSenDlyTm.Q THEN
			p_bFixClprClampSen := TRUE;
		ELSE
			p_bFixClprClampSen := FALSE;
		END_IF
	ELSE
		p_bFixClprClampSen := p_bLinkFixClprClampSen;
	END_IF
	
	p_bRmtClprClampSen := p_bLinkDO.bMag1RemoteClampCtrl;
	p_bRmtClprUnclampSen := NOT p_bLinkDO.bMag1RemoteClampCtrl;
	//	p_tMtrOffDlyTm	:= T#200ms;
	
	IF p_bLinkMagOpsStepMagMtyExit THEN
		fbLeftSenDelayTm(IN:= TRUE, PT:=  T#5000ms);
		IF fbLeftSenDelayTm.Q THEN
			p_bLeftSen := p_bLinkDIMagEntSen;
		END_IF
	ELSE
		p_bLeftSen := p_bLinkDIMagEntSen;
		fbLeftSenDelayTm(IN:= FALSE);
	END_IF
		
	//Clamp Sensor chk time
	IF p_tyDISettings.diMag1FixedSideDetect >0 THEN //fix side sensor used
			
		IF eStat = MagConv2ClpActInitStopClp AND usiStep = 3 OR 
			eStat = MagConv2ClpActEntStopClp AND usiStep = 1 OR
			eStat = MagConv2ClpActFixClprClamp OR eStat = MagConv2ClpActFixClprUnclamp THEN //during clamp
			fbClpExtChkTm(IN:=TRUE);
			
			IF fbClpExtChkTm.Q THEN
				fbClpExtChkTm(IN:=FALSE);
				p_bLinkFixClprClampSen ACCESS p_DIMag1FixedSideDetect;
			ELSE
				p_bLinkFixClprClampSen ACCESS ADR(bFixClprClampSen);
			END_IF
		ELSE
			fbClpExtChkTm(IN:=FALSE);
			p_bFixClprClampSen := FALSE;
		END_IF
	ELSE //standard 2 RS 
		p_bLinkFixClprClampSen ACCESS p_DIMag1FixedClampRS; 
	END_IF
			
END_ACTION
