
ACTION Act_OptP0924TrolleyLckChgLyr:
	
	IF tyP0924TrolleyLck.tyCom.tyBtnSwitch.bRtCompl THEN
		tyP0924TrolleyLck.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
		
		IF tyP0924TrolleyLck.tyCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0924TrolleyLck.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0924TrolleyLck.tyFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0924TrolleyLck.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0924TrolleyLck.tyFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
		
END_ACTION
