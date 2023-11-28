
ACTION Act_ExitP1028: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1028McSetRS232Setting.tyMsgBoxExitAsk);
		
		IF tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnYes.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1028McSetRS232Setting.tyMsgBoxHide);
			
			//Restore Param
			tyP1028McSetRS232Setting.tyRS232Set	:= tyP1028McSetRS232Setting.tyRS232SetBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1028McSetRS232Setting.tyMsgBoxExitAsk.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1028McSetRS232Setting.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF

	
END_ACTION
