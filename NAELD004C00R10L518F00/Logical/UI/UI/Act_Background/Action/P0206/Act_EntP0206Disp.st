
ACTION Act_EntP0206Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0206OpsMag4.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0206OpsMag4.tyRcpPopUp);
	
	p_tyP0206Ops ACCESS ADR(tyP0206OpsMag4.tyOps);
	p_tyP0206IOMonitor ACCESS ADR(tyP0206OpsMag4.tyIOMonitor);
	p_tyP0206BypsInitConv ACCESS ADR(tyP0206OpsMag4.tyBypsInitConv);
	p_tyP0206Param ACCESS ADR(tyP0206OpsMag4.tyParam);
	
	//Display
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyParam.tyLyr.uiRtStat));
	
	tyP0206OpsMag4.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClmpRS.usiTxtIdx	:= 6;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedUnclmpRS.usiTxtIdx:= 6;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtClmpRS.usiTxtIdx	:= 4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtUnclmpRS.usiTxtIdx:= 4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClampCtrl.usiTxtIdx:= 0;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RemoteClampCtrl.usiTxtIdx:= 8;
	ELSE 
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClmpRS.usiTxtIdx	:= 6;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedUnclmpRS.usiTxtIdx:= 6;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtClmpRS.usiTxtIdx	:= 4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtUnclmpRS.usiTxtIdx:= 4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClampCtrl.usiTxtIdx:= 0;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RemoteClampCtrl.usiTxtIdx:= 8;	
	
	END_IF
	
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyBtnAIVWifi.uiRtStat));
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyTxtLblAIV.uiRtStat));
END_ACTION
