
ACTION Act_OptP0200Keypad: 

	IF fUIOutRtStatTPIsOpen(ADR(tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle			:= tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sKeypadTitle;
	END_IF
	
END_ACTION
