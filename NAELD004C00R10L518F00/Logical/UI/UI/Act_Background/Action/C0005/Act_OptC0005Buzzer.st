
ACTION Act_OptC0005Buzzer: 

	IF tyCommon.tyMain.tyBtnBuzzer.bRtCompl = TRUE THEN	
		tyCommon.tyMain.tyBtnBuzzer.bRtCompl	:= FALSE;
		
		IF tyCommon.tyMain.tyBtnBuzzer.bValue = TRUE THEN
			tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx	:= 2;
	
			bMuteBuz	:= TRUE;
		ELSE
			tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx	:= 1;
	
			bMuteBuz	:= FALSE;
		END_IF
		
	END_IF
	
	//Mute Buzzer
	IF EDGEPOS((p_bAlarmErr OR p_bAlarmWarning OR p_bAlarmInfo) (*AND NOT bUIManualMod*)) THEN
			
		tyCommon.tyMain.tyBtnBuzzer.bValue				:= FALSE;
		tyCommon.tyMain.tyBtnBuzzer.bRtLk				:= FALSE;
		tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 1;
			
		bMuteBuz	:= FALSE;
	
	ELSIF (p_bAlarmErr OR p_bAlarmWarning OR p_bAlarmInfo) THEN
		
		IF p_bAlarmInfoLF AND NOT (p_bAlarmErr OR p_bAlarmWarning OR (p_bAlarmInfo AND NOT p_bAlarmInfoLF)) THEN
			
			IF p_tyMcParamCurr.bLFBuzMute THEN
				
				tyCommon.tyMain.tyBtnBuzzer.bValue				:= FALSE;
				tyCommon.tyMain.tyBtnBuzzer.bRtLk				:= TRUE;
				tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 0;
			
				bMuteBuz	:= FALSE;				
			ELSE
				tyCommon.tyMain.tyBtnBuzzer.bRtLk				:= FALSE;
				
				IF tyCommon.tyMain.tyBtnBuzzer.bValue THEN
					tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 2;
				ELSE
					tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 1;
				END_IF
				
			END_IF			
		ELSE
			
			tyCommon.tyMain.tyBtnBuzzer.bRtLk				:= FALSE;
				
			IF tyCommon.tyMain.tyBtnBuzzer.bValue THEN
				tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 2;
			ELSE
				tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 1;
			END_IF
		END_IF				
		
	ELSIF NOT(p_bAlarmErr OR p_bAlarmWarning OR p_bAlarmInfo) (*OR bUIManualMod*) THEN
		tyCommon.tyMain.tyBtnBuzzer.bRtLk				:= TRUE;
		tyCommon.tyMain.tyBtnBuzzer.usiBitmapIdx		:= 0;
		
		bMuteBuz	:= FALSE;
	END_IF
	
END_ACTION
