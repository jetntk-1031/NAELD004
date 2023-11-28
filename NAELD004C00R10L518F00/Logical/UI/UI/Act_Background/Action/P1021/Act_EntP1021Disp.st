
ACTION Act_EntP1021Disp: 
	
	//Access Address
	IF bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr2);
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 4;
		ELSE
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 2;
		END_IF
	ELSIF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr3); //3 lyr
	ELSE
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1021McSetGen ACCESS ADR(tyP1021McSetGen.tyGen);
	
	p_tyP1021McSetNetwork ACCESS ADR(tyP1021McSetGen.tyNetwork);
	
	//Display
	tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat.0	:= bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB;
	tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat.0	:= NOT(bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB);
	tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat.0	:= TRUE;//NOT (p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0) ;

	
	//Backup Param
	IF NOT(bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB) THEN
		tyP1021McSetGen.tyGenBkUp	:= tyP1021McSetGen.tyGen;
	ELSE
		bTeachTravPosA		:= FALSE;
		bTeachTravPosB		:= FALSE;
		bTeachLifterPosA	:= FALSE;
		bTeachLifterPosB	:= FALSE;
	END_IF
	
	//Network Configuration Display
	usiNetworkModeOld := DINT_TO_USINT(p_tyMcParamCurr.eNetworkMod);
	
	fUIInRtStatHide(ADR(tyP1021McSetGen.tyNetwork.tyLyr.uiRtStat));
	bTeachServo					:= FALSE;
	
	tyP1021McSetGen.tyGen.tyBtnLFBuzMute.uiRtStat.0 := NOT (p_tyMcParamCurr.bLFEn AND p_tyNtParamCurr.bLFPrep AND p_tyNtParamCurr.tyDOSettings.diBuzzer > 0);
	
	//Outlet Shutter disable //mask when not Siemens with admin
	IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_tyUsrMgmtCurrUsr.eUsrLvl <> UsrMgmtAdmin THEN
		tyP1021McSetGen.tyGen.tyBtnOutShutterDis.uiMaskRtStat := FALSE;
	ELSE
		tyP1021McSetGen.tyGen.tyBtnOutShutterDis.uiMaskRtStat := TRUE; // operation will initial open when dis.
	END_IF
	
	tyP1021McSetGen.tyGen.tyBtnRFIDEn.bValue := p_tyMcParamCurr.bMesRFIDEn; 
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue := p_tyMcParamCurr.bHermesSvyEn; 
END_ACTION
