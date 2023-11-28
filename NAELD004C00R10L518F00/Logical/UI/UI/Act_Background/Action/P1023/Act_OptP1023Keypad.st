
ACTION Act_OptP1023Keypad: 
	
	//Downstream A
	IF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.sKeypadTitle;
		
	END_IF
	
	//Downstream B
	IF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.sKeypadTitle;
		
	END_IF
	
END_ACTION
