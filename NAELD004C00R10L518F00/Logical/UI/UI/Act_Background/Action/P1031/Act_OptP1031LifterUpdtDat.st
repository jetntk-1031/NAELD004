
ACTION Act_OptP1031LifterUpdtDat:
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumCurrPos.diValue		:= p_diLifterBtmActualPos;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiLifterBtmAxisErrID);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapPwr.usiValueIdx	:= BOOL_TO_USINT(p_bLifterBtmPwrOn);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapRst.usiValueIdx	:= BOOL_TO_USINT(NOT p_bLifterBtmAxisErr);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bLifterBtmIsHomed);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBtnUpLmtSen.bValue		:= p_bLifterBtmUpSen;
	tyP1031MagSetTeach.tyMotionStdLifter.tyBtnDownLmtSen.bValue		:= p_bLifterBtmDownSen;
	

	
	//Machine Bitmap
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
		IF p_bLifterBtmIsHomed = TRUE THEN
			
			IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 2;
			ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 3;
			ELSE
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 4;
			END_IF
					
		ELSE
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= 2;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_bLifterBtmIsHomed = TRUE THEN
				
			IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 23;
			ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 24;
			ELSE
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 25;
			END_IF
					
		ELSE
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= 23;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_bLifterBtmIsHomed = TRUE THEN
				
			IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 27;
			ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 28;
			ELSE
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 29;
			END_IF
					
		ELSE
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= 27;
		END_IF
	END_IF	
	
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 400 THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 400;
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple) AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 200 THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bProjMotorizedPullerPrep THEN
		IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 444-2;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE
		THEN
		IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 300 THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF 	

	
END_ACTION
