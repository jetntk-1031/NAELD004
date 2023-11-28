
ACTION Act_EntP1040Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1040ProdSet.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP1040ProdSet.tyRcpPopUp);
	
	p_tyP1040ProdSet ACCESS ADR(tyP1040ProdSet.tyProdSet);
	tyP1040ProdSet.tyProdSet.tyStringSearch.sValue					:= '';
	
	//Display
	udiP1040SelectedRowOld	:= 0;
	
	tyP1040ProdSet.tyProdSet.tyBtnLongBrd.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjLongBrdPrep AND p_tyMcParamCurr.bLongBrdEn);
	
	//tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValueMax	:= p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
	tyP1040ProdSet.tyProdSet.tyNumLastSltRear.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
	fUIInRtStatHide(ADR(tyP1040ProdSet.tyRcpPopUp.tyLyr.uiRtStat));
	
END_ACTION
