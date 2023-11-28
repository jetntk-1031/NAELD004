(** 2018-12-11 **)
ACTION Act_Link:
	//Standby
	p_bGotoStandby :=  p_bLinkDIUnlockSafetySig;

	p_bPneuUnclmpFBDone := p_bOpsMagConvLD1UnclmpDone OR p_bOpsMagConvLD2UnclmpDone OR p_bOpsMagConvLD3UnclmpDone;
	p_eLDMod	:= USINT_TO_UDINT(p_usiLinkProdRcpCurrRcpMcMod);
	
//	IF p_bLinkNtParamMagConv1Prep = TRUE THEN
		p_bMagTransferBrd1 ACCESS p_OpsMagConvLD1MagBffrAvl;
//	ELSE
//		p_bMagTransferBrd1 ACCESS p_OpsMagLD1MagBffrAvl;
//	END_IF
	
//	IF p_bLinkNtParamMagConv2Prep =  TRUE THEN
		p_bMagTransferBrd2 ACCESS p_OpsMagConvLD2MagBffrAvl;
//	ELSE
//		p_bMagTransferBrd2 ACCESS p_OpsMagLD2MagBffrAvl;
//	END_IF
	
//	IF p_bLinkNtParamMagConv3Prep = TRUE THEN
		p_bMagTransferBrd3 ACCESS p_OpsMagConvLD3MagBffrAvl;
//	ELSE
//		p_bMagTransferBrd3 ACCESS p_OpsMagLD3MagBffrAvl;
//	END_IF
	
//	IF p_bLinkNtParamMagConv4Prep = TRUE THEN
		p_bMagTransferBrd4 ACCESS p_OpsMagConvLD4MagBffrAvl;
//	ELSE
//		p_bMagTransferBrd4 ACCESS p_OpsMagLD4MagBffrAvl;
//	END_IF
	
	IF bRearLaneMode THEN
		diProdRcpCurrRcpPitch := p_diProdRcpCurrRcpPitchRear;
	ELSIF (p_eNtParamCustomerReq = Siemens AND p_bNtParamAutoRcpPrep AND p_bHermesSvyPrep AND p_bMcParamHermesSvyEn) 
		OR p_eNtParamCustomerReq = We_Fabricate AND p_bMcParamMesRFIDEn THEN
		diProdRcpCurrRcpPitch := p_diAutoRcpTravLifPitch; //autorcp pitch
	ELSE
		diProdRcpCurrRcpPitch := p_diProdRcpCurrRcpPitch;
	END_IF
	
	//Upstream Allow
	//Disable AutoRcp
	IF p_bNtParamAutoRcpPrep AND ((p_bHermesSvyPrep AND p_bMcParamHermesSvyEn) OR (p_eNtParamCustomerReq = We_Fabricate AND p_bMcParamMesRFIDEn)) THEN
		p_bUSAllow := (*p_bUSAllow AND*) p_bAutoRcpTravWidthDiffBlk = FALSE;
	ELSE
		p_bUSAllow	:= p_bLinkFollower1USAllow (*AND p_bLinkUSHermesABlkUS = FALSE AND p_bLinkUSHermesBBlkUS = FALSE*);// AND p_bAutoRcpTravWidthDiffBlk = FALSE;// AND p_diProdRcpCurrRcp1Width = p_diProdRcpCurrRcp2Width;
	END_IF 
	
	diPullingPitchPos := REAL_TO_DINT(40000/DINT_TO_REAL(p_diSltToSltDist));
	
	IF p_bLinkProjLifterMagPlatform = FALSE THEN
		p_eLifStat ACCESS p_LifterBtmStat;
		p_eLifStatus ACCESS p_LifterBtmStatus;
		p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
		p_bLifterAPosDiff ACCESS p_LifterBtmAPosDiff;
		p_bLifterBPosDiff ACCESS p_LifterBtmBPosDiff;
	ELSIF p_bLinkProjLifterMagPlatform AND p_bRun THEN
		p_eLifStat ACCESS ADR(eLifAct);
		p_eLifStatus := Done; //bi-dir
		p_bLifterBtmPosDiff ACCESS ADR(bLifterBtmPosDiff);
		p_bLifterAPosDiff ACCESS ADR(bLifterAPosDiff);
		p_bLifterBPosDiff ACCESS ADR(bLifterBPosDiff);
	END_IF
	
