
ACTION Act_ExitP1027: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxExitAsk);
		
		IF tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnYes.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxHide);
			
			//Restore Param
			tyP1027McSetUSBSetting.tyUSBSet	:= tyP1027McSetUSBSetting.tyUSBSetBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1027McSetUSBSetting.tyMsgBoxExitAsk.tyBtnNo.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
