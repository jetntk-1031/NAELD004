(** 2020-08-29 **)
ACTION Act_Alarm2: 
	
	//Error
	IF  (eStatus<>Error) AND bUSBDisconnected AND p_bUSBRun AND p_bScannerEn = TRUE THEN
		
		tyAlmData2.sProgNm		:= p_sProgNm;
		tyAlmData2.udiCode		:= udiStatus2;
		tyAlmData2.eSeverity	:= AlmSeverityWarning;
		tyAlmData2.udiRunTime	:= tyAlmData2.udiRunTime + 1;
		tyAlmData2.bAlm			:= TRUE;
		tyAlmData2.udiModuleNum  := udiModuleNum;
		g_sBarcodeRdrProgNm		:= p_sProgNm;		
		//Get Error Message
		IF tyAlmData2.udiCode < 10000 OR tyAlmData2.udiCode > 10199 THEN
			tyAlmData2.sAlmMsg	:= 'Unknown';
			tyAlmData2.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData2.sAlmMsg	:= a_tyAlmText[tyAlmData2.udiCode].sAlmText;
			tyAlmData2.sRcyMsg	:= a_tyAlmText[tyAlmData2.udiCode].sRcyText;
		END_IF
		
		sStatTxt	:= tyAlmData2.sAlmMsg;
		
	ELSE
		
		tyAlmData2.udiCode	:= 0;
		tyAlmData2.eSeverity	:= AlmSeverityNA;
		tyAlmData2.sAlmMsg	:= '';
		tyAlmData2.sRcyMsg	:= '';
		tyAlmData2.bAlm			:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
		
	END_IF
	
END_ACTION
