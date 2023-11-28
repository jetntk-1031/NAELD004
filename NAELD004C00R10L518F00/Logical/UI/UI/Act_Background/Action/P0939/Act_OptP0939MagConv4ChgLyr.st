
ACTION Act_OptP0939MagConv4ChgLyr:
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0939MagConv4.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0939MagConv4.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0939MagConv4.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0939MagConv4.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
