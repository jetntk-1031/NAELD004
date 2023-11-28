
ACTION Act_OptP1021Navi: 
	
	tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE  OR tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtCompl THEN
		tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtCompl 		:= FALSE;
		
		eChgPage	:= UIP1020McSetNavi;
		
	//Navi From Layer 1 to Layer 2
	ELSIF tyP1021McSetGen.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE THEN
		p_tyC0004Navi ACCESS ADR (tyP1021McSetGen.tyNaviLyr2);
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 4;
		ELSE
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 2;
		END_IF
		
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
		fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));

		tyP1021McSetGen.tyNaviLyr1.tyBtnRgt.bRtCompl			:= FALSE;
		
	ELSIF tyP1021McSetGen.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE THEN
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr3);
			tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx := 5; //page3
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
		ELSE
			p_tyC0004Navi ACCESS ADR (tyP1021McSetGen.tyNaviLyr2);
			
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
		END_IF
		
		tyP1021McSetGen.tyNaviLyr1.tyBtnLeft.bRtCompl			:= FALSE;
		
	//Navi Form Layer 2 to Layer 1
	ELSIF tyP1021McSetGen.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE THEN
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr3);
			tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx := 5; //page3
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
		ELSE
			p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
			
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
		END_IF
		
		tyP1021McSetGen.tyNaviLyr2.tyBtnRgt.bRtCompl			:= FALSE;
		
	ELSIF tyP1021McSetGen.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			tyP1021McSetGen.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx := 3;
		ELSE
			tyP1021McSetGen.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx := 1;
		END_IF
		
		fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
	
		tyP1021McSetGen.tyNaviLyr2.tyBtnLeft.bRtCompl			:= FALSE;
		
		//layer 3  
	ELSIF  tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl = TRUE THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			tyP1021McSetGen.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx := 3;
		ELSE
			tyP1021McSetGen.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx := 1;
		END_IF
		
		fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));

		tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl			:= FALSE;
		
	ELSIF tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl = TRUE THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr2);
		IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 THEN
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 4;
		ELSE
			tyP1021McSetGen.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx := 2;
		END_IF
		
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
		fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
	
		tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl			:= FALSE;
	END_IF
	
END_ACTION
