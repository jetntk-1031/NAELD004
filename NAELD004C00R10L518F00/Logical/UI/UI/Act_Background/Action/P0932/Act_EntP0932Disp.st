
ACTION Act_EntP0932Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskHide);
	
//	p_tyC0004Navi ACCESS ADR(tyP0932MagConv3.tyNaviBack);
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagTriple:
			p_tyC0004Navi ACCESS ADR(tyP0932MagConv3.tyNavi3Lyr3);
		LDMagQuadruple:
			p_tyC0004Navi ACCESS ADR(tyP0932MagConv3.tyNavi4Lyr3);
	END_CASE
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0932MagConv3.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0932Mag3ConvCom ACCESS ADR(tyP0932MagConv3.tyCom);
	p_tyP0932Mag3ConvDC ACCESS ADR(tyP0932MagConv3.tyDC);
	p_tyP0932Mag3ConvFB ACCESS ADR(tyP0932MagConv3.tyFB);
	

	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.usiValueIdx	:= 111;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.usiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.usiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.usiValueIdx	:= 109;
	ELSE
		tyP0932MagConv3.tyCom.tyBitmapMc.usiValueIdx	:= 100;
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
	ELSE 
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;	
	
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF
	
END_ACTION
