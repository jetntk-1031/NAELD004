
ACTION Act_OptP0206IOMonitor:
	
	IF tyP0206OpsMag4.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0206OpsMag4.tyNaviHide);
		
	ELSIF tyP0206OpsMag4.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0206OpsMag4.tyNaviBack);
		
	END_IF
	
	IF tyP0206OpsMag4.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0206OpsMag4.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0206OpsMag4.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0206OpsMag4.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0206OpsMag4.tyIOMonitor.tyBtnDSBA.bValue						:= p_tyDI.bDSBA;
		tyP0206OpsMag4.tyIOMonitor.tyBtnDSBB.bValue						:= p_tyDI.bDSBB;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClmpRS.bValue			:= p_tyDI.bMag4FixedClampRS;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedUnclmpRS.bValue		:= p_tyDI.bMag4FixedUnclampRS;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtClmpRS.bValue			:= p_tyDI.bMag4RemoteClampRS;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RmtUnclmpRS.bValue			:= p_tyDI.bMag4RemoteUnclampRS;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4PresentSen.bValue			:= p_tyDI.bMagPresentSen4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4AIVInPosSen1.bValue			:= p_tyDI.bMag4AGVInPosSen1;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4AIVInPosSen2.bValue			:= p_tyDI.bMag4AGVInPosSen2;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4OrientationChkSen1.bValue	:= p_tyDI.bMag4OrientChkSen1;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4OrientationChkSen2.bValue	:= p_tyDI.bMag4OrientChkSen2;
		
		tyP0206OpsMag4.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag4SelUnClampRS;
	
		tyP0206OpsMag4.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen4;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen4;
		
		//Digital Output
		tyP0206OpsMag4.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0206OpsMag4.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0206OpsMag4.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0206OpsMag4.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0206OpsMag4.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0206OpsMag4.tyIOMonitor.tyBtnDBAA.bValue						:= p_tyDO.bDBAA;
		tyP0206OpsMag4.tyIOMonitor.tyBtnDBAB.bValue						:= p_tyDO.bDBAB;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4FixedClampCtrl.bValue		:= p_tyDO.bMag4FixedClampCtrl;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4RemoteClampCtrl.bValue		:= p_tyDO.bMag4RemoteClampCtrl;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvMtrIn.bValue			:= p_tyDO.bMag4ConvMtrIn;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMag4ConvMtrOut.bValue			:= p_tyDO.bMag4ConvMtrOut;
		tyP0206OpsMag4.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag4SelClampCtrl;
	END_IF
	
END_ACTION
