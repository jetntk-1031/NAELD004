(** 2019-03-29 **)
ACTION Act_Link:
	IF p_bLinkProjLifterMagPlatform THEN
	
		p_diASltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diBSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diCSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diDSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	ELSE
		p_diASltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diBSltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diCSltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diDSltToSltDist	:= p_diLinkSltToSltDist * -1;
	END_IF
	
	p_bInterruptSensor1	:= NOT p_bLinkDILifterTimingBeltSen;
	p_bInterruptSensor2	:= NOT p_bLinkDILifterSafetyLmtSW1;//OR p_bLinkSafetyRelay = FALSE;
	p_bInterruptSensor3	:= NOT p_bLinkDILifterSafetyLmtSW2;

	IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
		
		IF (p_bProjInletShutPrep = TRUE) AND p_bLinkOpsTravLifULInDSPos = FALSE THEN
			IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor4 := TRUE;
			ELSE
				p_bInterruptSensor4 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor4 := FALSE;	
		END_IF
		
		IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE AND p_bLinkOpsTravLifULInDSPos = FALSE THEN
			IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor5 := TRUE;
			ELSE
				p_bInterruptSensor5 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor5 := FALSE;	
		END_IF
	
	ELSE
		
		IF (p_bProjInletShutPrep = TRUE) AND p_bLinkOpsTravLifULInDSPos = FALSE THEN 
			IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor4 := TRUE;
			ELSE
				p_bInterruptSensor4 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor4 := FALSE;	
		END_IF
		
		IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE AND p_bLinkOpsTravLifULInDSPos = FALSE 
			AND p_bLinkProjLifterMagPlatform = FALSE //rotate w/ platform
			THEN
			IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor5 := TRUE;
			ELSE
				p_bInterruptSensor5 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor5 := FALSE;	
		END_IF
	END_IF	
		
	IF p_bManual = TRUE THEN
		p_diGoASlt ACCESS p_UIMnlLifterBtmMag1GoSlt;
		p_diGoBSlt ACCESS p_UIMnlLifterBtmMag2GoSlt;
		p_diGoCSlt ACCESS p_UIMnlLifterBtmMag3GoSlt;
		p_diGoDSlt ACCESS p_UIMnlLifterBtmMag4GoSlt;
		
		p_diMoveVelInUMPS ACCESS p_UIMnlLifterBtmNomSpd;
		
	ELSE
		
		IF p_bLinkProjLifterMagPlatform = FALSE THEN
			p_diGoASlt ACCESS p_OpsTravLifLDGoUnloadSlt1;
			p_diGoBSlt ACCESS p_OpsTravLifLDGoUnloadSlt2;
			p_diGoCSlt ACCESS p_OpsTravLifLDGoUnloadSlt3;
			p_diGoDSlt ACCESS p_OpsTravLifLDGoUnloadSlt4;
			p_diMoveVelInUMPS ACCESS p_NtParamLifterAutoSpd;
		ELSE
			p_diGoASlt ACCESS p_OpsLifMagLDGoUnloadSlt1;
			p_diGoBSlt ACCESS p_OpsLifMagLDGoUnloadSlt2;
			p_diGoCSlt ACCESS p_OpsLifMagLDGoUnloadSlt3;
			p_diMoveVelInUMPS ACCESS ADR(diMoveVelInUMPS);
		END_IF
		
	END_IF
	
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF 
			0: //LDModLoadLnA:
				p_diASlt1Pos := p_diLinkASlt1Pos;
				p_diBSlt1Pos := p_diLinkBSlt1Pos;
				p_diCSlt1Pos := p_diLinkCSlt1Pos;
				p_diDSlt1Pos := p_diLinkDSlt1Pos;
				
				p_diASltToSltDist	:= p_diLinkSltToSltDist * -1;
				p_diBSltToSltDist	:= p_diLinkSltToSltDist * -1;
				p_diCSltToSltDist	:= p_diLinkSltToSltDist * -1;
				p_diDSltToSltDist	:= p_diLinkSltToSltDist * -1;
				
			1: //LDModLoadLnB:
				p_diASlt1Pos := p_diLinkASlt1Pos1;
				p_diBSlt1Pos := p_diLinkBSlt1Pos1;
				p_diCSlt1Pos := p_diLinkCSlt1Pos1;
				p_diDSlt1Pos := p_diLinkDSlt1Pos1;
				
				p_diASltToSltDist	:= p_diLinkSltToSltDist1 * -1;
				p_diBSltToSltDist	:= p_diLinkSltToSltDist1 * -1;
				p_diCSltToSltDist	:= p_diLinkSltToSltDist1 * -1;
				p_diDSltToSltDist	:= p_diLinkSltToSltDist1 * -1;
			
			2: //LDModLoadLnAB:
				p_diASlt1Pos := p_diLinkASlt1Pos;
				p_diBSlt1Pos := p_diLinkBSlt1Pos;
				p_diCSlt1Pos := p_diLinkCSlt1Pos1;
				p_diDSlt1Pos := p_diLinkDSlt1Pos1;
			
				p_diASltToSltDist	:= p_diLinkSltToSltDist * -1;
				p_diBSltToSltDist	:= p_diLinkSltToSltDist * -1;
				p_diCSltToSltDist	:= p_diLinkSltToSltDist1 * -1;
				p_diDSltToSltDist	:= p_diLinkSltToSltDist1 * -1;
		END_CASE
	ELSE
		p_diASlt1Pos := p_diLinkASlt1Pos;
		p_diBSlt1Pos := p_diLinkBSlt1Pos;
		p_diCSlt1Pos := p_diLinkCSlt1Pos;
		p_diDSlt1Pos := p_diLinkDSlt1Pos;
	END_IF
	

END_ACTION
