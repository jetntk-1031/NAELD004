
ACTION Act_OptP0934UpdtDat:
	
	tyP0934AW.tyMotionStd.tyNumCurrPos.diValue			:= p_diAWOpenActualPos;
	tyP0934AW.tyMotionStd.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiAWOpenAxisErrID);
	tyP0934AW.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bAWOpenPwrOn);
	tyP0934AW.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bAWOpenAxisErr);
	tyP0934AW.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bAWOpenIsHomed);
	tyP0934AW.tyMotionStd.tyBtnOpenLmtSen.bValue		:= p_bAWOpenOpenSen;
	tyP0934AW.tyMotionStd.tyBtnCloseLmtSen.bValue		:= p_bAWOpenCloseSen;
	
	//Machine Bitmap //0open ,1close
	IF p_bAWOpenIsHomed = TRUE THEN
		IF p_diAWOpenActualPos <= (p_tyNtParamCurr.tyProdRcpWidth.diMax / 2) THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 0;
		ELSE
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 1;
		END_IF
	ELSE
		tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE THEN
			IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
				tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 426;
			END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 450;
			ELSIF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN 
				tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 480;
			ELSE			
				tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
			END_IF
		END_IF
	ELSIF  p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 426;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjPullerRotCylPrep = FALSE THEN //fix (siemens)
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 340 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 340;
		END_IF
	ELSIF  p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE THEN
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
		END_IF
	ELSIF  p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE 
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN
		IF 	tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 365 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 365;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE
		AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE THEN
		IF  tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx < 426 THEN
			tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0934AW.tyMotionStd.tyBitmapMc.uiValueIdx + 426;
		END_IF
	END_IF
END_ACTION
