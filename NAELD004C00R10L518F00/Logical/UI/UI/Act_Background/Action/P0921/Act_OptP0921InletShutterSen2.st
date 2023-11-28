
ACTION Act_OptP0921InletShutterSen2: 

	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBtnOpenRS.bValue		:= p_tyDI.bInShutterOpenRS2;
	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBtnCloseRS.bValue	:= p_tyDI.bInShutterCloseRS2;
	
	//Machine Bitmap ,13close 14open
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
		IF p_tyDI.bInShutterOpenRS2 = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 2;
		ELSIF p_tyNtParamCurr.bProjCurtainSenPrep THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 0+4; //16	
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 0;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_tyDI.bInShutterOpenRS2 = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 28;
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 27;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_tyDI.bInShutterOpenRS2 = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 51;
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= 50;
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 400;
		END_IF	
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE
		THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep 
		AND p_tyNtParamCurr.bProjCurtainSenPrep THEN //curtain
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 375-13-1 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 375-13-1;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE 
		THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND  p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 200 THEN
			IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 247;
			ELSE
				tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 200;
			END_IF
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE
		THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom2.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF
END_ACTION
