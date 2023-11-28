
ACTION Act_EntP0924Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0924TrolleyLck.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0924TrolleyLck.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0924TrolleyLck.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0924TrolleyLckCom ACCESS ADR(tyP0924TrolleyLck.tyCom);
	p_tyP0924TrolleyLckDC ACCESS ADR(tyP0924TrolleyLck.tyDC);
	p_tyP0924TrolleyLckFB ACCESS ADR(tyP0924TrolleyLck.tyFB);
	

	IF tyP0924TrolleyLck.tyCom.tyBtnSwitch.bValue THEN
		fUIInRtStatHide(ADR(tyP0924TrolleyLck.tyFB.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0924TrolleyLck.tyDC.tyLyr.uiRtStat));
	ELSE
		fUIInRtStatOff(ADR(tyP0924TrolleyLck.tyFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0924TrolleyLck.tyDC.tyLyr.uiRtStat));
	END_IF
	
END_ACTION
