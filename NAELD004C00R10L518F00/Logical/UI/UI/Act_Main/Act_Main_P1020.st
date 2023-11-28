
ACTION Act_Main_P1020:
	
	//Display
	tyP1020McSetNavi.tyNavi.tyBtnVCommSet.uiRtStat.0	:= NOT(p_tyNtParamCurr.bLFPrep OR p_tyNtParamCurr.bLCSLFPrep OR p_tyNtParamCurr.bLCSReqRcpPrep OR p_tyNtParamCurr.bLCSLiveDatPrep);
	tyP1020McSetNavi.tyNavi.tyBtnAIVCommSet.uiRtStat.0	:= TRUE;
	
	tyP1020McSetNavi.tyNavi.tyBtnUSBSet.uiRtStat.0		:= NOT(p_tyNtParamCurr.bUSBScannerPrep);
	tyP1020McSetNavi.tyNavi.tyBtnRS232Set.uiRtStat.0	:= NOT(p_tyNtParamCurr.bRS232ScannerPrep);
	
	//new for Hermes 1.3
	IF (p_tyNtParamCurr.bHermesSvyPrep AND p_tyMcParamCurr.bHermesSvyEn) 
		OR p_tyNtParamCurr.bLFPrep OR p_tyNtParamCurr.bLCSLFPrep OR p_tyNtParamCurr.bLCSReqRcpPrep OR p_tyNtParamCurr.bLCSLiveDatPrep 
		OR p_tyNtParamCurr.bLCSManageRcpPrep OR p_tyNtParamCurr.bLFUsrSetPrep OR p_tyNtParamCurr.bLFUsrSetPrep 
		(*OR p_tyNtParamCurr.bUSWidthChkPrep*) OR p_tyNtParamCurr.bDSWidthChkPrep THEN
		
		fUIInRtStatOff(ADR(tyP1020McSetNavi.tyNavi.tyBtnVCommSet.uiRtStat)); 
	ELSE 
		fUIInRtStatHide(ADR(tyP1020McSetNavi.tyNavi.tyBtnVCommSet.uiRtStat));
	END_IF
END_ACTION
