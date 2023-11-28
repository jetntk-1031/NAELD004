
ACTION Act_OptP1023USSel:
	
	IF tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bValue		:= TRUE;
		tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bRtLk		:= TRUE;
		
		tyP1023McSetHComm.tyUSSel.tyBtnHermes.bValue	:= FALSE;
		tyP1023McSetHComm.tyUSSel.tyBtnHermes.bRtLk		:= FALSE;
		
	ELSIF tyP1023McSetHComm.tyUSSel.tyBtnHermes.bRtCompl = TRUE THEN
		tyP1023McSetHComm.tyUSSel.tyBtnHermes.bRtCompl	:= FALSE;
		
		tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bValue		:= FALSE;
		tyP1023McSetHComm.tyUSSel.tyBtnSMEMA.bRtLk		:= FALSE;
		
		tyP1023McSetHComm.tyUSSel.tyBtnHermes.bValue	:= TRUE;
		tyP1023McSetHComm.tyUSSel.tyBtnHermes.bRtLk		:= TRUE;
		
	END_IF
	
END_ACTION
