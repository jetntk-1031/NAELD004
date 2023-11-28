
ACTION Act_EntP0400Disp: 
	
	//Access Addres
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0400ProdSel.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0400ProdSel.tyRcpPopUp);
	
	p_tyP0400ProdSel ACCESS ADR(tyP0400ProdSel.tyProdSel);
	
	p_tyP0400RcpDet ACCESS ADR(tyP0400ProdSel.tyRcpDet);
	
	//Display
	tyP0400ProdSel.tyProdSel.tyStringSearch.bRtCompl	:= TRUE;
	tyP0400ProdSel.tyProdSel.tyStringSearch.sValue		:= '';
	
	fUIInRtStatHide(ADR(tyP0400ProdSel.tyRcpDet.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0400ProdSel.tyRcpDet.tyLyr1.uiRtStat));
	
	fUIInRtStatHide(ADR(tyP0400ProdSel.tyRcpPopUp.tyLyr.uiRtStat)); // Hide Pop Up Layer
	
	//Long Board
	tyP0400ProdSel.tyProdSel.tyBtnLongBrd.uiRtStat.0			:= NOT(p_tyNtParamCurr.bProjLongBrdPrep AND p_tyMcParamCurr.bLongBrdEn);
	tyP0400ProdSel.tyRcpDet.tyBtnLongBrd.uiRtStat.0				:= NOT(p_tyNtParamCurr.bProjLongBrdPrep AND p_tyMcParamCurr.bLongBrdEn);
	
	//Product Selection
	tyP0400ProdSel.tyProdSel.tyStringRecipeNm.sValue		:= p_tyProdRcpCurrRcp0.sRcpNm;
	tyP0400ProdSel.tyProdSel.tyNumProdWidth.diValue			:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0400ProdSel.tyProdSel.tyNumProdWidth2.diValue		:= p_tyProdRcpCurrRcp0.diWidthInUM2;
	tyP0400ProdSel.tyProdSel.tyNumProdWidthRear.diValue		:= p_tyProdRcpCurrRcp0.diWidthInUMRear;
	tyP0400ProdSel.tyProdSel.tyNumMaxSlt.diValue			:= p_tyProdRcpCurrRcp0.diMaxSltValue;
	tyP0400ProdSel.tyProdSel.tyNumMinSlt.diValue			:= p_tyProdRcpCurrRcp0.diMinSltValue;
	tyP0400ProdSel.tyProdSel.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp0.diPitch;
	tyP0400ProdSel.tyProdSel.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp0.bTopToBtm;
	tyP0400ProdSel.tyProdSel.tyBtnLongBrd.bValue			:= p_tyProdRcpCurrRcp0.bLongBrd;
	tyP0400ProdSel.tyProdSel.tyTxtMcMode.usiValueIdx		:= p_tyProdRcpCurrRcp0.usiMcMod;
	tyP0400ProdSel.tyProdSel.tyTxtFlippedBrd.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiFlippedBrd;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
	tyP0400ProdSel.tyProdSel.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	
END_ACTION
