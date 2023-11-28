
ACTION Act_OptP1023ShowLyr:
	
	//Downstream A
	IF tyP1023McSetHComm.tyDSSelA.tyLyr.uiRtStat.0 = FALSE THEN	
		
		IF tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyDSSMEMAA.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSHermesA.tyLyr.uiRtStat));
		
			tyP1023McSetHComm.tyDSSMEMAA.tyBtnGdSig.uiRtStat.0	:= NOT(tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx = 2);
			
		ELSIF tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue = TRUE THEN	
			
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSSMEMAA.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyDSHermesA.tyLyr.uiRtStat));
			
			//Mask
			tyP1023McSetHComm.tyDSHermesA.tyBitmapMask.uiMaskRtStat.0	:= NOT((p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE) OR (p_tyNtParamCurr.bHermesSvyPrep = TRUE AND p_tyMcParamCurr.bHermesSvyEn = TRUE)); //new for Hermes 1.3 //True = Hide, False = Show
		END_IF
		
	ELSE
	
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSSMEMAA.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSHermesA.tyLyr.uiRtStat));
	
	END_IF
	
	//Downstream B
	IF tyP1023McSetHComm.tyDSSelB.tyLyr.uiRtStat.0 = FALSE THEN	
		
		IF tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyDSSMEMAB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSHermesB.tyLyr.uiRtStat));
		
			tyP1023McSetHComm.tyDSSMEMAB.tyBtnGdSig.uiRtStat.0	:= NOT(tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx = 2);
			
		ELSIF tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue = TRUE THEN	
			
			fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSSMEMAB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP1023McSetHComm.tyDSHermesB.tyLyr.uiRtStat));
			
			//Mask
			tyP1023McSetHComm.tyDSHermesB.tyBitmapMask.uiMaskRtStat.0	:= NOT((p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE) OR (p_tyNtParamCurr.bHermesSvyPrep = TRUE AND p_tyMcParamCurr.bHermesSvyEn = TRUE)); //new for Hermes 1.3 //True = Hide, False = Show
		END_IF
		
	ELSE
	
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSSMEMAB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP1023McSetHComm.tyDSHermesB.tyLyr.uiRtStat));
	
	END_IF
		
END_ACTION
