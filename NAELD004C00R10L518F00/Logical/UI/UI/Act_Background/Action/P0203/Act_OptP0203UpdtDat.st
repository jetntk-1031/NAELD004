
ACTION Act_OptP0203UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue	:= p_sOpsLifMagLDStepTxt;
		ELSE
			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvLD2StepTxt;
		END_IF
		
	END_IF
	
	//Mode
	tyP0203OpsMag2.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0203OpsMag2.tyOps.tyNumWidth.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0203OpsMag2.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0203OpsMag2.tyOps.tyNumWidth.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0203OpsMag2.tyOps.tyNumWidth2.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		IF p_tyNtParamCurr.bProjAutoRcpPrep AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag2MinSlt;
			tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag2MaxSlt;
			tyP0203OpsMag2.tyOps.tyNumPitch.diValue				:= p_diLinkAutoRcpMag2Pitch;
			tyP0203OpsMag2.tyOps.tyStringProdNm.sValue			:= p_tyAutoRcpMagRcp[2].sWorkOrderId;
		ELSE
			tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
			tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
			tyP0203OpsMag2.tyOps.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp2.diPitch;
			tyP0203OpsMag2.tyOps.tyStringProdNm.sValue			:= p_tyProdRcpCurrRcp2.sRcpNm;
		END_IF
		tyP0203OpsMag2.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		//Magazine Info
		tyP0203OpsMag2.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	ELSE
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			0,2:
				tyP0203OpsMag2.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
				tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
				tyP0203OpsMag2.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0203OpsMag2.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
				//Magazine Info
				tyP0203OpsMag2.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
			1:
				
				tyP0203OpsMag2.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
				tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
				tyP0203OpsMag2.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0203OpsMag2.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
				//Magazine Info
				tyP0203OpsMag2.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp1.sRcpNm;
		END_CASE
	END_IF
	
	//Magazine Info
//	tyP0203OpsMag2.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer2MagPresent = TRUE THEN
		tyP0203OpsMag2.tyOps.tyNumMag2AvlQty.diValue	:= p_tyBuffer2BffrStat.diTtlGdBrd + p_tyBuffer2BffrStat.diTtlBadBrd;
		tyP0203OpsMag2.tyOps.tyNumMag2TtlSlt.diValue	:= p_tyBuffer2BffrStat.diTtlBrdCap;
	ELSE
		tyP0203OpsMag2.tyOps.tyNumMag2AvlQty.diValue	:= 0;
		tyP0203OpsMag2.tyOps.tyNumMag2TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer2MagPresent = TRUE THEN
		
		IF p_tyBuffer2BffrStat.bBffrFull = TRUE THEN
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 2;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 0;
		ELSIF p_tyBuffer2BffrStat.bBffrMty = TRUE THEN
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 1;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 1;
		ELSE
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 3;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 0;
		tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 1;
	END_IF

	//Product Recipe 254
	tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0203OpsMag2.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0203OpsMag2.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0203OpsMag2.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
END_ACTION
