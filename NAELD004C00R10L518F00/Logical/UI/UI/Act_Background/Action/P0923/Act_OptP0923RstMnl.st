
ACTION Act_OptP0923RstMnl: 
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag1SafetyBarStatus = Error)) THEN
		
		eMag1SafetyBarAct	:= PneuActIdle;
		
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue		:= FALSE;
		
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag2SafetyBarStatus = Error)) THEN
		
		eMag2SafetyBarAct	:= PneuActIdle;
		
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue		:= FALSE;
		
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag3SafetyBarStatus = Error)) THEN
		
		eMag3SafetyBarAct	:= PneuActIdle;
		
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue		:= FALSE;
		
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		
	END_IF
	
END_ACTION
