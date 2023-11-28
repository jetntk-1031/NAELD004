
ACTION Act_EntP0931Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskHide);
	
//	p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNaviBack);
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual:
			p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNavi2Lyr2);
		LDMagTriple:
			p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNavi3Lyr2);
		LDMagQuadruple:
			p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNavi4Lyr2);
	END_CASE
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0931MagConv2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0931Mag2ConvCom ACCESS ADR(tyP0931MagConv2.tyCom);
	p_tyP0931Mag2ConvDC ACCESS ADR(tyP0931MagConv2.tyDC);
	p_tyP0931Mag2ConvFB ACCESS ADR(tyP0931MagConv2.tyFB);
	

	
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 142;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 70;
	ELSE
		tyP0931MagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 100;
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
	ELSE 
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.usiTxtIdx	:= 6;
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.usiTxtIdx	:= 6;
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;	
	
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF
	
END_ACTION