//	IF p_bRun AND p_bLinkDIPullerAntiJamSen = FALSE THEN
//		eStatus		:= Error;
//		udiStatus	:= 10005;
//	END_IF

//	IF (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) 		
//		THEN
//			bBrdOnSen			:= FALSE;
//			eConvAct			:= ConvActIdle;	
//	END_IF
	
//	IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt THEN
//		eInletPneuAct	:= PneuActIdle;
//	END_IF

	
	//Bypass Curtain Sensor PB Pressed
	IF p_bRun THEN
		IF EDGEPOS(p_bRlsMag1 OR p_bRlsMag2 OR p_bRlsMag3 OR p_bEjectMag1 OR p_bEjectMag2 OR p_bEjectMag3) THEN 
			bBypCurtainSenPB := TRUE;
			bBypCurtainSensorPBLED := TRUE;

		ELSIF EDGENEG (p_bCurtainSenPB) THEN  //DI
			IF bBypCurtainSenPB 		= TRUE THEN
				bBypCurtainSenPB		:= FALSE;
				bBypCurtainSensorPBLED	:= FALSE;
				bBypCurtainSenCtrl		:= FALSE; 
			ELSE
				bBypCurtainSenPB 		:= TRUE;
				bBypCurtainSensorPBLED	:= TRUE;
			END_IF
		END_IF
	ELSE
		bBypCurtainSenPB		:= FALSE;
		bBypCurtainSensorPBLED	:= FALSE;
		bBypCurtainSenCtrl		:= FALSE; 
	END_IF
	
	//Run & Initializing Done Bypass the Curtain Sensor
	IF p_bRun AND bOpsInitDone AND bBypCurtainSenPB THEN
		bBypCurtainSenCtrl		:= TRUE;
	ELSE
		bBypCurtainSenCtrl		:= FALSE;
	END_IF
	
	// BypCurtainSensorPBLED 				
	IF  (bBypCurtainSenPB = TRUE) AND (bBypCurtainSenCtrl = TRUE) THEN // OR (p_bMCLD1AGVCommRdy OR p_bMCLD2AGVCommRdy OR p_bMCLD3AGVCommRdy) THEN		// JOHN
		bBypCurtainSensorPBLED := TRUE;					//steady on								
		fbBypCurtainPBLEDBlinkTm(IN := FALSE);																		
	ELSIF (bBypCurtainSenPB = TRUE) AND (bBypCurtainSenCtrl = FALSE) THEN	
		fbBypCurtainPBLEDBlinkTm(IN := TRUE);										
		IF fbBypCurtainPBLEDBlinkTm.Q = TRUE THEN									
			fbBypCurtainPBLEDBlinkTm(IN := FALSE);									
			IF bBypCurtainSensorPBLED = FALSE THEN										
				bBypCurtainSensorPBLED := TRUE;											
			ELSE																
				bBypCurtainSensorPBLED := FALSE;											
			END_IF																
		END_IF																	
	ELSE																		
		bBypCurtainSensorPBLED := FALSE;													
		fbBypCurtainPBLEDBlinkTm(IN := FALSE);										
	END_IF
	
	//Release mag button
	IF p_bRlsMag1 AND eTravLifPosGo = TravLifLDPosUS1 THEN
		a_bRlsMagBtn[1] := TRUE;
	ELSIF p_bRlsMag2 AND eTravLifPosGo = TravLifLDPosUS2 THEN
		a_bRlsMagBtn[2] := TRUE;
	ELSIF p_bRlsMag3 AND eTravLifPosGo = TravLifLDPosUS3 THEN
		a_bRlsMagBtn[3] := TRUE;
	END_IF
	
	//Inlet and outlet sensor trigger at the same time alm
	fb2SenTm(IN:= p_bRightSen = TRUE AND p_bLeftSen= TRUE, PT:= T#500ms);
	IF fb2SenTm.Q = TRUE THEN
		eStatus := Error;
		udiStatus := 10009; //'Inlet and outlet same time sensing error'
	END_IF
END_ACTION
