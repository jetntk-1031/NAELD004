
ACTION Act_OptP1050Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1050LFSet.tyLdrEdit.tyStringIPAddr.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1050LFSet.tyLdrEdit.tyStringIPAddr.sKeypadTitle;	
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1050LFSet.tyLdr.tyNumAfterOven.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1050LFSet.tyLdr.tyNumAfterOven.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1050LFSet.tyLdr.tyNumBeforeOven.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1050LFSet.tyLdr.tyNumBeforeOven.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1050LFSet.tyLdr.tyNumAfterOven2.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1050LFSet.tyLdr.tyNumAfterOven2.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1050LFSet.tyLdr.tyNumBeforeOven2.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1050LFSet.tyLdr.tyNumBeforeOven2.sKeypadTitle;
		
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
