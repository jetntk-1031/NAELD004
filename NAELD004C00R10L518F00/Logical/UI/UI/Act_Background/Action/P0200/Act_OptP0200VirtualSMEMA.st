
ACTION Act_OptP0200VSMEMA:
	
	//Downstream Virtual SMEMA A
	//Enable / Disable
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.bRtCompl	:= FALSE;
			
			IF tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.bValue = TRUE THEN
				bVSMEMADSAEn	:= TRUE;
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSAVSMEMA.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyDSAVSMEMA.tyBtnNom.bValue	:= FALSE;
				
				bVSMEMADSAEn	:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.bRtCompl	:= FALSE;
			
			IF tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.bValue = TRUE THEN
				bVSMEMADSAEn	:= TRUE;
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSAVSMEMA1.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyDSAVSMEMA1.tyBtnNom.bValue	:= FALSE;
				
				bVSMEMADSAEn	:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA1.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
	//Control
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyDSAVSMEMA.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSAVSMEMA.tyBtnNom.bRtCompl	:= FALSE;
		END_IF
	ELSE
		IF tyP0200OpsGen.tyDSAVSMEMA1.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSAVSMEMA1.tyBtnNom.bRtCompl	:= FALSE;
		END_IF
	END_IF
	
	//Update
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		bVSMEMADSBA	:= tyP0200OpsGen.tyDSAVSMEMA.tyBtnNom.bValue;
	ELSE
		bVSMEMADSBA	:= tyP0200OpsGen.tyDSAVSMEMA1.tyBtnNom.bValue;
	END_IF
	
	//Downstream Virtual SMEMA B
	//Enable / Disable
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.bRtCompl	:= FALSE;
			
			IF tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.bValue = TRUE THEN
				bVSMEMADSBEn	:= TRUE;
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSBVSMEMA.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyDSBVSMEMA.tyBtnNom.bValue	:= FALSE;
				
				bVSMEMADSBEn	:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.bRtCompl	:= FALSE;
			
			IF tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.bValue = TRUE THEN
				bVSMEMADSBEn	:= TRUE;
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSBVSMEMA1.tyLyr.uiRtStat));
			ELSE
				tyP0200OpsGen.tyDSBVSMEMA1.tyBtnNom.bValue	:= FALSE;
				
				bVSMEMADSBEn	:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA1.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
	//Control
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF tyP0200OpsGen.tyDSBVSMEMA.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSBVSMEMA.tyBtnNom.bRtCompl	:= FALSE;
		END_IF
	ELSE
		IF tyP0200OpsGen.tyDSBVSMEMA1.tyBtnNom.bRtCompl = TRUE THEN
			tyP0200OpsGen.tyDSBVSMEMA1.tyBtnNom.bRtCompl	:= FALSE;
		END_IF
	END_IF
	
	
	//Update
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		bVSMEMADSBB	:= tyP0200OpsGen.tyDSBVSMEMA.tyBtnNom.bValue;
	ELSE
		bVSMEMADSBB	:= tyP0200OpsGen.tyDSBVSMEMA1.tyBtnNom.bValue;
	END_IF
	

END_ACTION
