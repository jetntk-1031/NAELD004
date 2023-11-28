
ACTION Act_Main_P0932:
	
	//Display
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag3AGVInPosSen1 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag3AGVInPosSen2 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 = 0;
	
	tyP0932MagConv3.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= TRUE;
	tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS = 0;
	tyP0932MagConv3.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	tyP0932MagConv3.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0932MagConv3.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0932MagConv3.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	ELSE
		tyP0932MagConv3.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	END_IF
	
END_ACTION
