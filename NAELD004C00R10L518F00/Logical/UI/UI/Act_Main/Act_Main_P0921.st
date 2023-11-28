
ACTION Act_Main_P0921:
	//Title
	IF p_tyNtParamCurr.bProjShutter2Prep THEN  //>1 inlet shutter
		tyP0921InletNOutletShutter.tyInletShutterCom.tyTxtTit.usiValueIdx := 145-5;
	ELSE
		tyP0921InletNOutletShutter.tyInletShutterCom.tyTxtTit.usiValueIdx := 0;//
	END_IF
	IF p_tyNtParamCurr.bProjOutShutter2Prep THEN
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyTxtTit.usiValueIdx := 148-6;
	ELSE
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyTxtTit.usiValueIdx := 0;
	END_IF
	
	//Display
	tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	
	tyP0921InletNOutletShutter.tyOutletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);
	tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);
	
	//Inlet shutter 2,3_ opening
	tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen2.uiRtStat :=  TRUE;
	tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen3.uiRtStat :=  TRUE;
	tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen2.uiRtStat :=  TRUE;
	tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen3.uiRtStat :=  TRUE;

	
END_ACTION
