
ACTION Act_OptP1028Save:
	
	IF tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode1.bRtCompl OR tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode2.bRtCompl
		OR tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode1.bRtCompl OR  tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode2.bRtCompl THEN
		
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode1.bRtCompl := FALSE;
		tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode2.bRtCompl := FALSE;
		tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode1.bRtCompl	 := FALSE;
		tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode2.bRtCompl	 := FALSE;
		
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		tyMcParamWr.diRS232StartCode1	:=  tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode1.diValue;
		tyMcParamWr.diRS232StartCode2	:=  tyP1028McSetRS232Setting.tyRS232Set.tyNumStartCode2.diValue;
		tyMcParamWr.diRS232EndCode1	    :=  tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode1.diValue;
		tyMcParamWr.diRS232EndCode2		:=  tyP1028McSetRS232Setting.tyRS232Set.tyNumEndCode2.diValue;
		
		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			eMcParamAct	:= McParamActIdle;
			
			//Update BackUp Param
			tyP1028McSetRS232Setting.tyRS232SetBkUp	:= tyP1028McSetRS232Setting.tyRS232Set;
		
			
			tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1028McSetRS232Setting.tyMsgBoxSaveErr);
			
			IF tyP1028McSetRS232Setting.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1028McSetRS232Setting.tyMsgBoxSaveErr.tyBtnNo.bRtCompl 	:= FALSE;
				tyP1028McSetRS232Setting.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1028McSetRS232Setting.tyMsgBoxHide);
				
				//Restore Param
				tyP1028McSetRS232Setting.tyRS232Set	:= tyP1028McSetRS232Setting.tyRS232SetBkUp;
			
				tyMcParamWr		:= p_tyMcParamCurr;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
