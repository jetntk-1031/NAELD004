
ACTION Act_OptP0920ChgPage:
	
	IF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bValue		:= FALSE;
		eChgPage														:= UIP0921Shutter;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv1 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0930MagConv1;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv2 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0931MagConv2;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv3 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0932MagConv3;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv4 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0939MagConv4;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPullerConv.bValue		:= FALSE;
		eChgPage														:= UIP0933PullConv;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bRtCompl				:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bValue				:= FALSE;
		eChgPage														:= UIP0934AW;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bRtCompl			:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bValue			:= FALSE;
		eChgPage														:= UIP0935Lifter;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bRtCompl			:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bValue				:= FALSE;
		eChgPage														:= UIP0936Trav;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bValue		:= FALSE;
		eChgPage														:= UIP0937AWPushOrPuller;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bValue	:= FALSE;
		eChgPage														:= UIP0923SafetyBar;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnTrolleyLck.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnTrolleyLck.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnTrolleyLck.bValue	:= FALSE;
		eChgPage														:= UIP0924TrolleyLck;
	END_IF
	
END_ACTION
