
ACTION Act_OptP0202UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue	:= p_sOpsLifMagLDStepTxt;
		ELSE
			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvLD1StepTxt;
		END_IF
		
	END_IF
	
	//Mode
	tyP0202OpsMag1.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0202OpsMag1.tyOps.tyNumWidth.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0202OpsMag1.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0202OpsMag1.tyOps.tyNumWidth.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0202OpsMag1.tyOps.tyNumWidth2.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		IF p_tyNtParamCurr.bProjAutoRcpPrep AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag1MinSlt;
			tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag1MaxSlt;
			tyP0202OpsMag1.tyOps.tyNumPitch.diValue				:= p_diLinkAutoRcpMag1Pitch;
			tyP0202OpsMag1.tyOps.tyStringProdNm.sValue			:= p_tyAutoRcpMagRcp[1].sWorkOrderId;
		ELSE
			tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
			tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
			tyP0202OpsMag1.tyOps.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp2.diPitch;
			tyP0202OpsMag1.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
		END_IF
		tyP0202OpsMag1.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		//Magazine Info
		tyP0202OpsMag1.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	ELSE
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			0,2:
				tyP0202OpsMag1.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
				tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
				tyP0202OpsMag1.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0202OpsMag1.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
				//Magazine Info
				tyP0202OpsMag1.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
			1:
				
				tyP0202OpsMag1.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
				tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
				tyP0202OpsMag1.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0202OpsMag1.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
				//Magazine Info
				tyP0202OpsMag1.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp1.sRcpNm;
		END_CASE
	END_IF
	//Magazine Info
//	tyP0202OpsMag1.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer1MagPresent = TRUE THEN
		tyP0202OpsMag1.tyOps.tyNumMag1AvlQty.diValue	:= p_tyBuffer1BffrStat.diTtlGdBrd + p_tyBuffer1BffrStat.diTtlBadBrd;
		tyP0202OpsMag1.tyOps.tyNumMag1TtlSlt.diValue	:= p_tyBuffer1BffrStat.diTtlBrdCap;
	ELSE
		tyP0202OpsMag1.tyOps.tyNumMag1AvlQty.diValue	:= 0;
		tyP0202OpsMag1.tyOps.tyNumMag1TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer1MagPresent = TRUE THEN
		
		IF p_tyBuffer1BffrStat.bBffrFull = TRUE THEN
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 2;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 0;
		ELSIF p_tyBuffer1BffrStat.bBffrMty = TRUE THEN
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 1;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 1;
		ELSE
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 3;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 0;
		tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 1;
	END_IF
	
	//Product Recipe 254
	tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0202OpsMag1.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0202OpsMag1.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0202OpsMag1.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
	
END_ACTION
