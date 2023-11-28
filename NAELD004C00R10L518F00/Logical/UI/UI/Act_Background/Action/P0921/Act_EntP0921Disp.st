
ACTION Act_EntP0921Disp:
	
	
	//Access Address
	p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskHide);
	
	IF p_tyNtParamCurr.tyDISettings.diInShutterOpenRS2 > 0 AND p_tyNtParamCurr.tyDISettings.diInShutterOpenRS3 > 0 THEN
		p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviLyr1);
	ELSIF p_tyNtParamCurr.bProjOutShutter2Prep THEN
		p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviOutlet21);
		tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat := FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat := FALSE;
	ELSE
		p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviBack);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0921InletNOutletShutter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
	p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
	p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
	
	p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
	p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
	p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
	p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);
	
	//Display
	tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0	:= TRUE;//NOT(p_tyNtParamCurr.bProjOutletShutPrep AND p_tyMcParamCurr.bOutShutterDis);
	
	//Display
//	tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
//	tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
//	tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
//	
//	tyP0921InletNOutletShutter.tyOutletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);
//	tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
//	tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);
	
END_ACTION
