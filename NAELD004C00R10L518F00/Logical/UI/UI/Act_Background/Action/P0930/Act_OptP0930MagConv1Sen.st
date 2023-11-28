
ACTION Act_OptP0930MagConv1Sen: 
	
	tyP0930MagConv1.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen1;
	tyP0930MagConv1.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen1;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag1AGVInPosSen1;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag1AGVInPosSen2;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
	
	tyP0930MagConv1.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag1FixedClampRS;
	tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag1FixedUnclampRS;
	tyP0930MagConv1.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag1RemoteClampRS;
	tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag1RemoteUnclampRS;

	tyP0930MagConv1.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag1SelUnClampRS;
	
	tyP0930MagConv1.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen1;
	tyP0930MagConv1.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen1 OR p_tyDI.bHighMagDetSen1;
	tyP0930MagConv1.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen1;
	tyP0930MagConv1.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen1;
	
	tyP0930MagConv1.tyCom.tyBtnMagDetSen.bValue				:= p_tyDI.bMag1FixedSideDetect;
	tyP0930MagConv1.tyCom.tyBtnSltLckSen.bValue				:= p_tyDI.bSlotLckSenMag1;

	//Machine Bitmap //17
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 44;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 43;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 49;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 48;
			
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 42;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 2;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			 OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 20;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 19;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 16;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 15;
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE AND p_tyNtParamCurr.eCustomerReq <> Siemens AND p_tyNtParamCurr.eCustomerReq <> We_Fabricate THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 2;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 16;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 15;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 22;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 21;
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep OR p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 384-17;

	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 68;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 67;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 70;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 69;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 72;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 71;
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 66;
			
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN // no longer belt type //17 base
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 493-17; 
			ELSIF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 463-17;
			ELSE
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 100;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
		IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF
	

END_ACTION
