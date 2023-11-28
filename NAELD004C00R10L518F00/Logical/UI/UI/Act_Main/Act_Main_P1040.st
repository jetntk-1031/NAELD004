
ACTION Act_Main_P1040:
	
	//Display
	tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValueMin		:= p_tyNtParamCurr.diProjMagMinSlt;
	
	tyP1040ProdSet.tyProdSet.tyNumPitch.diValueMin			:= p_tyNtParamCurr.tyProdRcpPitch.diMin;
	
	tyP1040ProdSet.tyProdSet.tyNumProdWidthRear.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1040ProdSet.tyProdSet.tyNumProdWidthRear.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP1040ProdSet.tyProdSet.tyNumPitchRear.diValueMin			:= p_tyNtParamCurr.tyProdRcpPitch.diMin;
	tyP1040ProdSet.tyProdSet.tyNumFirstSltRear.diValueMin		:= p_tyNtParamCurr.diProjMagMinSlt;
	
	tyP1040ProdSet.tyProdSet.tyDrpDnFlippedBrd.uiRtStat	:= TRUE;
	//Machine Mode
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.uiRtStat	:= FALSE;
	ELSE
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueMaxIdx	:= 0;
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.uiRtStat	:= TRUE;
	END_IF;
	
	//P1040 Product Settings
	FOR i := 1 TO c_uiP1040TableSize DO
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(i);
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyProdRcpCurrList[i].sRcpNm;
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyProdRcpCurrList[i].sDisplayInfo;
	END_FOR
	
	tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bRtLk := FALSE;
	tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.uiRtStat.0 := TRUE;
	
	IF p_tyNtParamCurr.bLFProdWidth2Prep THEN
		fUIInRtStatOff(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatHide(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth.uiRtStat));	
		
		tyP1040ProdSet.tyProdSet.tyTableRecipe.tyStringTitle2Col2Row0.sValue:= 'US | DS Width';
	ELSE
		fUIInRtStatHide(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth2.uiRtStat));	
		fUIInRtStatOff(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth.uiRtStat));
		
		tyP1040ProdSet.tyProdSet.tyTableRecipe.tyStringTitle2Col2Row0.sValue:= 'Product Width';
	END_IF
	
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual, LDMagTriple:
			fUIInRtStatOff(ADR(tyP1040ProdSet.tyProdSet.tyNotQuadrupleLyr.uiRtStat));	
			fUIInRtStatHide(ADR(tyP1040ProdSet.tyProdSet.tyQuadrupleLyr.uiRtStat));
		
		LDMagQuadruple:
			fUIInRtStatHide(ADR(tyP1040ProdSet.tyProdSet.tyNotQuadrupleLyr.uiRtStat));	
			fUIInRtStatOff(ADR(tyP1040ProdSet.tyProdSet.tyQuadrupleLyr.uiRtStat));
	END_CASE
	
	//Motorized Pusher
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;

	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	 
	tyP1040ProdSet.tyProdSet.tyNumPshrOffset.uiRtStat.0		:= NOT (p_tyNtParamCurr.bAWPusherPrep);
	tyP1040ProdSet.tyProdSet.tyTxtPshrOffset.uiRtStat.0		:= NOT (p_tyNtParamCurr.bAWPusherPrep);

END_ACTION
