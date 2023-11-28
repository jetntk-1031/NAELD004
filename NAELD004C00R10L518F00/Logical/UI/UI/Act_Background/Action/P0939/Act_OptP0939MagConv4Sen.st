
ACTION Act_OptP0939MagConv4Sen: 
	
	tyP0939MagConv4.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen4;
	tyP0939MagConv4.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen4;
	tyP0939MagConv4.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag4AGVInPosSen1;
	tyP0939MagConv4.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag4AGVInPosSen2;
	tyP0939MagConv4.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag4OrientChkSen1;
	tyP0939MagConv4.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag4OrientChkSen2;
	
	tyP0939MagConv4.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag4FixedClampRS;
	tyP0939MagConv4.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag4FixedUnclampRS;
	tyP0939MagConv4.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag4RemoteClampRS;
	tyP0939MagConv4.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag4RemoteUnclampRS;
	
	tyP0939MagConv4.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag4SelUnClampRS;
	
	tyP0939MagConv4.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen4;
	tyP0939MagConv4.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen4;
	tyP0939MagConv4.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen4;
	tyP0939MagConv4.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen4;

	

	
	//Machine Bitmap
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl OR  tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl  THEN
		
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 2;
		
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl 
			OR tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl  THEN
		
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 1;
		
		ELSIF tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl THEN
		
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 0;
		
		END_IF

	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 2;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 1;
		
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 14;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 13;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 20;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 19;
				
		ELSIF tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 0;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 118;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 117;
		
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 120;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 119;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 122;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 121;
				
		ELSIF tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl OR tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl
			OR tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl OR tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= 116;
			
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx < 100 THEN
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		IF tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx < 200 THEN
			tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx	:= tyP0939MagConv4.tyCom.tyBitmapMc.usiValueIdx + 200;
		END_IF
	
	END_IF
	
END_ACTION
