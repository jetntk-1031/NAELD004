
ACTION Act_OptP0921InletShutterChgLyr:
	
//	tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	
	IF p_tyNtParamCurr.bProjInletShutPrep THEN
		IF tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bRtCompl THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bRtCompl := FALSE;
			
			IF tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
			END_IF	
			
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
	
	END_IF	

	
END_ACTION
