
ACTION Act_EntP0410Disp: 
	
	//Access Addres
	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		p_tyC0004Navi ACCESS ADR(tyP0410MagSel.tyNavi2Lyr1);
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		p_tyC0004Navi ACCESS ADR(tyP0410MagSel.tyNavi1Lyr1);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0410MagSel ACCESS ADR(tyP0410MagSel.tyMagSel);
	
	p_tyP0410MagDet ACCESS ADR(tyP0410MagSel.tyMagDet);
	
	bRefreshMagRcpTable := TRUE;
	bMagazineRcpA := TRUE;
	bMagazineRcpB := FALSE;
	
	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		IF tyP0410MagSel.tyMagSel.tyTxtMagTitle.usiValueIdx	< 100 THEN
			tyP0410MagSel.tyMagSel.tyTxtMagTitle.usiValueIdx := tyP0410MagSel.tyMagSel.tyTxtMagTitle.usiValueIdx + 126;
		END_IF
	END_IF
	
	fUIInRtStatHide(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
	
	// Enabling Display Auto Detect Magazine Mode
	tyP0410MagSel.tyMagSel.tyTxtMagModel.uiRtStat :=  NOT(p_tyNtParamCurr.bMagAutoVerifyPrep);
	
	
	tyP0410MagSel.tyMagSel.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrRcp.sRcpNm;
	tyP0410MagSel.tyMagSel.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrRcp.diSltToSltInUM;
	tyP0410MagSel.tyMagSel.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrRcp.diTtlSlt;
	tyP0410MagSel.tyMagSel.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag1Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag2Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag3Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag4Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag4Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrRcp.diMag1TravPosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrRcp.diMag2TravPosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrRcp.diMag3TravPosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag4.diValue			:= p_tyMagRcpCurrRcp.diMag4TravPosInUM;
	tyP0410MagSel.tyMagSel.tyTxtMagModel.usiValueIdx		:= p_tyMagRcpCurrRcp.usiMagModel;
	tyP0410MagSel.tyMagSel.tyBtnSafetyBar.bValue			:= p_tyMagRcpCurrRcp.bSafetyBarDisabled;
	
END_ACTION
