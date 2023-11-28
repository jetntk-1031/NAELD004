
ACTION Act_Main_P0800:
	
	//Display
	tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		tyP0800MagInfo.tyMagInfo4.tyLyr.uiRtStat.0	:= TRUE;
		
	END_IF
	
	
	tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;

	tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
END_ACTION
