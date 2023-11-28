
ACTION Act_Main_P0930:
	
	//Display
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1AGVInPosSen1 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1AGVInPosSen2 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0;
	
	
	tyP0930MagConv1.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= TRUE;
	tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS = 0;
	tyP0930MagConv1.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	tyP0930MagConv1.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT (p_tyNtParamCurr.bMagAutoVerifyPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0930MagConv1.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnSltLckSen.uiRtStat.0				:= p_tyNtParamCurr.tyDISettings.diSlotLckSenMag1 = 0;

	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0930MagConv1.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	ELSE
		tyP0930MagConv1.tyCom.tyBtnFixedClampRS.usiTxtIdx:=4;
		tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:=4;
	END_IF
		
END_ACTION
