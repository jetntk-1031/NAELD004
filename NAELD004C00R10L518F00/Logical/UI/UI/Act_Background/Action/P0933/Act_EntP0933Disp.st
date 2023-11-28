
ACTION Act_EntP0933Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0933PullConv.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0933PullConv.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0933PullConvCom ACCESS ADR(tyP0933PullConv.tyCom);
	p_tyP0933PullConvDC ACCESS ADR(tyP0933PullConv.tyDC);
	p_tyP0933PullConvFB ACCESS ADR(tyP0933PullConv.tyFB);
	
	//Display
	IF p_tyProdRcpCurrRcp0.diMtrPshrExtSpd <> 0 THEN 
		tyP0933PullConv.tyFB.tyNumExtSpd.diValue			:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
	ELSE
		tyP0933PullConv.tyFB.tyNumExtSpd.diValue			:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax/2;
	END_IF

	IF p_tyProdRcpCurrRcp0.diMtrPshrExtTorq <> 0 THEN 
		tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
	ELSE 
		tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax/2;
	END_IF
END_ACTION
