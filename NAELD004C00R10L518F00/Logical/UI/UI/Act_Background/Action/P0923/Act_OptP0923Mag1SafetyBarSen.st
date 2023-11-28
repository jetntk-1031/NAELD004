
ACTION Act_OptP0923Mag1SafetyBarSen: 

	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnExtRS.bValue	:= p_tyDI.bMag1SafetyBarExtRS;
	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnRetRS.bValue	:= p_tyDI.bMag1SafetyBarRetRS;
	
	//Machine Bitmap
	IF p_tyDI.bMag1SafetyBarRetRS = TRUE THEN
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= 1;
	ELSE
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx + 100;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
		IF 	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF
END_ACTION
