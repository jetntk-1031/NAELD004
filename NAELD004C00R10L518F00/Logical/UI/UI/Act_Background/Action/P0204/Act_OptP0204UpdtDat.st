
ACTION Act_OptP0204UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0204OpsMag3.tyOps.tyStringMcStat.sValue	:= p_sOpsLifMagLDStepTxt;
		ELSE
			tyP0204OpsMag3.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvLD3StepTxt;
		END_IF
		
	END_IF
	
	//Mode
	tyP0204OpsMag3.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0204OpsMag3.tyOps.tyNumWidth.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0204OpsMag3.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0204OpsMag3.tyOps.tyNumWidth.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0204OpsMag3.tyOps.tyNumWidth2.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		IF p_tyNtParamCurr.bProjAutoRcpPrep AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0204OpsMag3.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag3MinSlt;
			tyP0204OpsMag3.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag3MaxSlt;
			tyP0204OpsMag3.tyOps.tyNumPitch.diValue				:= p_diLinkAutoRcpMag3Pitch;
			tyP0204OpsMag3.tyOps.tyStringProdNm.sValue			:= p_tyAutoRcpMagRcp[3].sWorkOrderId;
		ELSE
			tyP0204OpsMag3.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
			tyP0204OpsMag3.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
			tyP0204OpsMag3.tyOps.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp2.diPitch;
			tyP0204OpsMag3.tyOps.tyStringProdNm.sValue			:= p_tyProdRcpCurrRcp2.sRcpNm;
		END_IF
		tyP0204OpsMag3.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		//Magazine Info
		tyP0204OpsMag3.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	ELSE
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			0:
				tyP0204OpsMag3.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0204OpsMag3.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
				tyP0204OpsMag3.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
				tyP0204OpsMag3.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0204OpsMag3.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
				//Magazine Info
				tyP0204OpsMag3.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
		
			1,2:
				
				tyP0204OpsMag3.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0204OpsMag3.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
				tyP0204OpsMag3.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
				tyP0204OpsMag3.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0204OpsMag3.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
				//Magazine Info
				tyP0204OpsMag3.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp1.sRcpNm;
		END_CASE
	END_IF
	
	//Magazine Info
//	tyP0204OpsMag3.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer3MagPresent = TRUE THEN
		tyP0204OpsMag3.tyOps.tyNumMag3AvlQty.diValue	:= p_tyBuffer3BffrStat.diTtlGdBrd + p_tyBuffer3BffrStat.diTtlBadBrd;
		tyP0204OpsMag3.tyOps.tyNumMag3TtlSlt.diValue	:= p_tyBuffer3BffrStat.diTtlBrdCap;
	ELSE
		tyP0204OpsMag3.tyOps.tyNumMag3AvlQty.diValue	:= 0;
		tyP0204OpsMag3.tyOps.tyNumMag3TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer3MagPresent = TRUE THEN
		
		IF p_tyBuffer3BffrStat.bBffrFull = TRUE THEN
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiValueIdx := 2;
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiColor	   := 0;
		ELSIF p_tyBuffer3BffrStat.bBffrMty = TRUE THEN
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiValueIdx := 1;
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiColor	   := 1;
		ELSE
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiValueIdx := 3;
			tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiValueIdx := 0;
		tyP0204OpsMag3.tyOps.tyTxtMag3Stat.usiColor	   := 1;
	END_IF
	
	//Product Recipe 254
	tyP0204OpsMag3.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0204OpsMag3.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0204OpsMag3.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0204OpsMag3.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0204OpsMag3.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
END_ACTION
