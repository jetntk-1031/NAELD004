
ACTION Act_OptP0931MagConv2Sen: 
	
	tyP0931MagConv2.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen2;
	tyP0931MagConv2.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen2;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag2AGVInPosSen1;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag2AGVInPosSen2;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag2OrientChkSen1;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag2OrientChkSen2;
	
	tyP0931MagConv2.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag2FixedClampRS;
	tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag2FixedUnclampRS;
	tyP0931MagConv2.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag2RemoteClampRS;
	tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag2RemoteUnclampRS;

	tyP0931MagConv2.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag2SelUnClampRS;
	
	tyP0931MagConv2.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen2;
	tyP0931MagConv2.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen2 OR p_tyDI.bHighMagDetSen2;
	tyP0931MagConv2.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen2;
	tyP0931MagConv2.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen2;
	tyP0931MagConv2.tyCom.tyBtnMagDetSen.bValue				:= p_tyDI.bMag2FixedSideDetect;
	tyP0931MagConv2.tyCom.tyBtnSltLckSen.bValue				:= p_tyDI.bSlotLckSenMag2;

	//Machine Bitmap //20
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 44;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 43;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 49;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 48;
			
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 42;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 2;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 19;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 18;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 15;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 14;
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE AND p_tyNtParamCurr.eCustomerReq <> Siemens AND p_tyNtParamCurr.eCustomerReq <> We_Fabricate THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 2;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 15;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 14;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 21;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 20;
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep OR p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 385-20;

	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 72;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 71;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 74;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 73;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 76;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 75;
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 70;
			
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			IF p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN // no longer belt type //20 base
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 494-20;
			ELSIF p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 464-20;
			ELSE
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 100;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 300 THEN
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 300;
		END_IF
	END_IF
	
END_ACTION
