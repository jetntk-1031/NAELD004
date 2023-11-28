
ACTION Act_OptP0935UpdtDat:
	
	tyP0935Lifter.tyMotionStd.tyNumCurrPos.diValue			:= p_diLifterBtmActualPos;
	tyP0935Lifter.tyMotionStd.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiLifterBtmAxisErrID);
	tyP0935Lifter.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bLifterBtmPwrOn);
	tyP0935Lifter.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bLifterBtmAxisErr);
	tyP0935Lifter.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bLifterBtmIsHomed);
	tyP0935Lifter.tyMotionStd.tyBtnUpLmtSen.bValue			:= p_bLifterBtmUpSen;
	tyP0935Lifter.tyMotionStd.tyBtnDownLmtSen.bValue		:= p_bLifterBtmDownSen;
	
	//Machine Bitmap //default:2dn 3mid 4top
	IF  (p_tyNtParamCurr.eProjMag = LDMagDual)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		THEN
			IF p_bLifterBtmIsHomed = TRUE THEN
			
					IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
						tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 2;
					ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
						tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 3;
					ELSE
						tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 4;
					END_IF
					
			ELSE
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= 2;
			END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
			IF p_bLifterBtmIsHomed = TRUE THEN
				
				IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 23;
				ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 24;
				ELSE
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 25;
				END_IF
					
			ELSE
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= 23;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE
		THEN
		IF p_bLifterBtmIsHomed = TRUE THEN
				
			IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 27;
			ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 28;
			ELSE
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 29;
			END_IF
					
		ELSE
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= 27;
		END_IF
	END_IF	
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 400;
		END_IF	
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE
		THEN
			IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 100;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE
		THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			//2,3,4//	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 255;
			ELSE
				IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 444-2;
				ELSIF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 474-2;
				ELSE
					tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
				END_IF
			END_IF
		END_IF
		
	ELSIF (p_tyNtParamCurr.eProjMag = LDMagDual OR p_tyNtParamCurr.eProjMag = LDMagTriple)
		AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE 
		THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE	
		AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE	
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 367-2 THEN
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 367-2;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE	
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE  THEN
		IF 	tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx < 420-2 THEN
			tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0935Lifter.tyMotionStd.tyBitmapMc.uiValueIdx + 420-2;
		END_IF
	END_IF
	

	
END_ACTION
