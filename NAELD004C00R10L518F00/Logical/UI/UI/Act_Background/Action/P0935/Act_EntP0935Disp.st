
ACTION Act_EntP0935Disp:
	
	//Access Address
	p_tyC0001MotionStd ACCESS ADR(tyP0935Lifter.tyMotionStd);
	
	p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0935Lifter.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0935Lifter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0935Lifter ACCESS ADR(tyP0935Lifter.tyLifter);
	
	//Display
	tyP0935Lifter.tyMotionStd.tyBtnPwr.bValue	:= p_bLifterBtmPwrOn;
	
	IF p_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
	//	tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt + 1;
		tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
		tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMin	:= p_tyNtParamCurr.diProjMagMinSlt;
	ELSE
		tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
		tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMin	:= p_tyNtParamCurr.diProjMagMinSlt;
	END_IF
	
END_ACTION
