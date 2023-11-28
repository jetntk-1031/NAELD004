
ACTION Act_Main_P0931:
	
	//Display
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2AGVInPosSen1 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2AGVInPosSen2 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 = 0;
	
	tyP0931MagConv2.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= TRUE;
	tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS = 0;
	tyP0931MagConv2.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	tyP0931MagConv2.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0931MagConv2.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnSltLckSen.uiRtStat.0				:= p_tyNtParamCurr.tyDISettings.diSlotLckSenMag2 = 0;
	
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0931MagConv2.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	ELSE
		tyP0931MagConv2.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	END_IF
	
END_ACTION
