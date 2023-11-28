
ACTION Act_OptP0936UpdtDat:
	
	tyP0936Trav.tyMotionStd.tyNumCurrPos.diValue		:= p_diTravActualPos;
	tyP0936Trav.tyMotionStd.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiTravAxisErrID);
	tyP0936Trav.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bTravPwrOn);
	tyP0936Trav.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bTravAxisErr);
	tyP0936Trav.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bTravIsHomed);
	tyP0936Trav.tyMotionStd.tyBtnFrontLmtSen.bValue		:= p_bTravFrontSen;
	tyP0936Trav.tyMotionStd.tyBtnRearLmtSen.bValue		:= p_bTravRearSen;
	
	//Machine Bitmap
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
			IF p_bTravIsHomed = TRUE THEN
				IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 5;
				ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 6;
				ELSE
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 7;
				END_IF
			ELSE
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= 5;
		END_IF
			
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
			IF p_bTravIsHomed = TRUE THEN
				IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 26;
				ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 27;
				ELSE
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 28;
				END_IF
			ELSE
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= 26;
			END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple
		THEN
		IF p_bTravIsHomed = TRUE THEN
			IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 45;
			ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 46;
			ELSE
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 47;
			END_IF
		ELSE
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= 45;
		END_IF
	END_IF
	
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 400;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 305-5;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				//5,6,7
			ELSE
				IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 447-5;
				ELSIF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 477-5;
				ELSE
					tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 200; //travLif
				END_IF
				
			END_IF
		END_IF
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 370-5 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 370-5;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE THEN
		IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 423-5 THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 423-5;
		END_IF
	END_IF
END_ACTION
