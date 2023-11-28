(** 2021-05-14 **)
ACTION Act_Main_P0205:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = LDMagDual THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMc.usiValueIdx	:= 217;
		fUIInRtStatOff(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr12.uiRtStat));
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr4.uiRtStat));
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMc.usiValueIdx	:= 215;
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr12.uiRtStat));
		fUIInRtStatOff(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr4.uiRtStat));
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMc.usiValueIdx	:= 216;
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr12.uiRtStat));
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr3.uiRtStat));
		fUIInRtStatOff(ADR(tyP0205OpsAIV.tyIOMonitor.tyLyr4.uiRtStat));
	END_IF
	
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk1.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk2.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk3.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk4.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	
	tyP0205OpsAIV.tyIOMonitor.tyStringMesName.uiRtStat.0 := NOT(p_tyNtParamCurr.bShowMESName);
	IF p_tyNtParamCurr.bShowFMorMESActive THEN
		tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.usiTxtIdx := 17;//Fleet management active
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.usiTxtIdx := 0;//Mes active
	END_IF
	
	//Siemens 3LD
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring3.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet3.uiRtStat := TRUE;//p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate;

	
END_ACTION
