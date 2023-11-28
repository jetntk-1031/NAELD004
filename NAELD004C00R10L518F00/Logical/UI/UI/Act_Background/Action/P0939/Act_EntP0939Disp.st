
ACTION Act_EntP0939Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0939MagConv4.tyFullMaskHide);
	
//	p_tyC0004Navi ACCESS ADR(tyP0939MagConv4.tyNaviBack);
	p_tyC0004Navi ACCESS ADR(tyP0939MagConv4.tyNavi4Lyr4);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0939MagConv4.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0939Mag4ConvCom ACCESS ADR(tyP0939MagConv4.tyCom);
	p_tyP0939Mag4ConvDC ACCESS ADR(tyP0939MagConv4.tyDC);
	p_tyP0939Mag4ConvFB ACCESS ADR(tyP0939MagConv4.tyFB);
	

	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 111;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 116;
	ELSE
		tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 100;
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
	ELSE 
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;	
	
	END_IF
		
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF
	
END_ACTION
