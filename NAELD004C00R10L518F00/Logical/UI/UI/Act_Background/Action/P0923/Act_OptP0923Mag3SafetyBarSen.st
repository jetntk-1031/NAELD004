
ACTION Act_OptP0923Mag3SafetyBarSen: 

	tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnExtRS.bValue	:= p_tyDI.bMag3SafetyBarExtRS;
	tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnRetRS.bValue	:= p_tyDI.bMag3SafetyBarRetRS;
	
	//Machine Bitmap
	IF p_tyDI.bMag3SafetyBarRetRS = TRUE THEN
		tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.usiValueIdx	:= 5;
	ELSE
		tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.usiValueIdx	:= 4;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.uiValueIdx + 100;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
			IF 	tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag3SafetyBarCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
	END_IF
	
END_ACTION
