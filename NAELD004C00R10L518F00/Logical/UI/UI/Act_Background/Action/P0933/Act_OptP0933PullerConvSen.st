
ACTION Act_OptP0933PullerConvSen: 
	
	tyP0933PullConv.tyCom.tyBtnLftSen.bValue	:= p_tyDI.bConvLftSen;
	tyP0933PullConv.tyCom.tyBtnRgtSen.bValue	:= p_tyDI.bConvRgtSen;
	tyP0933PullConv.tyCom.tyBtnExtRS.bValue		:= p_tyDI.bPullerExtRS;
	tyP0933PullConv.tyCom.tyBtnRetRS.bValue		:= p_tyDI.bPullerRetRS;
	tyP0933PullConv.tyCom.tyBtnRotHmRS.bValue	:= p_tyDI.bPullerRotHmRS;
	tyP0933PullConv.tyCom.tyBtnRotRmRS.bValue	:= p_tyDI.bPullerRotRmRS;

	tyP0933PullConv.tyCom.tyBtnExtSlwSen.bValue	:= p_tyDI.bPullerExtSlwSen;
	tyP0933PullConv.tyCom.tyBtnRetSlwSen.bValue	:= p_tyDI.bPullerRetSlwSen;
	
	tyP0933PullConv.tyCom.tyBtnAlarmSig.bValue	:= p_tyDI.bMtrPullerAlmSig;
	tyP0933PullConv.tyCom.tyBtnTorqueSig.bValue	:= p_tyDI.bMtrPullerTorqueSig;
	tyP0933PullConv.tyCom.tyBtnAntiJamSen.bValue := p_tyDI.bPullerAntiJam;
	tyP0933PullConv.tyCom.tyBtnConvClrSen.bValue := p_tyDI.bConvClrSen;

	//Machine Bitmap //8
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		
		IF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl THEN
			IF p_tyDI.bPullerExtRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4; //ext rm //12
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2; //ret //10
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl THEN
			IF p_tyDI.bPullerExtRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3; //ext hm //11
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1; //9
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyDC.tyBtnExt.bRtCompl THEN
			IF p_tyDI.bPullerRotRmRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4; //ext//12
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3; //11
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRet.bRtCompl THEN
			IF p_tyDI.bPullerRotRmRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2; //10
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1; //9
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnExit.bRtCompl OR tyP0933PullConv.tyFB.tyBtnStop.bRtCompl
			OR tyP0933PullConv.tyDC.tyBtnStart.bRtCompl OR tyP0933PullConv.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0; //8
			
		END_IF
		
		IF p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 200 AND  p_tyNtParamCurr.bProjTopToBtmDefault = TRUE  THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 200;
			END_IF
			IF tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 108-8 AND  p_tyNtParamCurr.bProjTopToBtmDefault = FALSE  THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 108-8;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE AND p_tyNtParamCurr.bProjPullerRotCylPrep = FALSE THEN //fix (siemens)
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 389-8 THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 389-8;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE AND p_tyNtParamCurr.bProjCurtainSenPrep = FALSE THEN 
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE AND p_tyNtParamCurr.bProjCurtainSenPrep AND p_tyNtParamCurr.bProjTopToBtmDefault = TRUE THEN 
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 379-8 THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 379-8;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMotorizedPullerPrep = TRUE AND p_tyNtParamCurr.bProjCurtainSenPrep = TRUE AND p_tyNtParamCurr.bProjTopToBtmDefault = FALSE  THEN 
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 430-8 THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 430-8;
			END_IF
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		
		IF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl THEN
			IF p_tyDI.bPullerExtRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4; //ext rm //12
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2; //ret //10
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl THEN
			IF p_tyDI.bPullerExtRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3; //ext hm //11
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1; //9
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyDC.tyBtnExt.bRtCompl THEN
			IF p_tyDI.bPullerRotRmRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4; //ext//12
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3; //11
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRet.bRtCompl THEN
			IF p_tyDI.bPullerRotRmRS = TRUE THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2; //10
			ELSE
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1; //9
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnExit.bRtCompl OR tyP0933PullConv.tyFB.tyBtnStop.bRtCompl
			OR tyP0933PullConv.tyDC.tyBtnStart.bRtCompl OR tyP0933PullConv.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0; //8
			
		END_IF
			
		IF p_tyNtParamCurr.bProjMotorizedPullerPrep = FALSE THEN
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 200 AND  p_tyNtParamCurr.bProjTopToBtmDefault = TRUE AND p_tyNtParamCurr.bUIConvDirRL THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 488-8;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMotorizedPullerPrep THEN
			IF	tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 200 AND  p_tyNtParamCurr.bProjTopToBtmDefault = TRUE AND p_tyNtParamCurr.bUIConvDirRL THEN
				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 458-8;
			END_IF
		END_IF
//	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
//		
//		IF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl THEN
//				
//			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4;//== 2
//				
//		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl THEN
//			IF p_tyDI.bPullerExtRS THEN
//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2;
//			ELSIF p_tyDI.bPullerRetRS THEN
//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1;
//			END_IF
//			//tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3;
//				
//		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyDC.tyBtnExt.bRtCompl THEN
//				
//			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2;
//				
//		ELSIF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRet.bRtCompl THEN
//				
//			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1;
//				
//		ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnExit.bRtCompl OR tyP0933PullConv.tyFB.tyBtnStop.bRtCompl
//			OR tyP0933PullConv.tyDC.tyBtnStart.bRtCompl OR tyP0933PullConv.tyDC.tyBtnStop.bRtCompl THEN
//				
//			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
//				
//		END_IF
//		
//			
//		IF tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
//			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 200;
//		END_IF
		
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
	
	//		IF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl THEN
	//		
	//			IF p_tyDI.bPullerExtRS = TRUE THEN
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4;
	//			ELSE
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2;
	//			END_IF
	//		
	//		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl THEN
	//		
	//			IF p_tyDI.bPullerExtRS = TRUE THEN
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3;
	//			ELSE
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1;
	//			END_IF
	//		
	//		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyDC.tyBtnExt.bRtCompl THEN
	//		
	//			IF p_tyDI.bPullerRotRmRS = TRUE THEN
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 4;
	//			ELSE
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 3;
	//			END_IF
	//		
	//		ELSIF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRet.bRtCompl THEN
	//		
	//			IF p_tyDI.bPullerRotRmRS = TRUE THEN
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 2;
	//			ELSE
	//				tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 1;
	//			END_IF

		IF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl THEN
				
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
				
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl THEN
				
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
				
		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PullConv.tyDC.tyBtnExt.bRtCompl THEN
				
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
				
		ELSIF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PullConv.tyDC.tyBtnRet.bRtCompl THEN
				
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
				
		ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl OR tyP0933PullConv.tyFB.tyBtnExit.bRtCompl OR tyP0933PullConv.tyFB.tyBtnStop.bRtCompl
			OR tyP0933PullConv.tyDC.tyBtnStart.bRtCompl OR tyP0933PullConv.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
		
		IF tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
			tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PullConv.tyCom.tyBitmapMc.uiValueIdx + 200;
		END_IF
	
	END_IF
END_ACTION
