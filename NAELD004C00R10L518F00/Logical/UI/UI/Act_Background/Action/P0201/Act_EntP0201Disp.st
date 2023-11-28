
ACTION Act_EntP0201Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0201OpsTravLifter.tyRcpPopUp);
	
	p_tyP0201OpsTravLif ACCESS ADR(tyP0201OpsTravLifter.tyOps);
	p_tyP0201TravLifIOMonitor ACCESS ADR(tyP0201OpsTravLifter.tyIOMonitor);
	p_tyP0201TravLifBypsInitConv ACCESS ADR(tyP0201OpsTravLifter.tyBypsInitConv);
	p_tyP0201Param ACCESS ADR(tyP0201OpsTravLifter.tyParam);
	
	p_tyP0201OpsQueryBoardInfo ACCESS ADR(tyP0201OpsTravLifter.tyQueryBoardInfo);//new for Hermes 1.3
	p_tyP0201OpsCurrWorkOrder ACCESS ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo);//new for Hermes 1.3
	p_tyP0201OpsQueryWorkOrder ACCESS ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo);//new for Hermes 1.3
	p_tyP0201OpsBarcodeScanner ACCESS ADR(tyP0201OpsTravLifter.tyBarcodeScanner);//new for Hermes 1.3

	//Display
	fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat));
	
	tyP0201OpsTravLifter.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
	END_IF
	
	tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
