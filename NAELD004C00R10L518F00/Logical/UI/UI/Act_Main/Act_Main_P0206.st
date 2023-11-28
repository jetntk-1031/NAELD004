(** 2018-12-21 **)
ACTION Act_Main_P0206:
	
	//Machine Bitmap
	tyP0206OpsMag4.tyOps.tyBitmapMc.usiValueIdx	:= 0;

	
	//AIV
	tyP0206OpsMag4.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0206OpsMag4.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0206OpsMag4.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0206OpsMag4.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDSBB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	tyP0206OpsMag4.tyOps.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0206OpsMag4.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	ELSE
		tyP0206OpsMag4.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen4 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen4 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4AGVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4AGVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag4OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4OrientationChkSen2.uiRtStat));
	END_IF
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag4FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag4RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag4ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag4ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvMtrOut.uiRtStat));
	END_IF
	
	tyP0206OpsMag4.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0206OpsMag4.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0206OpsMag4.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0206OpsMag4.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0206OpsMag4.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0206OpsMag4.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
//	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
//		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyNumWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyOps.tyNumWidth.uiRtStat));
//	END_IF
	
	
	tyP0206OpsMag4.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0206OpsMag4.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0206OpsMag4.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	
	
END_ACTION
