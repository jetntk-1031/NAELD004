(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiMax ACCESS ADR(c_udiDOutputMax);
	p_eAct ACCESS ADR(eAct);
	p_tyDOSettings ACCESS ADR(tyDOSettings);
	p_bManual ACCESS ADR(bManual);
	
	p_bSafetyRlyRst ACCESS ADR(bSafetyRlyRst);
	p_bTLRed ACCESS ADR(bTLRed);
	p_bTLAmber ACCESS ADR(bTLAmber);
	p_bTLGreen ACCESS ADR(bTLGreen);
	p_bBuzzer ACCESS ADR(bBuzzer);
	p_bDBAA ACCESS ADR(bDBAA);
	p_bDBAB ACCESS ADR(bDBAB);
	p_bPullerExtCtrl ACCESS ADR(bPullerExtCtrl);
	p_bPullerRetCtrl ACCESS ADR(bPullerRetCtrl);
	p_bRotPullerCtrl ACCESS ADR(bRotPullerCtrl);
	p_bMag1FixedClampCtrl ACCESS ADR(bMag1FixedClampCtrl);
	p_bMag1RemoteClampCtrl ACCESS ADR(bMag1RemoteClampCtrl);
	p_bMag2FixedClampCtrl ACCESS ADR(bMag2FixedClampCtrl);
	p_bMag2RemoteClampCtrl ACCESS ADR(bMag2RemoteClampCtrl);
	p_bMag3FixedClampCtrl ACCESS ADR(bMag3FixedClampCtrl);
	p_bMag3RemoteClampCtrl ACCESS ADR(bMag3RemoteClampCtrl);
	p_bMag1FixedClampOpenCtrl ACCESS ADR (bMag1FixedClampOpenCtrl);
	p_bMag1RemoteClampOpenCtrl ACCESS ADR (bMag1RemoteClampOpenCtrl);
	p_bMag2FixedClampOpenCtrl ACCESS ADR (bMag2FixedClampOpenCtrl);
	p_bMag2RemoteClampOpenCtrl ACCESS ADR (bMag2RemoteClampOpenCtrl);
	p_bMag3FixedClampOpenCtrl ACCESS ADR (bMag3FixedClampOpenCtrl);
	p_bMag3RemoteClampOpenCtrl ACCESS ADR (bMag3RemoteClampOpenCtrl);
	p_bInShutterOpenCtrl ACCESS ADR(bInShutterOpenCtrl);
	p_bInShutterCloseCtrl ACCESS ADR(bInShutterCloseCtrl);
	p_bOutShutterOpenCtrl ACCESS ADR(bOutShutterOpenCtrl);
	p_bOutShutterCloseCtrl ACCESS ADR(bOutShutterCloseCtrl);
	p_bMag1ConvMtrIn ACCESS ADR(bMag1ConvMtrIn);
	p_bMag1ConvMtrOut ACCESS ADR(bMag1ConvMtrOut);
	p_bMag2ConvMtrIn ACCESS ADR(bMag2ConvMtrIn);
	p_bMag2ConvMtrOut ACCESS ADR(bMag2ConvMtrOut);
	p_bMag3ConvMtrIn ACCESS ADR(bMag3ConvMtrIn);
	p_bMag3ConvMtrOut ACCESS ADR(bMag3ConvMtrOut);
	p_bPullConvMtrOn ACCESS ADR(bPullConvMtrOn);
	p_bMag1SelClampCtrl ACCESS ADR(bMag1SelClampCtrl);
	p_bMag2SelClampCtrl ACCESS ADR(bMag2SelClampCtrl);
	p_bMag3SelClampCtrl ACCESS ADR(bMag3SelClampCtrl);
	p_bSOTMagError1 ACCESS ADR(bSOTMagError1);
	p_bSOTMagError2 ACCESS ADR(bSOTMagError2);
	p_bSOTMagError3 ACCESS ADR(bSOTMagError3);
	p_bSOTMagError4 ACCESS ADR(bSOTMagError4);
	p_bSOTMagReady1 ACCESS ADR(bSOTMagReady1);
	p_bSOTMagReady2 ACCESS ADR(bSOTMagReady2);
	p_bSOTMagReady3 ACCESS ADR(bSOTMagReady3);
	p_bSOTMagReady4 ACCESS ADR(bSOTMagReady4);
	p_bSOTMagAvailable1 ACCESS ADR(bSOTMagAvailable1);
	p_bSOTMagAvailable2 ACCESS ADR(bSOTMagAvailable2);
	p_bSOTMagAvailable3 ACCESS ADR(bSOTMagAvailable3);
	p_bSOTMagAvailable4 ACCESS ADR(bSOTMagAvailable4);
	p_bSOTMagSizeLarge1 ACCESS ADR(bSOTMagSLarge1);
	p_bSOTMagSizeLarge2 ACCESS ADR(bSOTMagSLarge2);
	p_bSOTMagSizeLarge3 ACCESS ADR(bSOTMagSLarge3);
	p_bSOTMagSizeLarge4 ACCESS ADR(bSOTMagSLarge4);
	p_bRequestToBring1 ACCESS ADR(bRequestToBring1);
	p_bRequestToGet1 ACCESS ADR(bRequestToGet1);
	p_bRequestToBring2 ACCESS ADR(bRequestToBring2);
	p_bRequestToGet2 ACCESS ADR(bRequestToGet2);
	p_bRequestToBring3 ACCESS ADR(bRequestToBring3);
	p_bRequestToGet3 ACCESS ADR(bRequestToGet3);
	p_bRequestToBring4 ACCESS ADR(bRequestToBring4);
	p_bRequestToGet4 ACCESS ADR(bRequestToGet4);
	p_bMag1SafetyBarRetCtrl ACCESS ADR (bMag1SafetyBarRetCtrl);
	p_bMag2SafetyBarRetCtrl ACCESS ADR (bMag2SafetyBarRetCtrl);
	p_bMag3SafetyBarRetCtrl ACCESS ADR (bMag3SafetyBarRetCtrl);
	p_bBypCurtainSen ACCESS ADR (bBypCurtainSen);
	p_bRstCurtainSen ACCESS ADR (bRstCurtainSen);
	p_bBypCurtainPBLED ACCESS ADR (bBypCurtainPBLED);
	p_bTrolleyExtCtrl ACCESS ADR (bTrolleyExtCtrl);
	p_bTrolleyExtCtrl2 ACCESS ADR (bTrolleyExtCtrl2);

END_ACTION
