
ACTION Act_OptP0921OutletShutterSen: 

	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnOpenRS.bValue	:= p_tyDI.bOutShutterOpenRS;
	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnCloseRS.bValue	:= p_tyDI.bOutShutterCloseRS;
	
	//Machine Bitmap //15open ,16close
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
		IF p_tyDI.bOutShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 1;
		ELSE
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 0;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_tyDI.bOutShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 28;
		ELSE
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 27;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_tyDI.bOutShutterOpenRS = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 51;
		ELSE
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 50;
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN //same with bosch curtain
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 400;
		END_IF	
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE 
		THEN
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE
		AND p_tyNtParamCurr.bProjCurtainSenPrep THEN //curtain
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 387-15 THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 387-15;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE 
		THEN
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE  AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		THEN
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 300 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 454-15;
			ELSE
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE  AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE 
		THEN
		IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 200 THEN
			IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 247;
			ELSE
				IF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN
					tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 484-15;
				ELSE
					tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 200;
				END_IF
			END_IF
		END_IF
	END_IF 	
	END_ACTION	
