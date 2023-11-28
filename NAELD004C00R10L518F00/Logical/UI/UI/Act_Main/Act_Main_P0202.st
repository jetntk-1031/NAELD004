(** 2018-12-21 **)
ACTION Act_Main_P0202:
	
	//Machine Bitmap//71

	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN //AT&S
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 442-71;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN //clarion (RL)
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 472-71;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 399-71;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform =FALSE AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 362-71;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 7;
	ELSE
		tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	//AIV
	tyP0202OpsMag1.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0202OpsMag1.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0202OpsMag1.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);

	//Motorized puller
	tyP0202OpsMag1.tyParam.tyNumPshrOffset.uiRtStat := NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0202OpsMag1.tyParam.tyNumMtrPshrExtSpd.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0202OpsMag1.tyParam.tyNumMtrPshrExtTorq.uiRtStat := NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;

	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDSBB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	tyP0202OpsMag1.tyOps.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0202OpsMag1.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	ELSE
		tyP0202OpsMag1.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diDSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1AGVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1AGVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen2.uiRtStat));
	END_IF
	
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagDetSen.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1FixedSideDetect = 0;
	tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyExtRS.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diTrolleyExtRS1 = 0;
	tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyPresentSen.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diTrolleyPreSen1 = 0;
	tyP0202OpsMag1.tyIOMonitor.tyBtnSltLckSen.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diSlotLckSenMag1 = 0;

	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	ELSE
		IF p_tyNtParamCurr.eTLBuzMode = TLBuzModSiemens_2Colour THEN
			tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 333-253; //253 amber
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diDBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnDBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1FixedClampOpenCtrl = 0 THEN //KS
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1RemoteClampOpenCtrl = 0 THEN //KS
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.uiRtStat));
	END_IF
		
	IF p_tyNtParamCurr.tyDOSettings.diMag1ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrOut.uiRtStat));
	END_IF
	tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyExtCtrl.uiRtStat.0			:= p_tyNtParamCurr.tyDOSettings.diTrolleyLckCtrl1 = 0;

	tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0202OpsMag1.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	

//	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN 
//		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyNumWidth2.uiRtStat));	
//		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyNumWidth.uiRtStat));	
//	ELSE
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyNumWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyNumWidth.uiRtStat));
//	END_IF
	
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	
END_ACTION
