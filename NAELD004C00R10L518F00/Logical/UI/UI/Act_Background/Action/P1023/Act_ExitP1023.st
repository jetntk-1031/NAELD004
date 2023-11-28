
ACTION Act_ExitP1023: 
	
	IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
		usiChgPage	:= 1;
		
	ELSE
		
		p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxExitAsk);
		
		IF tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl = TRUE THEN
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl	:= FALSE;
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
			
			//Restore Param
			tyP1023McSetHComm.tyDSSelA		:= tyP1023McSetHComm.tyDSSelABkUp;
			tyP1023McSetHComm.tyDSSMEMAA	:= tyP1023McSetHComm.tyDSSMEMAABkUp;
			tyP1023McSetHComm.tyDSHermesA	:= tyP1023McSetHComm.tyDSHermesABkUp;
			
			tyP1023McSetHComm.tyDSSelB		:= tyP1023McSetHComm.tyDSSelBBkUp;
			tyP1023McSetHComm.tyDSSMEMAB	:= tyP1023McSetHComm.tyDSSMEMABBkUp;
			tyP1023McSetHComm.tyDSHermesB	:= tyP1023McSetHComm.tyDSHermesBBkUp;
			
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			usiChgPage	:= 1;
			
		ELSIF tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl = TRUE THEN
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bRtCompl	:= FALSE;
			tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnNo.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
			
			eChgPage	:= eCurrPage;
			usiChgPage	:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
