
ACTION Act_OptP1028Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode1.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode1.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode2.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode2.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode1.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode1.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode2.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode2.sKeypadTitle;
		
	END_IF
	
END_ACTION
