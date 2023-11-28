
ACTION Act_OptP0910RstMnl:
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eRstErrStatus = Error)) THEN
		eRstErrAct	:= RstErrActIdle;
		
		tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bValue	:= FALSE;
		
		//curtain sensor
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl	:= FALSE;
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bValue   	:= FALSE;
		//	bSafetyCurtainReset	:= FALSE;
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSenPBLED.bValue	:= FALSE;
		bBypCurtainPBLED	:= FALSE;
	
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSen.bValue	:= FALSE;
		bBypCurtainSen	:= FALSE;
		//bSafetyCurtainReset := FALSE;

	END_IF
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eTLBuzStatus = Error)) THEN
		eTLBuzAct	:= TLBuzActIdle;
		
		tyP0910GenOut.tyGenOut.tyBtnTLGreen.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnTLRed.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnBuzzer.bValue		:= FALSE;
	END_IF
	
	
END_ACTION
