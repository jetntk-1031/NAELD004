
ACTION Act_Main_P0920:
	
	//Machine Bitmap//51 lifter 52 Trav 50 aw 53 puller conv 55 magconv 152 puller aw ;54 shutter 55safe bar
	IF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 301; //351
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 408-51;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 409-52;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 297;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 410-54;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 200;
		
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 301;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 297;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 4;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 4;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 2;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 2;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 2;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 6;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 16;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 16;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 6;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 8;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
		
	ELSE
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	END_IF
	
	//Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	
	//Pusher Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	
	//Pneumatic
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep OR p_tyNtParamCurr.bProjOutletShutPrep);
	
	//Shutter
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiRtStat.0  := NOT(p_tyNtParamCurr.bProjInletShutPrep OR p_tyNtParamCurr.bProjOutletShutPrep);
	
	//Magazine Conveyor
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjMag1ConvPrep OR p_tyNtParamCurr.bProjMag2ConvPrep OR p_tyNtParamCurr.bProjMag3ConvPrep) OR p_tyNtParamCurr.bProjLifTravMnlLoad ;
//	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMag2ConvPrep;
//	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMag3ConvPrep AND (p_tyNtParamCurr.eProjMag = LDMagTriple));
	
	//Safety Bar
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagSafetyBarPrep;
	//TrolleyLck
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnTrolleyLck.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjTrolleyLckPrep;

END_ACTION
