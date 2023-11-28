
ACTION Act_OptP0932MagConv3Sen: 
	
	tyP0932MagConv3.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen3;
	tyP0932MagConv3.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen3;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag3AGVInPosSen1;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag3AGVInPosSen2;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
	
	tyP0932MagConv3.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag3FixedClampRS;
	tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag3FixedUnclampRS;
	tyP0932MagConv3.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag3RemoteClampRS;
	tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag3RemoteUnclampRS;
	
	tyP0932MagConv3.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag3SelUnClampRS;
	
	tyP0932MagConv3.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen3;
	tyP0932MagConv3.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen3 OR p_tyDI.bHighMagDetSen3;
	tyP0932MagConv3.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen3;
	tyP0932MagConv3.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen3;
	tyP0932MagConv3.tyCom.tyBtnMagDetSen.bValue				:= p_tyDI.bMag3FixedSideDetect;

	

	
	//Machine Bitmap //23
//	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
//		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl OR  tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl
//			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl  THEN
//		
//			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 2;
//		
//		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl 
//			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl  THEN
//		
//			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 1;
//		
//		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
//			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
//		
//			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 0;
//		
//		END_IF

	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE AND p_tyNtParamCurr.eCustomerReq <> Siemens AND p_tyNtParamCurr.eCustomerReq <> We_Fabricate  THEN
		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 2;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 14;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 13;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 20;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 19;
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjCurtainSenPrep OR p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 386-23;
	
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 111;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 110;
		
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 113;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 112;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 115;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 114;
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 109;
			
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
		IF tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE THEN
			IF tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
	END_IF
	
END_ACTION
