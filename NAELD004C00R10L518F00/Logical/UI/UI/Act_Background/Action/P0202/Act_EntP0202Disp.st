
ACTION Act_EntP0202Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0202OpsMag1.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0202OpsMag1.tyRcpPopUp);
	
	p_tyP0202Ops ACCESS ADR(tyP0202OpsMag1.tyOps);
	p_tyP0202IOMonitor ACCESS ADR(tyP0202OpsMag1.tyIOMonitor);
	p_tyP0202BypsInitConv ACCESS ADR(tyP0202OpsMag1.tyBypsInitConv);
	p_tyP0202Param ACCESS ADR(tyP0202OpsMag1.tyParam);
	
	//Display
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyParam.tyLyr.uiRtStat));
	
	tyP0202OpsMag1.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	tyP0202OpsMag1.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.usiTxtIdx	:= 75;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.usiTxtIdx:= 75;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.usiTxtIdx	:= 0;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.usiTxtIdx:= 0;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.usiTxtIdx:= 41;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.usiTxtIdx:= 18;
	ELSE 
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.usiTxtIdx	:= 75;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.usiTxtIdx:= 75;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.usiTxtIdx	:= 0;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.usiTxtIdx:= 0;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.usiTxtIdx:= 41;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.usiTxtIdx:= 18;	
	
	END_IF
	
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBtnAIVWifi.uiRtStat));
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyTxtLblAIV.uiRtStat));
	
	tyP0202OpsMag1.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
