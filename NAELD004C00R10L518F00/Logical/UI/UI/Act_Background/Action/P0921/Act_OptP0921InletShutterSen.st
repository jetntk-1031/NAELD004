
ACTION Act_OptP0921InletShutterSen: 

	tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnOpenRS.bValue		:= p_tyDI.bInShutterOpenRS;
	tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnCloseRS.bValue	:= p_tyDI.bInShutterCloseRS;
	
	//Machine Bitmap //inlet 13close ,14open ; outlet 15open 16close ;; curtain close 
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)	THEN
		IF p_tyDI.bInShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 1;
		ELSIF p_tyNtParamCurr.bProjCurtainSenPrep THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 0+4; //16
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 0;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF p_tyDI.bInShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 28;
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 27;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF p_tyDI.bInShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 51;
		ELSE
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 50;
		END_IF
	END_IF
	
	//Add
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 400;
		END_IF	
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 300 THEN //100 cannot use
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 300;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep 
		AND p_tyNtParamCurr.bProjCurtainSenPrep THEN //curtain
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 375-14 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 375-14;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND  p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 200 THEN
			IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 247;
			ELSE
				IF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN
					tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 482-13;
				ELSE
					tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 200;
				END_IF
			END_IF
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
		IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 300 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 452-13;
			ELSE
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	END_IF
	
END_ACTION

