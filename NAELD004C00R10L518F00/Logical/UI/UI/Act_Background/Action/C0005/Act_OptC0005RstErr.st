
ACTION Act_OptC0005RstErr:
	
	//Control
	IF tyCommon.tyMain.tyBtnReset.bRtCompl = TRUE THEN
		eRstErrAct	:= RstErrActRun;
		IF NOT p_tyDI.bCurtainSafetySig2 THEN
			bSafetyCurtainReset := TRUE;//Curtain reset button
		END_IF
		
//		fbCurtainRstDly(IN:= TRUE);

		IF p_eRstErrStat = RstErrActRun AND p_eRstErrStatus =  Done THEN
			eRstErrAct	:= RstErrActIdle;
			
			tyCommon.tyMain.tyBtnReset.bRtCompl	:= FALSE;
			
			tyP0003MMenu.tyMMenuBtn.tyBtnReset.bRtCompl := FALSE;
		END_IF	

	END_IF
	
	//Mask
	IF p_bAlarmErr = TRUE OR p_bAlarmWarning = TRUE OR p_tyDI.bSafetyRlySig = FALSE THEN
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnReset.uiMaskRtStat));	
		
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiRtStat));
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiMaskRtStat));
		
	ELSE
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnReset.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop.uiRtStat));
	END_IF
	
	//Curtain Reset delay
//	fbCurtainRstDly;
//	IF fbCurtainRstDly.Q AND bSafetyCurtainReset THEN
//		IF (p_eRstErrStat = RstErrActRun AND p_eRstErrStatus =  Done) OR p_eRstErrStat = RstErrActIdle THEN
//			fbCurtainRstDly(IN:= FALSE);
//			bSafetyCurtainReset := FALSE;
//		END_IF
//	END_IF
	IF bSafetyCurtainReset THEN
		fbCurtainRstDly(IN:=TRUE);
		
		IF fbCurtainRstDly.Q THEN
			fbCurtainRstDly(IN:= FALSE);
			bSafetyCurtainReset := FALSE;
		END_IF
	END_IF
END_ACTION
