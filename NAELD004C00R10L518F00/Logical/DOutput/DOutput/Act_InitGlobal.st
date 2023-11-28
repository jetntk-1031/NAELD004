(** 2019-05-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkPullerExtCtrl ACCESS p_Pneu2SenPullerExtCtrl;
	p_bLinkPullerRetCtrl ACCESS p_Pneu2SenPullerRetCtrl;
	p_bLinkPullConvExtCtrl ACCESS p_PullConvPullerExtCtrl;
	p_bLinkPullConvRetCtrl ACCESS p_PullConvPullerRetCtrl;
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	p_bLinkNtParamProjSOTSenPrep ACCESS p_NtParamProjSOTSenPrep;
		
	p_bLinkAGVCommRdy1 ACCESS p_OpsMagConvLD1AGVCommRdy;
	p_bLinkAGVCommRdy2 ACCESS p_OpsMagConvLD2AGVCommRdy;
	p_bLinkAGVCommRdy3 ACCESS p_OpsMagConvLD3AGVCommRdy;
	p_bLinkOpsBypCurtainLED ACCESS p_OpsTravLifLDBypCurtainLED;	//Bypass Curtain Push Button LED
	p_bLinkOpsBypCurtainSen ACCESS p_OpsTravLifLDBypCurtainSenCtrl; //Bypass the Curtain Sensor
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_UIDOAct;
	p_tyDOSettings ACCESS p_NtParamDOSettings;
	p_bManual ACCESS p_UIUIMnlMod;
	p_bSafetyRlyRst ACCESS p_RstErrSafetyRlyRst;
	
	p_bTLRed ACCESS p_TLBuzRed;
//	p_bTLAmber ACCESS p_TLBuzAmber; //For Job 2023-0061
//	p_bTLAmber ACCESS p_TLBuzWhite; 
	p_bTLGreen ACCESS p_TLBuzGreen;
	p_bBuzzer ACCESS p_TLBuzBeep;
	p_bDBAA ACCESS p_DSSMEMAADBA;
	p_bDBAB ACCESS p_DSSMEMABDBA;
	p_bRotPullerCtrl ACCESS p_PullConvRotRemoteCtrl;
	p_bMag1FixedClampCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl;
	p_bMag1RemoteClampCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
	p_bMag2FixedClampCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMag2RemoteClampCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMag3FixedClampCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMag3RemoteClampCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	p_bMag4FixedClampCtrl ACCESS p_MagConv2Clp4FixClprClampCtrl;
	p_bMag4RemoteClampCtrl ACCESS p_MagConv2Clp4RmtClprClampCtrl;
	
	p_bMag1FixedClampOpenCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl;
	p_bMag1RemoteClampOpenCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
	p_bMag2FixedClampOpenCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMag2RemoteClampOpenCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMag3FixedClampOpenCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMag3RemoteClampOpenCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	
	p_bInShutterOpenCtrl ACCESS p_Pneu2SenInShutterRetCtrl;
	p_bInShutterCloseCtrl ACCESS p_Pneu2SenInShutterExtCtrl;
	p_bOutShutterOpenCtrl ACCESS p_Pneu2SenOutShutterRetCtrl;
	p_bOutShutterCloseCtrl ACCESS p_Pneu2SenOutShutterExtCtrl;
	p_bMag1ConvMtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bMag1ConvMtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bMag2ConvMtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bMag2ConvMtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bMag3ConvMtrIn ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bMag3ConvMtrOut ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bMag4ConvMtrIn ACCESS p_MagConv2Clp4MtrSigOnOrLToR;
	p_bMag4ConvMtrOut ACCESS p_MagConv2Clp4MtrDirOrRToL;
	p_bPullConvMtrOn ACCESS p_PullConvMtrSigOnOrLToR;
	p_bMag1SelClampCtrl ACCESS p_PneuNoSenSelClamp1RetCtrl;
	p_bMag2SelClampCtrl ACCESS p_PneuNoSenSelClamp2RetCtrl; 
	p_bMag3SelClampCtrl ACCESS p_PneuNoSenSelClamp3RetCtrl; 
	p_bMag4SelClampCtrl ACCESS p_PneuNoSenSelClamp4RetCtrl; 
	p_bUSBRun	ACCESS	p_UIUSBRun;
	
	p_bMtrPshrExt ACCESS p_MtrPshrCW;
	p_bMtrPshrRet ACCESS p_MtrPshrCCW;
	p_bMtrPshrOn ACCESS p_MtrPshrSigOn;
	p_bMtrPshrBrakeRls ACCESS p_MtrPshrBrake;
	p_bMtrPshrSpdBinBit0 ACCESS p_MtrPshrSpdBinBit0;
	p_bMtrPshrSpdBinBit1 ACCESS p_MtrPshrSpdBinBit1;
	p_bMtrPshrSpdBinBit2 ACCESS p_MtrPshrSpdBinBit2;
	p_bMtrPshrAlmRst ACCESS p_MtrPshrAlmRst;
	
	p_bMag1SafetyBarRetCtrl ACCESS p_Pneu2SMag1SafetyBarRetCtrl;
	p_bMag2SafetyBarRetCtrl ACCESS p_Pneu2SMag2SafetyBarRetCtrl;
	p_bMag3SafetyBarRetCtrl ACCESS p_Pneu2SMag3SafetyBarRetCtrl;
	
	p_bInShutterOpenCtrl2 ACCESS p_Pneu2SenInShutterRetCtrl2;
	p_bInShutterCloseCtrl2 ACCESS p_Pneu2SenInShutterExtCtrl2;
	p_bInShutterOpenCtrl3 ACCESS p_Pneu2SenInShutterRetCtrl3;
	p_bInShutterCloseCtrl3 ACCESS p_Pneu2SenInShutterExtCtrl3;
	
//	p_bBypCurtainSensorPBLED ACCESS p_OpsTravLifLDBypCurtainLED;	//JOHN
//	p_bBypCurtainSenCtrl ACCESS p_OpsTravLifLDBypCurtainSenCtrl; //JOHN
	p_bUIMachineSafetySigToDS ACCESS p_UIMachineSafetySigToDS; //ADD
	
	p_bOutShutterOpenCtrl2 ACCESS p_Pneu2SenOutShutterRetCtrl2;
	p_bOutShutterCloseCtrl2 ACCESS p_Pneu2SenOutShutterExtCtrl2;
	
	p_bTrolleyExtCtrl ACCESS p_PneuExtSenTrllyExtCtrl;
	p_bTrolleyExtCtrl2 ACCESS p_PneuExtSenTrlly2ExtCtrl;
	(* Always Change If Project Change *)
	
END_ACTION
