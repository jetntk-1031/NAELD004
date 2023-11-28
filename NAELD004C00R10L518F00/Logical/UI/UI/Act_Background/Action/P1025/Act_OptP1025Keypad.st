
ACTION Act_OptP1025Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetAIVComm.tyAIVComm.tyNumSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetAIVComm.tyAIVComm.tyNumSvrPort.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetAIVComm.tyAIVComm.tyNumAllwClntPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetAIVComm.tyAIVComm.tyNumAllwClntPort.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.sKeypadTitle; 
		
	END_IF
	
END_ACTION
