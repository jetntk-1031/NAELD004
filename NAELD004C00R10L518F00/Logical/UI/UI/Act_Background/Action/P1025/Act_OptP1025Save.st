
ACTION Act_OptP1025Save:
	
	IF tyP1025McSetAIVComm.tyAIVComm.tyNumSvrPort.bRtCompl OR tyP1025McSetAIVComm.tyAIVComm.tyNumAllwClntPort.bRtCompl
		OR tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.bRtCompl THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		 tyP1025McSetAIVComm.tyAIVComm.tyNumSvrPort.bRtCompl		:= FALSE;
		 tyP1025McSetAIVComm.tyAIVComm.tyNumAllwClntPort.bRtCompl	:= FALSE;
	 	 tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.bRtCompl	:= FALSE;
		
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		IF usiSaveAIVCommStep = 0 THEN
			//Verify IP Address Valid
			IF tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.sValue <> '' THEN
				
				IF fIPValid(tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.sValue, ADR(a_iIPPart1)) = TRUE THEN
					usiSaveAIVCommStep	:= 1;
				ELSE
					usiSaveAIVCommStep	:= 99;
				END_IF
				
			ELSE
				usiSaveAIVCommStep	:= 1;
			END_IF
			
		ELSIF usiSaveAIVCommStep = 1 THEN
			//Save Param
			tyMcParamWr.tyAIVComm.uiSvrPort			:=  DINT_TO_UINT(tyP1025McSetAIVComm.tyAIVComm.tyNumSvrPort.diValue);
			tyMcParamWr.tyAIVComm.uiClientPort		:=  DINT_TO_UINT(tyP1025McSetAIVComm.tyAIVComm.tyNumAllwClntPort.diValue);
			tyMcParamWr.tyAIVComm.sClientAddress	:=  tyP1025McSetAIVComm.tyAIVComm.tyStringAllwClntIP.sValue;
			
			eMcParamAct	:= McParamActWrite;
			
			IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
				
				eMcParamAct	:= McParamActIdle;
				
				//Update BackUp Param
				tyP1025McSetAIVComm.tyAIVCommBkUp	:= tyP1025McSetAIVComm.tyAIVComm;
				
				//Reconnect
				bAIVCommReconnect	:= TRUE;
				
				usiSaveAIVCommStep	:= 2;
				
			ELSIF p_eMcParamStatus = Error THEN
				
				p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxSaveErr);
				
				IF tyP1025McSetAIVComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1025McSetAIVComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1025McSetAIVComm.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxHide);
					
					//Restore Param
					tyP1025McSetAIVComm.tyAIVComm	:= tyP1025McSetAIVComm.tyAIVCommBkUp;
					tyMcParamWr						:= p_tyMcParamCurr;
					
					tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
					fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				END_IF
				
			END_IF
			
		ELSIF usiSaveAIVCommStep = 2 THEN
			//Done
			bAIVCommReconnect	:= FALSE;
			
			usiSaveAIVCommStep	:= 0;
			
			tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
		ELSIF usiSaveAIVCommStep = 99 THEN
			//Message: IP Address Invalid
			p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxIPAddrInvalid);
			
			IF tyP1025McSetAIVComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl = TRUE THEN
				tyP1025McSetAIVComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl	:= FALSE;
				tyP1025McSetAIVComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1025McSetAIVComm.tyMsgBoxHide);
				
				//Restore Param
				tyP1025McSetAIVComm.tyAIVComm	:= tyP1025McSetAIVComm.tyAIVCommBkUp;
				
				usiSaveAIVCommStep	:= 0;
				
				tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));	
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
