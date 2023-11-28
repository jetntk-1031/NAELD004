
ACTION Act_OptP0204IOMonitor:
	
	IF tyP0204OpsMag3.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0204OpsMag3.tyNaviHide);
		
	ELSIF tyP0204OpsMag3.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0204OpsMag3.tyNaviBack);
		
	END_IF
	
	IF tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnDSBA.bValue						:= p_tyDI.bDSBA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnDSBB.bValue						:= p_tyDI.bDSBB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.bValue			:= p_tyDI.bMag3FixedClampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.bValue		:= p_tyDI.bMag3FixedUnclampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.bValue			:= p_tyDI.bMag3RemoteClampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.bValue			:= p_tyDI.bMag3RemoteUnclampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3PresentSen.bValue			:= p_tyDI.bMagPresentSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen1.bValue			:= p_tyDI.bMag3AGVInPosSen1;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen2.bValue			:= p_tyDI.bMag3AGVInPosSen2;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
		
		tyP0204OpsMag3.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag3SelUnClampRS;
	
		tyP0204OpsMag3.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen3 OR p_tyDI.bHighMagDetSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagDetSen.bValue				:= p_tyDI.bMag3FixedSideDetect;

		//Digital Output
		tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0204OpsMag3.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0204OpsMag3.tyIOMonitor.tyBtnDBAA.bValue						:= p_tyDO.bDBAA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnDBAB.bValue						:= p_tyDO.bDBAB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.bValue		:= p_tyDO.bMag3FixedClampCtrl;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.bValue		:= p_tyDO.bMag3RemoteClampCtrl;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrIn.bValue			:= p_tyDO.bMag3ConvMtrIn;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrOut.bValue			:= p_tyDO.bMag3ConvMtrOut;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag3SelClampCtrl;
	END_IF
	
END_ACTION
