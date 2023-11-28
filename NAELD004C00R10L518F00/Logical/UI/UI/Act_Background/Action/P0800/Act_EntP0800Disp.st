
ACTION Act_EntP0800Disp:
	
	//Access Address
	IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		IF bDisplayMag4Info THEN
			p_tyC0004Navi ACCESS ADR(tyP0800MagInfo.tyNaviLyr2);
		
			fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo1.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo3.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo4.tyLyr.uiRtStat));
		
		ELSE
			
			p_tyC0004Navi ACCESS ADR(tyP0800MagInfo.tyNaviLyr1);
	
			fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo1.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo3.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo4.tyLyr.uiRtStat));
			
		END_IF
	ELSE	
		p_tyC0004Navi ACCESS ADR(tyP0800MagInfo.tyNaviLyrOff);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0800MagInfo.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0800MagInfo1 ACCESS ADR(tyP0800MagInfo.tyMagInfo1);
	
	p_tyP0800MagInfo2 ACCESS ADR(tyP0800MagInfo.tyMagInfo2);
	
	p_tyP0800MagInfo3 ACCESS ADR(tyP0800MagInfo.tyMagInfo3);
	
	p_tyP0800MagInfo4 ACCESS ADR(tyP0800MagInfo.tyMagInfo4);
	
	bDisplayMag4Info := FALSE;
	
END_ACTION
