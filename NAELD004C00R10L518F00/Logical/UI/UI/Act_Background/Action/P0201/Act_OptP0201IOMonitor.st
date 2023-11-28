
ACTION Act_OptP0201IOMonitor:
	
	IF tyP0201OpsTravLifter.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviHide);
		
	ELSIF tyP0201OpsTravLifter.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat));
		IF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyLyrProdRear.uiRtStat));
		END_IF
		p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviBack);
		
	END_IF
	
	IF tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlySig.bValue			:= p_tyDI.bSafetyRlySig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnDSBA.bValue					:= p_tyDI.bDSBA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnDSBB.bValue					:= p_tyDI.bDSBB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerExtRS.bValue			:= p_tyDI.bPullerExtRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRetRS.bValue			:= p_tyDI.bPullerRetRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRotCylHmRS.bValue		:= p_tyDI.bPullerRotHmRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRotCylRmRS.bValue		:= p_tyDI.bPullerRotRmRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvLftSen.bValue				:= p_tyDI.bConvLftSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvRgtSen.bValue				:= p_tyDI.bConvRgtSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterTmBeltSen.bValue		:= p_tyDI.bLifterTimingBeltSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterSafetyLmtSw1.bValue		:= p_tyDI.bLifterSafetyLmtSW1;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterSafetyLmtSw2.bValue		:= p_tyDI.bLifterSafetyLmtSW2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.bValue	:= p_tyDI.bInShutterOpenRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.bValue	:= p_tyDI.bInShutterCloseRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.bValue	:= p_tyDI.bOutShutterOpenRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.bValue	:= p_tyDI.bOutShutterCloseRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnAntiJamSen.bValue				:= p_tyDI.bPullerAntiJam;
	
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen2.bValue	:= p_tyDI.bInShutterCloseRS2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen3.bValue	:= p_tyDI.bInShutterCloseRS3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen2.bValue	:= p_tyDI.bInShutterOpenRS2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen3.bValue	:= p_tyDI.bInShutterOpenRS3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen2.bValue	:= p_tyDI.bOutShutterCloseRS2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen2.bValue	:= p_tyDI.bOutShutterOpenRS2;
	
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnBypCurtainSensorPB.bValue		:= p_tyDI.bBypCurtainSensorPB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvClrSen.bValue				:= p_tyDI.bConvClrSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnMagWidthChk.bValue			:= p_tyDI.bMagWidthChkSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetySigDS.bValue			:= p_tyDI.bDSSafetySig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUnlockSigDS.bValue			:= p_tyDI.bDSUnlockCoverSig;

		//Digital Output
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlyRst.bValue			:= p_tyDO.bSafetyRlyRst;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLGreen.bValue				:= p_tyDO.bTLGreen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.bValue				:= p_tyDO.bTLAmber;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnDBAA.bValue					:= p_tyDO.bDBAA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnDBAB.bValue					:= p_tyDO.bDBAB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerExtCtrl.bValue			:= p_tyDO.bPullerExtCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerRetCtrl.bValue			:= p_tyDO.bPullerRetCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnRotPullerCtrl.bValue			:= p_tyDO.bRotPullerCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.bValue		:= p_tyDO.bInShutterOpenCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.bValue		:= p_tyDO.bInShutterCloseCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.bValue		:= p_tyDO.bOutShutterOpenCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.bValue	:= p_tyDO.bOutShutterCloseCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPullerConvMtrOn.bValue		:= p_tyDO.bPullConvMtrOn;
		
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl2.bValue	:= p_tyDO.bInShutterCloseCtrl2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl2.bValue		:= p_tyDO.bInShutterOpenCtrl2;	
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl3.bValue	:= p_tyDO.bInShutterCloseCtrl3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl3.bValue		:= p_tyDO.bInShutterOpenCtrl3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl2.bValue	:= p_tyDO.bOutShutterCloseCtrl2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl2.bValue	:= p_tyDO.bOutShutterOpenCtrl2;

		tyP0201OpsTravLifter.tyIOMonitor.tyBtnBypCurtainSensorCtrl.bValue	:= p_tyDO.bBypCurtainSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnRstCurtainSensor.bValue		:= p_tyDO.bRstCurtainSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSftySglToUSDS.bValue			:= p_tyDO.bMcSafetySigToDS;
	
	END_IF
	
END_ACTION
