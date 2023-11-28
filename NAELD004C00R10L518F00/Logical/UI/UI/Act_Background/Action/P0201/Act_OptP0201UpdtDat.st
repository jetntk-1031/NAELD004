
ACTION Act_OptP0201UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
		IF p_bOpsTravLifLDAWPosDiff THEN
			IF p_tyNtParamCurr.bDSWidthChkPrep AND p_tyMcParamCurr.bDSWidthChkEn AND p_tyDI.bDSWidthChkSen=FALSE THEN
				tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= 'Width Check Sensor Block Downstream';
			ELSIF p_tyNtParamCurr.bLFPrep AND p_tyMcParamCurr.bLFEn AND p_bLFFollowerDSAllow=FALSE THEN
				IF p_tyMcParamCurr.bSectionLeader THEN
					tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= 'Section Leader: Block Downstream';
				ELSE		
					tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= 'Leader Issue Block Downstream';
				END_IF
				
			ELSE
				tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= p_sOpsTravLifLDStepTxt;
			END_IF
		ELSE
			tyP0201OpsTravLifter.tyOps.tyStringMcStat.sValue	:= p_sOpsTravLifLDStepTxt;
		END_IF
	END_IF
	
	//Mode
	tyP0201OpsTravLifter.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp2.usiMcMod;
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0201OpsTravLifter.tyOps.tyNumWidth.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0201OpsTravLifter.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0201OpsTravLifter.tyOps.tyNumWidth.diValue	:= p_tyProdRcpCurrRcp2.diWidthInUM;
		tyP0201OpsTravLifter.tyOps.tyNumWidth2.diValue	:= p_tyProdRcpCurrRcp2.diWidthInUM2;
	END_IF
	
	//Product Info
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		IF p_tyNtParamCurr.bProjAutoRcpPrep AND p_tyMcParamCurr.bHermesSvyEn THEN
			IF p_ausiSvyMagAccOrder[1] = 10 THEN
				tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag1MinSlt;
				tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag1MaxSlt;
				tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag1Pitch;
				tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyAutoRcpMagRcp[1].sWorkOrderId;
			ELSIF p_ausiSvyMagAccOrder[2] = 10 THEN
				tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag2MinSlt;
				tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag2MaxSlt;
				tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag2Pitch;
				tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyAutoRcpMagRcp[2].sWorkOrderId;
			ELSIF p_ausiSvyMagAccOrder[3] = 10 THEN
				tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_diLinkAutoRcpMag3MinSlt;
				tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_diLinkAutoRcpMag3MaxSlt;
				tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag3Pitch;
				tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyAutoRcpMagRcp[3].sWorkOrderId;
			END_IF
		ELSE //standard
			tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
			tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
			tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
			tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
		END_IF
		
		tyP0201OpsTravLifter.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		
		tyP0201OpsTravLifter.tyOps.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp2.diPshrOffset;
		tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtSpd.diValue	:= p_tyProdRcpCurrRcp2.diMtrPshrExtSpd;
		tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp2.diMtrPshrExtTorq;

	ELSE //quadral
		tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
		tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0201OpsTravLifter.tyOps.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp2.bTopToBtm;
		tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
	
	
		tyP0201OpsTravLifter.tyOps.tyNumMinSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0201OpsTravLifter.tyOps.tyNumMaxSltRange.diValue		:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0201OpsTravLifter.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
	END_IF
	
	//PCB Status
	IF p_bPullConvHvBrd = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
	ELSE
		tyP0201OpsTravLifter.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF

	//Product Recipe 254
	tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0201OpsTravLifter.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0201OpsTravLifter.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0201OpsTravLifter.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
	
END_ACTION
