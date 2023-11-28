
ACTION Act_EntP0203Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0203OpsMag2.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0203OpsMag2.tyRcpPopUp);
	
	p_tyP0203Ops ACCESS ADR(tyP0203OpsMag2.tyOps);
	p_tyP0203IOMonitor ACCESS ADR(tyP0203OpsMag2.tyIOMonitor);
	p_tyP0203BypsInitConv ACCESS ADR(tyP0203OpsMag2.tyBypsInitConv);
	p_tyP0203Param ACCESS ADR(tyP0203OpsMag2.tyParam);
	
	//Display
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyParam.tyLyr.uiRtStat));
	
	tyP0203OpsMag2.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClmpRS.usiTxtIdx	:= 75;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedUnclmpRS.usiTxtIdx:= 75;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtClmpRS.usiTxtIdx	:= 0;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtUnclmpRS.usiTxtIdx:= 0;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClampCtrl.usiTxtIdx:= 41;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RemoteClampCtrl.usiTxtIdx:= 18;
	ELSE 
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClmpRS.usiTxtIdx	:= 75;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedUnclmpRS.usiTxtIdx:= 75;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtClmpRS.usiTxtIdx	:= 0;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtUnclmpRS.usiTxtIdx:= 0;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClampCtrl.usiTxtIdx:= 41;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RemoteClampCtrl.usiTxtIdx:= 18;	
	
	END_IF
	
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnAIVWifi.uiRtStat));
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyTxtLblAIV.uiRtStat));
	
	tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
