
ACTION Act_Main_P0910:
	
	//Display
	tyP0910GenOut.tyGenOut.tyBtnBuzzer.uiRtStat.0	:= p_tyNtParamCurr.tyDOSettings.diBuzzer = 0;
	tyP0910GenOut.tyGenOutCurtainSen.tyLyr.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjCurtainSenPrep;

	tyP0910GenOut.tyGenOut.tyBtnTLRed.uiRtStat := p_tyNtParamCurr.eCustomerReq = Siemens;
	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx := 2;
	ELSE
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx := 0;
	END_IF
	
END_ACTION
