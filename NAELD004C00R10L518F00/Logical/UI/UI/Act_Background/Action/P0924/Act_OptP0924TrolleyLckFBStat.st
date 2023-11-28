
ACTION Act_OptP0924TrolleyLckFBStat:
	IF tyP0924TrolleyLck.tyFB.tyBtnRet.bValue OR tyP0924TrolleyLck.tyFB.tyBtnExt.bValue OR 
		tyP0924TrolleyLck.tyDC.tyBtnRet.bValue OR tyP0924TrolleyLck.tyDC.tyBtnExt.bValue THEN
		
		tyP0924TrolleyLck.tyFB.tyStringStat.sValue	:= p_sTrolleyLckStatTxt;
		
	ELSIF tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue OR tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue OR 
		tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue OR tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue THEN
		
		tyP0924TrolleyLck.tyFB.tyStringStat.sValue	:= p_sTrolleyLckStatTxt2;
	ELSE
		tyP0924TrolleyLck.tyFB.tyStringStat.sValue	:= p_sTrolleyLckStatTxt;

	END_IF
	
END_ACTION
