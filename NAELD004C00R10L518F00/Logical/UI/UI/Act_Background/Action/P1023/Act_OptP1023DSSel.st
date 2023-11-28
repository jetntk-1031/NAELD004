
ACTION Act_OptP1023DSSel:

	//Select SMEMA Communication A
	IF tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue	:= TRUE;
		tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtLk		:= TRUE;
		
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue	:= FALSE;
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtLk	:= FALSE;
		
	//Select Hermes Communication A
	ELSIF tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue	:= FALSE;
		tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtLk		:= FALSE;
		
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue	:= TRUE;
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtLk	:= TRUE;
		
	END_IF
	
	//Select SMEMA Communication B
	IF tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue	:= TRUE;
		tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtLk		:= TRUE;
		
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue	:= FALSE;
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtLk	:= FALSE;
		
		//Select Hermes Communication B
	ELSIF tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue	:= FALSE;
		tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtLk		:= FALSE;
		
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue	:= TRUE;
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtLk	:= TRUE;
		
	END_IF
	
END_ACTION
