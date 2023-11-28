(** 2018-12-21 **)
ACTION Act_Main_P0203:
	
	//Machine Bitmap//72
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN //AT&S
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 443-72;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN //clarion (RL)
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 473-72;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 400-72;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform =FALSE AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 363-72;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 7;
	ELSE
		tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	//AIV
	tyP0203OpsMag2.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0203OpsMag2.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0203OpsMag2.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	
	//Motorized puller
	tyP0203OpsMag2.tyParam.tyNumPshrOffset.uiRtStat := NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtSpd.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtTorq.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;

	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDSBB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	tyP0203OpsMag2.tyOps.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	ELSE
		tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnDSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2AGVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2AGVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen2.uiRtStat));
	END_IF
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagDetSen.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2FixedSideDetect = 0;
	tyP0203OpsMag2.tyIOMonitor.tyBtnTrllyExtRS.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diTrolleyExtRS2 = 0;
	tyP0203OpsMag2.tyIOMonitor.tyBtnTrllyPresentSen.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diTrolleyPreSen2 = 0;
	tyP0203OpsMag2.tyIOMonitor.tyBtnSltLckSen.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diSlotLckSenMag2 = 0;


	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	ELSE
		IF p_tyNtParamCurr.eTLBuzMode = TLBuzModSiemens_2Colour THEN
			tyP0203OpsMag2.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 333-253; //253 amber
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLRed.uiRtStat));
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
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrOut.uiRtStat));
	END_IF
	tyP0203OpsMag2.tyIOMonitor.tyBtnTrllyExtCtrl.uiRtStat.0			:= p_tyNtParamCurr.tyDOSettings.diTrolleyLckCtrl2 = 0;

	tyP0203OpsMag2.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0203OpsMag2.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
//	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
//		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyNumWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyNumWidth.uiRtStat));
//	END_IF
	
	
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	
END_ACTION
