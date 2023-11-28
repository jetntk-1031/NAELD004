
ACTION Act_OptP1027Keypad: 

	IF fUIOutRtStatTPIsOpen(ADR(tyP1027McSetUSBSetting.tyUSBSet.tyVID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle			:= tyP1027McSetUSBSetting.tyUSBSet.tyVID.sKeypadTitle;

	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1027McSetUSBSetting.tyUSBSet.tyPID.uiRtStat)) = TRUE THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle			:= tyP1027McSetUSBSetting.tyUSBSet.tyPID.sKeypadTitle;


	END_IF
	
END_ACTION
