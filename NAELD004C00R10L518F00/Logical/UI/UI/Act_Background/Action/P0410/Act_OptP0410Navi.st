
ACTION Act_OptP0410Navi: 
	
	IF tyP0410MagSel.tyNavi2Lyr1.tyBtnBack.bRtCompl = TRUE 
		OR tyP0410MagSel.tyNavi2Lyr2.tyBtnBack.bRtCompl = TRUE 
		OR tyP0410MagSel.tyNavi1Lyr1.tyBtnBack.bRtCompl = TRUE
		THEN
		tyP0410MagSel.tyNavi2Lyr1.tyBtnBack.bRtCompl := FALSE;
		tyP0410MagSel.tyNavi2Lyr1.tyBtnBack.bValue	:= FALSE;
		tyP0410MagSel.tyNavi2Lyr2.tyBtnBack.bRtCompl := FALSE;
		tyP0410MagSel.tyNavi2Lyr2.tyBtnBack.bValue	:= FALSE;
				
		tyP0410MagSel.tyNavi1Lyr1.tyBtnBack.bRtCompl := FALSE;
		tyP0410MagSel.tyNavi1Lyr1.tyBtnBack.bValue := FALSE;
		
		eChgPage	:= UIP0002Menu;
				
	ELSIF tyP0410MagSel.tyNavi2Lyr1.tyBtnLeft.bRtCompl = TRUE OR tyP0410MagSel.tyNavi2Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
		tyP0410MagSel.tyNavi2Lyr1.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0410MagSel.tyNavi2Lyr1.tyBtnRgt.bRtCompl	:= FALSE;
				
		p_tyC0004Navi ACCESS ADR(tyP0410MagSel.tyNavi2Lyr2);
		
		bRefreshMagRcpTable := TRUE;
		bMagazineRcpA := FALSE;
		bMagazineRcpB := TRUE;
		
		fUIInRtStatHide(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
		
		tyP0410MagSel.tyMagSel.tyTxtMagTitle.usiValueIdx := 127;
		
		tyP0410MagSel.tyMagSel.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrRcp1.sRcpNm;
		tyP0410MagSel.tyMagSel.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrRcp1.diTtlSlt;
		tyP0410MagSel.tyMagSel.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrRcp1.diSltToSltInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrRcp1.diMag1Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrRcp1.diMag2Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrRcp1.diMag3Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag4Slt1Pos.diValue	:= p_tyMagRcpCurrRcp1.diMag4Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrRcp1.diMag1TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrRcp1.diMag2TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrRcp1.diMag3TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag4.diValue			:= p_tyMagRcpCurrRcp1.diMag4TravPosInUM;
		tyP0410MagSel.tyMagSel.tyTxtMagModel.usiValueIdx		:= p_tyMagRcpCurrRcp1.usiMagModel;
		tyP0410MagSel.tyMagSel.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpCurrRcp1.diMagMaxBrdWidth;
		tyP0410MagSel.tyMagSel.tyBtnSafetyBar.bValue			:= p_tyMagRcpCurrRcp1.bSafetyBarDisabled;
		
	ELSIF tyP0410MagSel.tyNavi2Lyr2.tyBtnLeft.bRtCompl = TRUE OR tyP0410MagSel.tyNavi2Lyr2.tyBtnRgt.bRtCompl = TRUE THEN
		tyP0410MagSel.tyNavi2Lyr2.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0410MagSel.tyNavi2Lyr2.tyBtnRgt.bRtCompl	:= FALSE;
				
		p_tyC0004Navi ACCESS ADR(tyP0410MagSel.tyNavi2Lyr1);
		
		bRefreshMagRcpTable := TRUE;
		bMagazineRcpA := TRUE;
		bMagazineRcpB := FALSE;
		
		fUIInRtStatHide(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
		
		tyP0410MagSel.tyMagSel.tyTxtMagTitle.usiValueIdx := 126;
		
		tyP0410MagSel.tyMagSel.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrRcp.sRcpNm;
		tyP0410MagSel.tyMagSel.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrRcp.diTtlSlt;
		tyP0410MagSel.tyMagSel.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrRcp.diSltToSltInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag1Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag2Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag3Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumLifterMag4Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag4Slt1PosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrRcp.diMag1TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrRcp.diMag2TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrRcp.diMag3TravPosInUM;
		tyP0410MagSel.tyMagSel.tyNumTravPosMag4.diValue			:= p_tyMagRcpCurrRcp.diMag4TravPosInUM;
		tyP0410MagSel.tyMagSel.tyTxtMagModel.usiValueIdx		:= p_tyMagRcpCurrRcp.usiMagModel;
		tyP0410MagSel.tyMagSel.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpCurrRcp.diMagMaxBrdWidth;
		tyP0410MagSel.tyMagSel.tyBtnSafetyBar.bValue			:= p_tyMagRcpCurrRcp.bSafetyBarDisabled;
	END_IF

			
	
END_ACTION
