(** 2018-12-21 **)
ACTION Act_Main_P0201:
	
	//Machine Bitmap //def70
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN //AT&S
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 441-70;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN //clarion
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 471-70;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 200;//270
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 398-70;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 361-70;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 7;
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
		
	ELSE
		tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 0;
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
	END_IF

	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
	END_IF
		//Display
	tyP0201OpsTravLifter.tyOps.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDSBB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bProjInletShutPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.bProjShutter2Prep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl2.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.bProjShutter3Prep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl3.uiRtStat));
	END_IF
	
	
	IF p_tyNtParamCurr.bProjOutletShutPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.bProjOutShutter2Prep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl2.uiRtStat));
	END_IF
	
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	ELSE
		tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
	END_IF
	
	//Motorised puller
	tyP0201OpsTravLifter.tyOps.tyNumPshrOffset.uiRtStat := NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtSpd.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtTorq.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0201OpsTravLifter.tyParam.tyNumPshrOffset.uiRtStat := NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtSpd.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtTorq.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;

	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPullerExtRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerExtRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPullerRetRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRetRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPullerRotHmRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRotCylHmRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPullerRotRmRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRotCylRmRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvLftSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvLftSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvRgtSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvRgtSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterTmBeltSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterSafetyLmtSw1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterSafetyLmtSw2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diInShutterOpenRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diInShutterCloseRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterOpenRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterCloseRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.uiRtStat));
	END_IF
		
	IF p_tyNtParamCurr.tyDISettings.diPullerAntiJam = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnAntiJamSen.uiRtStat));
	END_IF
	tyP0201OpsTravLifter.tyIOMonitor.tyBtnMagWidthChk.uiRtStat := p_tyNtParamCurr.tyDISettings.diMagWidthChkSen =0;
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	ELSE
		IF p_tyNtParamCurr.eTLBuzMode = TLBuzModSiemens_2Colour THEN
			tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 333-253; //253 amber
		END_IF
	END_IF

	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF

	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diPullerExtCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerExtCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diPullerRetCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRetCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diRotPullerCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnRotPullerCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diInShutterOpenCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diInShutterCloseCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterOpenCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diPullConvMtrOn = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerConvMtrOn.uiRtStat));
	END_IF
	
	tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvClrSen.uiRtStat := 	p_tyNtParamCurr.tyDISettings.diConvClrSen =0;
	tyP0201OpsTravLifter.tyIOMonitor.tyBtnUnlockSigDS.uiRtStat := 	p_tyNtParamCurr.tyDISettings.diDSUnlockCoverSig =0;
	tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetySigDS.uiRtStat := 	p_tyNtParamCurr.tyDISettings.diDSSafetySig =0;
	tyP0201OpsTravLifter.tyIOMonitor.tyBtnSftySglToUSDS.uiRtStat := 	p_tyNtParamCurr.tyDOSettings.diMcSafetySigToDS =0;

//	IF p_tyNtParamCurr.bLFProdWidth2Prep THEN
//		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth.uiRtStat));
//	END_IF
//	
//	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
//		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyNumWidth.uiRtStat));
//	END_IF
	
END_ACTION
