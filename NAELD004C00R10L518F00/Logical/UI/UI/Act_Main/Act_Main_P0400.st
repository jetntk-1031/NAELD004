
ACTION Act_Main_P0400:
	
	//Product Selection
	tyP0400ProdSel.tyProdSel.tyStringRecipeNm.sValue		:= p_tyProdRcpCurrRcp0.sRcpNm;
	tyP0400ProdSel.tyProdSel.tyNumProdWidth.diValue			:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0400ProdSel.tyProdSel.tyNumMaxSlt.diValue			:= p_tyProdRcpCurrRcp0.diMaxSltValue;
	tyP0400ProdSel.tyProdSel.tyNumMinSlt.diValue			:= p_tyProdRcpCurrRcp0.diMinSltValue;
	tyP0400ProdSel.tyProdSel.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp0.diPitch;
	tyP0400ProdSel.tyProdSel.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp0.bTopToBtm;
	tyP0400ProdSel.tyProdSel.tyBtnLongBrd.bValue			:= p_tyProdRcpCurrRcp0.bLongBrd;
	tyP0400ProdSel.tyProdSel.tyTxtMcMode.usiValueIdx		:= p_tyProdRcpCurrRcp0.usiMcMod;
	tyP0400ProdSel.tyProdSel.tyTxtFlippedBrd.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiFlippedBrd;
	
	tyP0400ProdSel.tyProdSel.tyNumProdWidthRear.diValue		:= p_tyProdRcpCurrRcp0.diWidthInUMRear;
	tyP0400ProdSel.tyProdSel.tyNumPitchRear.diValue			:= p_tyProdRcpCurrRcp0.diPitchRear;
	tyP0400ProdSel.tyProdSel.tyNumMinSltRear.diValue		:= p_tyProdRcpCurrRcp0.diMinSltValueRear;
	tyP0400ProdSel.tyProdSel.tyNumMaxSltRear.diValue		:= p_tyProdRcpCurrRcp0.diMaxSltValueRear;
	tyP0400ProdSel.tyProdSel.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	
	tyP0400ProdSel.tyProdSel.tyTxtFlippedBrd.uiRtStat.0	:= TRUE;
	tyP0400ProdSel.tyProdSel.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	tyP0400ProdSel.tyRcpDet.tyBtnToptoBtm.uiRtStat.0	:= TRUE;
	
	IF p_tyNtParamCurr.bLFProdWidth2Prep THEN
		fUIInRtStatOff(ADR(tyP0400ProdSel.tyProdSel.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatHide(ADR(tyP0400ProdSel.tyProdSel.tyNumProdWidth.uiRtStat));
		
		fUIInRtStatOff(ADR(tyP0400ProdSel.tyRcpDet.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatHide(ADR(tyP0400ProdSel.tyRcpDet.tyNumProdWidth.uiRtStat));
		
		tyP0400ProdSel.tyProdSel.tyTableRecipe.tyStringTitle2Col2Row0.sValue:= 'US | DS Width';
		
		
	ELSE
		fUIInRtStatHide(ADR(tyP0400ProdSel.tyProdSel.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0400ProdSel.tyProdSel.tyNumProdWidth.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0400ProdSel.tyRcpDet.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP0400ProdSel.tyRcpDet.tyNumProdWidth.uiRtStat));	
		
		tyP0400ProdSel.tyProdSel.tyTableRecipe.tyStringTitle2Col2Row0.sValue:= 'Product Width';
	END_IF
	
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual, LDMagTriple:
			fUIInRtStatOff(ADR(tyP0400ProdSel.tyProdSel.tyNotQuadrupleLyr.uiRtStat));	
			fUIInRtStatHide(ADR(tyP0400ProdSel.tyProdSel.tyQuadrupleLyr.uiRtStat));
		
		LDMagQuadruple:
			fUIInRtStatHide(ADR(tyP0400ProdSel.tyProdSel.tyNotQuadrupleLyr.uiRtStat));	
			fUIInRtStatOff(ADR(tyP0400ProdSel.tyProdSel.tyQuadrupleLyr.uiRtStat));
	END_CASE
	
	//Motorized Pusher
	tyP0400ProdSel.tyProdSel.tyTxtMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyProdSel.tyTxtMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyRcpDet.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyRcpDet.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
	
	//Puller Offset
	tyP0400ProdSel.tyProdSel.tyNumPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyProdSel.tyTxtPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyNumPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	
END_ACTION
