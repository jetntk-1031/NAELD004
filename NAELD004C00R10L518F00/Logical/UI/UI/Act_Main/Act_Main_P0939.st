
ACTION Act_Main_P0939:
	
	//Display
	tyP0939MagConv4.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag4AGVInPosSen1 = 0;
	tyP0939MagConv4.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag4AGVInPosSen2 = 0;
	tyP0939MagConv4.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag4OrientChkSen1 = 0;
	tyP0939MagConv4.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag4OrientChkSen2 = 0;
	
	tyP0939MagConv4.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= TRUE;
	tyP0939MagConv4.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMag4RemoteUnclampRS = 0;
	tyP0939MagConv4.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	tyP0939MagConv4.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0939MagConv4.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0939MagConv4.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0939MagConv4.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0939MagConv4.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0939MagConv4.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0939MagConv4.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0939MagConv4.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	ELSE
		tyP0939MagConv4.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0939MagConv4.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	END_IF
	
END_ACTION
