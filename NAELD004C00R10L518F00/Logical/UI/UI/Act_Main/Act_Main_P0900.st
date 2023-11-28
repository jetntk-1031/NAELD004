
ACTION Act_Main_P0900:
	
	//Display
	tyP0900GenIn.tyGenIn2.tyLyr.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagOrientChkSenPrep;
	
	tyP0900GenIn.tyGenIn1.tyBtnLifterTimingBeltSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen = 0;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1 = 0;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2 = 0;
	tyP0900GenIn.tyGenIn1.tyBtnMag3PresentSen.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0900GenIn.tyGenIn1.tyBtnMag4PresentSen.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0900GenIn.tyGenIn1.tyBtnCurtainSafetyRly.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diCurtainSafetySig2 = 0;
	tyP0900GenIn.tyGenIn1.tyBtnMagWidthChk.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMagWidthChkSen = 0;

	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple);
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple);
	
	tyP0900GenIn.tyGenIn2.tyBtnMag4OrientationChkSen1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0900GenIn.tyGenIn2.tyBtnMag4OrientationChkSen2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen2.uiRtStat	  := p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0;

END_ACTION
