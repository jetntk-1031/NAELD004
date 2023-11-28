(** 2021-05-31 **)
ACTION Act_Main_P0204:
	
	//Machine Bitmap//73

	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 200;//273
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 401-73;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform =FALSE AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 364-73;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 7;
	ELSE
		tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	//AIV
	tyP0204OpsMag3.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0204OpsMag3.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0204OpsMag3.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);

	//Motorized puller
	tyP0204OpsMag3.tyParam.tyNumPshrOffset.uiRtStat := NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0204OpsMag3.tyParam.tyNumMtrPshrExtSpd.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0204OpsMag3.tyParam.tyNumMtrPshrExtTorq.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnDSBB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	tyP0204OpsMag3.tyOps.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0204OpsMag3.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	ELSE
		tyP0204OpsMag3.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnDSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnDSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3AGVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3AGVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen2.uiRtStat));
	END_IF
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagDetSen.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag3FixedSideDetect = 0;


	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	ELSE
		IF p_tyNtParamCurr.eTLBuzMode = TLBuzModSiemens_2Colour THEN
			tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 333-253; //253 amber
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrOut.uiRtStat));
	END_IF
	
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0204OpsMag3.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
//	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
//		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyNumWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyNumWidth.uiRtStat));
//	END_IF
	
	
	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	
	
END_ACTION
