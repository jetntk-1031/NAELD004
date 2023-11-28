
ACTION Act_OptP1026TravUpdtDat:
	
	tyP1026McSetTeach.tyMotionStdTrav.tyNumCurrPos.diValue			:= p_diTravActualPos;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiTravAxisErrID);
	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bTravPwrOn);
	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bTravAxisErr);
	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bTravIsHomed);
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnFrontLmtSen.bValue		:= p_bTravFrontSen;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnRearLmtSen.bValue		:= p_bTravRearSen;
	
	//Machine Bitmap
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
		IF p_bTravIsHomed = TRUE THEN
			IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 5;
			ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 6;
			ELSE
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 7;
			END_IF
		ELSE
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= 5;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_bTravIsHomed = TRUE THEN
			IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 26;
			ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 27;
			ELSE
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 28;
			END_IF
		ELSE
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= 26;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_bTravIsHomed = TRUE THEN
			IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 45;
			ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 46;
			ELSE
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 47;
			END_IF
		ELSE
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= 45;
		END_IF
	END_IF
	
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 400 THEN
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 400;
		END_IF		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF 	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 100 THEN
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF 	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 447-5;
			ELSE				
				tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 200;
			END_IF
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF 	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 200 THEN
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
		IF 	tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 300 THEN
			tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF
	
END_ACTION
