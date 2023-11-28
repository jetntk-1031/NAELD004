
ACTION Act_ExitP1025: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxExitAsk);
		
		IF tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnYes.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxHide);
			
			//Restore Param
			tyP1025McSetAIVComm.tyAIVComm	:= tyP1025McSetAIVComm.tyAIVCommBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1025McSetAIVComm.tyMsgBoxExitAsk.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF

	
END_ACTION
