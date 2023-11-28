
ACTION Act_OptP0206UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0206OpsMag4.tyOps.tyStringMcStat.sValue	:= p_sOpsLifMagLDStepTxt;
		ELSE
			tyP0206OpsMag4.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvLD4StepTxt;
		END_IF
		
	END_IF
	
	//Mode
	tyP0206OpsMag4.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp1.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0206OpsMag4.tyOps.tyNumWidth.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0206OpsMag4.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0206OpsMag4.tyOps.tyNumWidth.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0206OpsMag4.tyOps.tyNumWidth2.diValue	:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		tyP0206OpsMag4.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
		tyP0206OpsMag4.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0206OpsMag4.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0206OpsMag4.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		tyP0206OpsMag4.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
		//Magazine Info
		tyP0206OpsMag4.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	ELSE
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			0:
				tyP0206OpsMag4.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0206OpsMag4.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
				tyP0206OpsMag4.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
				tyP0206OpsMag4.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0206OpsMag4.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
				//Magazine Info
				tyP0206OpsMag4.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
			1,2:
				
				tyP0206OpsMag4.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
				tyP0206OpsMag4.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
				tyP0206OpsMag4.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
				tyP0206OpsMag4.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
				tyP0206OpsMag4.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
				//Magazine Info
				tyP0206OpsMag4.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp1.sRcpNm;
		END_CASE
	END_IF
	//Magazine Info
//	tyP0206OpsMag4.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer4MagPresent = TRUE THEN
		tyP0206OpsMag4.tyOps.tyNumMag4AvlQty.diValue	:= p_tyBuffer4BffrStat.diTtlGdBrd + p_tyBuffer4BffrStat.diTtlBadBrd;
		tyP0206OpsMag4.tyOps.tyNumMag4TtlSlt.diValue	:= p_tyBuffer4BffrStat.diTtlBrdCap;
	ELSE
		tyP0206OpsMag4.tyOps.tyNumMag4AvlQty.diValue	:= 0;
		tyP0206OpsMag4.tyOps.tyNumMag4TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer4MagPresent = TRUE THEN
		
		IF p_tyBuffer4BffrStat.bBffrFull = TRUE THEN
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiValueIdx := 2;
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiColor	   := 0;
		ELSIF p_tyBuffer4BffrStat.bBffrMty = TRUE THEN
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiValueIdx := 1;
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiColor	   := 1;
		ELSE
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiValueIdx := 3;
			tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiValueIdx := 0;
		tyP0206OpsMag4.tyOps.tyTxtMag4Stat.usiColor	   := 1;
	END_IF
	
	//Product Recipe 254
	tyP0206OpsMag4.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0206OpsMag4.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0206OpsMag4.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0206OpsMag4.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0206OpsMag4.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
END_ACTION
