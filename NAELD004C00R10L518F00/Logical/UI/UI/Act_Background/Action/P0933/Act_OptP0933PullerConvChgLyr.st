
ACTION Act_OptP0933PullerConvChgLyr:
	
	IF tyP0933PullConv.tyCom.tyBtnSwitch.bRtCompl THEN
		tyP0933PullConv.tyCom.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
	//Mask
	IF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyFB.tyBtnStop.bRtCompl
		OR tyP0933PullConv.tyDC.tyBtnAlarmRst.bValue OR tyP0933PullConv.tyDC.tyBtnBrake.bValue OR tyP0933PullConv.tyDC.tyBtnExt.bValue OR tyP0933PullConv.tyDC.tyBtnRet.bValue OR tyP0933PullConv.tyDC.tyBtnSigOn.bValue OR tyP0933PullConv.tyDC.tyBtnSpdBinBit0.bValue OR tyP0933PullConv.tyDC.tyBtnSpdBinBit1.bValue OR tyP0933PullConv.tyDC.tyBtnSpdBinBit2.bValue THEN
		
		fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
	END_IF
	
	
END_ACTION
