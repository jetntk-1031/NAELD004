(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF 
			0: //LDModLoadLnA:
				p_diAPos := p_diLinkAPos;
				p_diBPos := p_diLinkBPos;
				p_diCPos := p_diLinkCPos;
				p_diGPos := p_diLinkGPos;
				
			1: //LDModLoadLnB:
				p_diAPos := p_diLinkAPos1;
				p_diBPos := p_diLinkBPos1;
				p_diCPos := p_diLinkCPos1;
				p_diGPos := p_diLinkGPos1;
			
			2: //LDModLoadLnAB:
				p_diAPos := p_diLinkAPos;
				p_diBPos := p_diLinkBPos;
				p_diCPos := p_diLinkCPos1;
				p_diGPos := p_diLinkGPos1;
		END_CASE
	ELSE
		IF p_bLinkTravGotoChkPt THEN // To Check the Magazine Width - Offset of Traverser
			p_diAPos := p_diLinkAPos + p_diLinkTravGotoChkPtDist1;
			p_diBPos := p_diLinkBPos + p_diLinkTravGotoChkPtDist2;
			p_diCPos := p_diLinkCPos + p_diLinkTravGotoChkPtDist3;
		ELSE
			p_diAPos := p_diLinkAPos;
			p_diBPos := p_diLinkBPos;
			p_diCPos := p_diLinkCPos;
			p_diGPos := p_diLinkGPos;
		END_IF
	END_IF
		
	IF p_bManual = TRUE THEN
		p_diMoveVelInUMPS ACCESS p_UIMnlTravNomSpd;
	ELSE
		p_diMoveVelInUMPS ACCESS p_NtParamTravAutoSpd;
	END_IF
	
	IF p_bLinkNtParamProjRotCylPrep	= FALSE THEN
		IF (p_bProjInletShutPrep = TRUE) AND p_bLinkOpsTravLifULInDSPos = FALSE THEN 
			IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor1 := TRUE;
			ELSE
				p_bInterruptSensor1 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor1 := FALSE;	
		END_IF
		
		IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE AND p_bLinkOpsTravLifULInDSPos = FALSE THEN
			IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor2 := TRUE;
			ELSE
				p_bInterruptSensor2 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor2 := FALSE;	
		END_IF
	ELSE
		IF (p_bProjInletShutPrep = TRUE) AND p_bLinkOpsTravLifULInDSPos = FALSE AND p_bLinkOpsTravLifUSMagWidthChk = FALSE THEN 
			IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
					p_bInterruptSensor1 := TRUE;
			ELSE
					p_bInterruptSensor1 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor1 := FALSE;	
		END_IF
		
		IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE AND p_bLinkOpsTravLifULInDSPos = FALSE 
			AND p_bLinkProjLifterMagPlatform = FALSE // rotate w/ platform
			THEN
			IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
				THEN
				p_bInterruptSensor2 := TRUE;
			ELSE
				p_bInterruptSensor2 := FALSE;	
			END_IF
		ELSE
			p_bInterruptSensor2 := FALSE;	
		END_IF
	END_IF
		
	p_bInterruptSensor3 := p_bDIConvClrSen OR p_bDIConvLftSen;//p_bLinkSafetyRelay = FALSE;
	
	p_bInterruptSensor4 := p_bPullerRetSen = FALSE OR p_bPullerExtSen OR p_bPullerRotHmRS = FALSE;
	
	IF p_bLinkNtParamProjDsFixToFixRail THEN
		p_diEPos := p_diDPos + p_diLinkFixtoFixPosIn - p_tyProdRcpCurrRcp.diWidthInUM + p_diLaneBOffset;
	ELSE
		p_diEPos := p_diLinkMcParamTravPosB;
	END_IF
	
END_ACTION
