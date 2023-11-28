
ACTION Act_OptP0921InletShutterChgLyr3:
	
//	tyP0921InletNOutletShutter.tyInletShutterFB2.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	
	IF p_tyNtParamCurr.bProjInletShutPrep THEN
		IF tyP0921InletNOutletShutter.tyInletShutterCom3.tyBtnSwitch.bRtCompl THEN
			tyP0921InletNOutletShutter.tyInletShutterCom3.tyBtnSwitch.bRtCompl := FALSE;
			
			IF tyP0921InletNOutletShutter.tyInletShutterCom3.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterDC3.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterFB3.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC3.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterFB3.tyLyr.uiRtStat));
			END_IF	
			
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC3.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterFB3.tyLyr.uiRtStat));
	
	END_IF	

	
END_ACTION
