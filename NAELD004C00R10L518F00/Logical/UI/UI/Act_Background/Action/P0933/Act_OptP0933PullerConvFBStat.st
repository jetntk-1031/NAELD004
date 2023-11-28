
ACTION Act_OptP0933PullerConvFBStat:
	
//	IF p_tyNtParamCurr.bProjPullerRotCylPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
//		tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sPullConvStatTxt;
//	ELSIF p_tyNtParamCurr.bProjPullerRotCylPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
//		IF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnRet.bRtCompl THEN
//			tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sPullerStatTxt;
//		ELSE
//			tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sPullConvStatTxt;
//		END_IF
//	ELSIF p_tyNtParamCurr.bProjPullerRotCylPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
//		IF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnRet.bRtCompl THEN
//			tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sMtrPshrStatTxt;
//		ELSE
//			tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sPullConvStatTxt;
//		END_IF
//	END_IF
	
	tyP0933PullConv.tyFB.tyStringStat.sValue   := p_sPullConvStatTxt;
	
END_ACTION

