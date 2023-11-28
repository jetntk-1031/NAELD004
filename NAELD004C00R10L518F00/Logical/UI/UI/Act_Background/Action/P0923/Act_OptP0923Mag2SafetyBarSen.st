
ACTION Act_OptP0923Mag2SafetyBarSen: 

	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnExtRS.bValue	:= p_tyDI.bMag2SafetyBarExtRS;
	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnRetRS.bValue	:= p_tyDI.bMag2SafetyBarRetRS;
	
	//Machine Bitmap
	IF p_tyDI.bMag2SafetyBarRetRS = TRUE THEN
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.usiValueIdx	:= 3;
	ELSE
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.usiValueIdx	:= 2;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx + 100;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
			IF 	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
	END_IF
	
END_ACTION
