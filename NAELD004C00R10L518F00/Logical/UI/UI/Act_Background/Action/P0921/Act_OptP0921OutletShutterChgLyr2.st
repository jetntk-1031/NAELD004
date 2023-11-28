
ACTION Act_OptP0921OutletShutterChgLyr2:
	
//	tyP0921InletNOutletShutter.tyOutletShutterFB2.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutShutter2Prep);
	
	IF p_tyNtParamCurr.bProjOutShutter2Prep THEN
		IF	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bRtCompl THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bRtCompl := FALSE;
			
			IF tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2.tyLyr.uiRtStat));
			END_IF	
			
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2.tyLyr.uiRtStat));
		
	END_IF	

END_ACTION
