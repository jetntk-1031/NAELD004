
ACTION Act_OptP0921Navi:
	
	IF tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		eChgPage		:= UIP0920MtrNPneuCtrl;
			
		tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bRtCompl 	:= FALSE;
		tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE OR 
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnBack.bRtCompl OR	tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnBack.bRtCompl THEN
	
		eChgPage		:= UIP0920MtrNPneuCtrl;
		
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bValue	 := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bValue	 := FALSE;
		
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnBack.bValue	 := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnBack.bValue	 := FALSE;

	
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnRgt.bRtCompl THEN
		
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr2);
	
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom2);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC2);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB2);
//		p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis2);
	
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom3);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC3);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB3);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);

		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen2.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen3.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0 := TRUE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnRgt.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx :=2;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx :=2;

	ELSIF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnLeft.bRtCompl THEN

		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr2);
	
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom2);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC2);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB2);
	//	p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis2);
	
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom3);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC3);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB3);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);

		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen2.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen3.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0 := TRUE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnLeft.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx :=2;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx :=2;

	ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnRgt.bRtCompl OR tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnRgt.bRtCompl THEN
		IF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnRgt.bRtCompl THEN
			p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr1);
		ELSIF tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnRgt.bRtCompl THEN
			p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviOutlet21);
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyTxtTit.usiValueIdx := 148-6; //6
			tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat := FALSE;
			tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat := FALSE;
		END_IF
	
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
	
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);
		
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0	:= TRUE;//NOT(p_tyNtParamCurr.bProjOutletShutPrep AND p_tyMcParamCurr.bOutShutterDis);
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnRgt.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx :=1;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx :=1;

		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnRgt.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBitmapPageDisp.usiValueIdx :=1;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBitmapPageDisp.usiValueIdx :=1;

	ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnLeft.bRtCompl OR tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnLeft.bRtCompl THEN
		IF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnLeft.bRtCompl THEN
			p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr1);
		ELSIF tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnLeft.bRtCompl THEN
			p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviOutlet21);
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyTxtTit.usiValueIdx := 148-6; //6
			tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat := FALSE;
			tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat := FALSE;
		END_IF
	
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
	//	p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis);
	
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);
		
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0	:= TRUE;//NOT(p_tyNtParamCurr.bProjOutletShutPrep AND p_tyMcParamCurr.bOutShutterDis);
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnLeft.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx :=1;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx :=1;

		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBtnLeft.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBitmapPageDisp.usiValueIdx :=1;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBitmapPageDisp.usiValueIdx :=1;

	ELSIF tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnRgt.bRtCompl THEN 
		//outlet 2 navi
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviOutlet22);
		tyP0921InletNOutletShutter.tyOutletShutterCom2.tyTxtTit.usiValueIdx := 149-6; //6

		tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat := TRUE;
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom2);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);

//		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen2.uiRtStat := TRUE;
//		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen3.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0 := TRUE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnRgt.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBitmapPageDisp.usiValueIdx :=2;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBitmapPageDisp.usiValueIdx :=2;

	
	ELSIF tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnLeft.bRtCompl THEN 
		//outlet 2 navi
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviOutlet22);
		tyP0921InletNOutletShutter.tyOutletShutterCom2.tyTxtTit.usiValueIdx := 149-6; //6 //title

		tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat := TRUE;
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom2);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2);
		p_tyP0921OutletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis);

//		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen2.uiRtStat := TRUE;
//		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen3.uiRtStat := TRUE;
		tyP0921InletNOutletShutter.tyOutletShutterDis.tyLyr.uiRtStat.0 := TRUE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBtnLeft.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviOutlet21.tyBitmapPageDisp.usiValueIdx :=2;
		tyP0921InletNOutletShutter.tyNaviOutlet22.tyBitmapPageDisp.usiValueIdx :=2;

	END_IF
	
	
END_ACTION
