
ACTION Act_OptP0202IOMonitor:
	
	IF tyP0202OpsMag1.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0202OpsMag1.tyNaviHide);
		
	ELSIF tyP0202OpsMag1.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0202OpsMag1.tyNaviBack);
		
	END_IF
	
	IF tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnDSBA.bValue						:= p_tyDI.bDSBA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnDSBB.bValue						:= p_tyDI.bDSBB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.bValue			:= p_tyDI.bMag1FixedClampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.bValue		:= p_tyDI.bMag1FixedUnclampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.bValue			:= p_tyDI.bMag1RemoteClampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.bValue			:= p_tyDI.bMag1RemoteUnclampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1PresentSen.bValue			:= p_tyDI.bMagPresentSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen1.bValue			:= p_tyDI.bMag1AGVInPosSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen2.bValue			:= p_tyDI.bMag1AGVInPosSen2;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
		
		tyP0202OpsMag1.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag1SelUnClampRS;
	
		tyP0202OpsMag1.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen1 OR p_tyDI.bHighMagDetSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagDetSen.bValue				:= p_tyDI.bMag1FixedSideDetect;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyExtRS.bValue				:= p_tyDI.bTrolleyExtRS1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyPresentSen.bValue			:= p_tyDI.bTrolleyPreSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnSltLckSen.bValue				:= p_tyDI.bSlotLckSenMag1;

		//Digital Output
		tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0202OpsMag1.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0202OpsMag1.tyIOMonitor.tyBtnDBAA.bValue						:= p_tyDO.bDBAA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnDBAB.bValue						:= p_tyDO.bDBAB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.bValue		:= p_tyDO.bMag1FixedClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.bValue		:= p_tyDO.bMag1RemoteClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrIn.bValue			:= p_tyDO.bMag1ConvMtrIn;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrOut.bValue			:= p_tyDO.bMag1ConvMtrOut;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag1SelClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTrllyExtCtrl.bValue				:= p_tyDO.bTrolleyLckCtrl1;
	END_IF
	
END_ACTION
