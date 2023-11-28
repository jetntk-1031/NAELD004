
ACTION Act_OptP0924RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eTrolleyLckStatus = Error)) THEN
		
		eTrolleyLckAct1	:= PneuActIdle;
		
		tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnRet.bValue		:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt.bValue		:= FALSE;
		
		tyP0924TrolleyLck.tyFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet.bValue		:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt.bValue		:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eTrolleyLckStatus2 = Error)) THEN
		
		eTrolleyLckAct2	:= PneuActIdle;
		
		tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue		:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue		:= FALSE;
		
		tyP0924TrolleyLck.tyFB.tyBtnRet2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue		:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue		:= FALSE;
		
	END_IF
	
	
END_ACTION
