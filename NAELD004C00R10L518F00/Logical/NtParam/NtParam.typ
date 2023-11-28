(*2022-03-15 (note for diProjMagMaxSlt and diProjPullerExtMaxSlt)*)
(**)
(*Action*)

TYPE
	eNtParamAction : 
		(
		NtParamActIdle,
		NtParamActCreateDir,
		NtParamActRead,
		NtParamActWrite,
		NtParamActLoad,
		NtParamActSave
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyNtParam : 	STRUCT 
		tyDISettings : tyDigitalInputSettings := (diSafetyRlySig:=1,diEStopSig:=2,diCoverSWSig:=3,diDSBA:=4,diDSBB:=5,diPullerExtRS:=8,diPullerRetRS:=9,diPullerRotHmRS:=47,diPullerRotRmRS:=48,diConvLftSen:=12,diConvRgtSen:=13,diLifterTimingBeltSen:=16,diLifterSafetyLmtSW1:=0,diLifterSafetyLmtSW2:=0,diMag1FixedClampRS:=35,diMag1FixedUnclampRS:=32,diMag1RemoteClampRS:=0,diMag1RemoteUnclampRS:=64,diMag2FixedClampRS:=36,diMag2FixedUnclampRS:=33,diMag2RemoteClampRS:=0,diMag2RemoteUnclampRS:=65,diMag3FixedClampRS:=37,diMag3FixedUnclampRS:=34,diMag3RemoteClampRS:=0,diMag3RemoteUnclampRS:=66,diMag4FixedClampRS:=0,diMag4FixedUnclampRS:=0,diMag4RemoteClampRS:=0,diMag4RemoteUnclampRS:=0,diInShutterOpenRS:=21,diInShutterCloseRS:=22,diOutShutterOpenRS:=23,diOutShutterCloseRS:=24,diMagPresentSen1:=17,diMagPresentSen2:=18,diMagPresentSen3:=19,diMagPresentSen4:=0,diMagConvEntSen1:=29,diMagConvEntSen2:=30,diMagConvEntSen3:=31,diMagConvEntSen4:=0,diMag1AGVInPosSen1:=0,diMag1AGVInPosSen2:=0,diMag2AGVInPosSen1:=0,diMag2AGVInPosSen2:=0,diMag3AGVInPosSen1:=0,diMag3AGVInPosSen2:=0,diMag4AGVInPosSen1:=0,diMag4AGVInPosSen2:=0,diMag1OrientChkSen1:=42,diMag1OrientChkSen2:=0,diMag2OrientChkSen1:=43,diMag2OrientChkSen2:=0,diMag3OrientChkSen1:=44,diMag3OrientChkSen2:=0,diMag4OrientChkSen1:=0,diMag4OrientChkSen2:=0,diDSWidthChkSen:=0,diMagConvHeightSen1:=68,diMagConvHeightSen2:=70,diMagConvHeightSen3:=72,diMagConvHeightSen4:=0,diMagConvSmallMagSen1:=0,diMagConvSmallMagSen2:=0,diMagConvSmallMagSen3:=0,diMagConvSmallMagSen4:=0,diMagConvLargeMagSen1:=0,diMagConvLargeMagSen2:=0,diMagConvLargeMagSen3:=0,diMagConvLargeMagSen4:=0,diMagConvCAB717MagSen1:=0,diMagConvCAB717MagSen2:=0,diMagConvCAB717MagSen3:=0,diMagConvCAB717MagSen4:=0,diMag1SelUnClampRS:=0,diMag2SelUnClampRS:=0,diMag3SelUnClampRS:=0,diMag4SelUnClampRS:=0,diSOT1Receive:=53,diSOT1AIVError:=49,diSOT1AIVSizeLarge:=50,diSOT1AIVReady:=51,diSOT1AIVAvailable:=52,diSOT2Receive:=58,diSOT2AIVError:=54,diSOT2AIVSizeLarge:=55,diSOT2AIVReady:=56,diSOT2AIVAvailable:=57,diSOT3Receive:=63,diSOT3AIVError:=59,diSOT3AIVSizeLarge:=60,diSOT3AIVReady:=61,diSOT3AIVAvailable:=62,diSOT4Receive:=0,diSOT4AIVError:=0,diSOT4AIVSizeLarge:=0,diSOT4AIVReady:=0,diSOT4AIVAvailable:=0,diFleetManagerReady:=0,diPullerExtSlwSen:=38,diPullerRetSlwSen:=39,diMtrPullerTorqueSig:=0,diMtrPullerAlmSig:=0,diMag1SafetyBarExtRS:=0,diMag1SafetyBarRetRS:=0,diMag2SafetyBarExtRS:=0,diMag2SafetyBarRetRS:=0,diMag3SafetyBarExtRS:=0,diMag3SafetyBarRetRS:=0,diMag4SafetyBarExtRS:=0,diMag4SafetyBarRetRS:=0,diMagWidthChkSen:=45,diPullerAntiJam:=0,diCurtainSensor:=20,diBypCurtainSensorPB:=46,diInShutterOpenRS2:=25,diInShutterCloseRS2:=26,diInShutterOpenRS3:=27,diInShutterCloseRS3:=28,diMag1FixedSideDetect:=67,diMag1RemoteSideDetect:=0,diMag2FixedSideDetect:=69,diMag2RemoteSideDetect:=0,diMag3FixedSideDetect:=71,diMag3RemoteSideDetect:=0,diCurtainSafetySig2:=40,diHighMagDetSen1:=0,diHighMagDetSen2:=0,diHighMagDetSen3:=0,diConvClrSen:=14,diDSUnlockCoverSig:=0,diDSSafetySig:=0,diOutShutterOpenRS2:=0,diOutShutterCloseRS2:=0,diTrolleyExtRS1:=0,diTrolleyExtRS2:=0,diTrolleyPreSen1:=0,diTrolleyPreSen2:=0,diSlotLckSenMag1:=0,diSlotLckSenMag2:=0,diSPARE16:=0,diSPARE17:=0,diSPARE18:=0,diSPARE19:=0,diSPARE20:=0);
		tyDOSettings : tyDigitalOutputSettings := (diSafetyRlyRst:=1,diTLRed:=4,diTLAmber:=3,diTLGreen:=2,diBuzzer:=5,diDBAA:=8,diDBAB:=9,diPullerExtCtrl:=0,diPullerRetCtrl:=0,diRotPullerCtrl:=13,diMag1FixedClampCtrl:=23,diMag1RemoteClampCtrl:=26,diMag2FixedClampCtrl:=24,diMag2RemoteClampCtrl:=27,diMag3FixedClampCtrl:=25,diMag3RemoteClampCtrl:=28,diMag4FixedClampCtrl:=0,diMag4RemoteClampCtrl:=0,diInShutterOpenCtrl:=17,diInShutterCloseCtrl:=18,diOutShutterOpenCtrl:=15,diOutShutterCloseCtrl:=16,diMag1ConvMtrIn:=31,diMag1ConvMtrOut:=32,diMag2ConvMtrIn:=33,diMag2ConvMtrOut:=34,diMag3ConvMtrIn:=35,diMag3ConvMtrOut:=36,diMag4ConvMtrIn:=0,diMag4ConvMtrOut:=0,diPullConvMtrOn:=14,diMag1SelClampCtrl:=0,diMag2SelClampCtrl:=0,diMag3SelClampCtrl:=0,diMag4SelClampCtrl:=0,diSOT1MagError:=43,diSOT1MagSizeLarge:=44,diSOT1MagReady:=45,diSOT1MagAvailable:=46,diSOT2MagError:=47,diSOT2MagSizeLarge:=48,diSOT2MagReady:=49,diSOT2MagAvailable:=50,diSOT3MagError:=51,diSOT3MagSizeLarge:=52,diSOT3MagReady:=53,diSOT3MagAvailable:=54,diSOT4MagError:=0,diSOT4MagSizeLarge:=0,diSOT4MagReady:=0,diSOT4MagAvailable:=0,diMag1ReqToBring:=0,diMag1ReqToGet:=0,diMag2ReqToBring:=0,diMag2ReqToGet:=0,diMag3ReqToBring:=0,diMag3ReqToGet:=0,diMag4ReqToBring:=0,diMag4ReqToGet:=0,diUSBRun:=0,diMtrPshrExt:=0,diMtrPshrRet:=0,diMtrPshrOn:=0,diMtrPshrBrakeRls:=0,diMtrPshrSpdBinBit0:=0,diMtrPshrSpdBinBit1:=0,diMtrPshrSpdBinBit2:=0,diMtrPshrAlmRst:=0,diMag1SafetyBarRetCtrl:=0,diMag2SafetyBarRetCtrl:=0,diMag3SafetyBarRetCtrl:=0,diBypCurtainSen:=39,diBypCurtainSensorPBLED:=6,diRstCurtainSen:=40,diInShutterOpenCtrl2:=19,diInShutterCloseCtrl2:=20,diInShutterOpenCtrl3:=21,diInShutterCloseCtrl3:=22,diMag1FixedClampOpenCtrl:=29,diMag1RemoteClampOpenCtrl:=38,diMag2FixedClampOpenCtrl:=30,diMag2RemoteClampOpenCtrl:=41,diMag3FixedClampOpenCtrl:=37,diMag3RemoteClampOpenCtrl:=42,diMag4FixedClampOpenCtrl:=0,diMag4RemoteClampOpenCtrl:=0,diMcSafetySigToDS:=0,diOutShutterOpenCtrl2:=0,diOutShutterCloseCtrl2:=0,diTrolleyLckCtrl1:=0,diTrolleyLckCtrl2:=0,diSPARE15:=0,diSPARE16:=0,diSPARE17:=0,diSPARE18:=0,diSPARE19:=0,diSPARE20:=0);
		bAWPusherPrep : BOOL := TRUE;
		bAWPrep : BOOL := TRUE;
		bLFPrep : BOOL := TRUE;
		bLeaderMc : BOOL := TRUE;
		bLFUsrSetPrep : BOOL := TRUE;
		diLFWidthLimit : DINT := 3000;
		bLFProdWidthChk : BOOL := FALSE;
		bDSWidthChkPrep : BOOL := FALSE;
		bLCSLFPrep : BOOL := FALSE;
		bLCSReqRcpPrep : BOOL := FALSE;
		bLCSManageRcpPrep : BOOL := FALSE;
		bLCSLiveDatPrep : BOOL := FALSE;
		bIPCSMEMA9851ExtdPrep : BOOL := FALSE;
		bVSMEMAPrep : BOOL := TRUE;
		bHermesPrep : BOOL := TRUE;
		bHermesRmtPrep : BOOL := TRUE;
		bSSaverPrep : BOOL := TRUE;
		diAWPushPulOffsetInUM : DINT := 0;
		diWidthOffsetInUM : DINT := 0;
		sJobNo : STRING[30] := '2023-0301P01';
		usiNtAddr : USINT := 4;
		bProjLifterMagPlatform : BOOL := FALSE;
		bProjLaneBPrep : BOOL := FALSE;
		bProjTopToBtmDefault : BOOL := FALSE;
		bProjLongBrdPrep : BOOL := FALSE;
		bProjInletShutPrep : BOOL := TRUE;
		bProjOutletShutPrep : BOOL := TRUE;
		bProjMag1ConvPrep : BOOL := TRUE;
		bProjMag2ConvPrep : BOOL := TRUE;
		bProjMag3ConvPrep : BOOL := TRUE;
		bProjMag4ConvPrep : BOOL := FALSE;
		bProjMagOrientChkSenPrep : BOOL := TRUE;
		bProjAGVPrep : BOOL := TRUE;
		bProjAGVInPosSenPrep : BOOL := FALSE;
		bProjBypsInitConvPrep : BOOL := TRUE;
		bProjRlsNewProdPrep : BOOL := FALSE;
		bProjBtnInsertRmvMag : BOOL := TRUE;
		bProjSOTSensorPrep : BOOL := FALSE;
		bProjMotorizedPullerPrep : BOOL := TRUE;
		bProjMagSafetyBarPrep : BOOL := FALSE;
		diProjMagMinSlt : DINT := 5;
		diProjMagMaxSlt : DINT := 60;
		eProjMag : eLDMag := LDMagTriple;
		eProjConvDir : eConvDir := ConvDirLToR;
		eProjMagConvDir : eConvDir := ConvDirLToL;
		sUsrFolderProgNm : STRING[15] := 'UsrFolder';
		sLibVersionProgNm : STRING[15] := 'LibVer';
		sTimeProgNm : STRING[15] := 'Time';
		sHWInfoProgNm : STRING[15] := 'HWInfo';
		sHWInfoDevice : STRING[3] := 'IF2';
		tTLChgRcpBlinkTm : TIME := T#500ms;
		tTLErrBlinkTm : TIME := T#500ms;
		tBuzErrOnTm : TIME := T#500ms;
		tBuzErrRestTm : TIME := T#500ms;
		usiBuzErrOnCntr : USINT := 3;
		bBuzErrStopSeqEn : BOOL := FALSE;
		usiBuzErrStopSeqCntr : USINT := 3;
		tTLWarnBlinkTm : TIME := T#500ms;
		tBuzWarnOnTm : TIME := T#500ms;
		tBuzWarnRestTm : TIME := T#5s;
		usiBuzWarnOnCntr : USINT := 3;
		bBuzWarnStopSeqEn : BOOL := FALSE;
		usiBuzWarnStopSeqCntr : USINT := 3;
		tTLWarn1BlinkTm : TIME := T#500ms;
		tBuzWarn1OnTm : TIME := T#500ms;
		tBuzWarn1RestTm : TIME := T#5s;
		usiBuzWarn1OnCntr : USINT := 3;
		bBuzWarn1StopSeqEn : BOOL := FALSE;
		usiBuzWarn1StopSeqCntr : USINT := 3;
		tTLWarn2BlinkTm : TIME := T#500ms;
		tBuzWarn2OnTm : TIME := T#500ms;
		tBuzWarn2RestTm : TIME := T#5s;
		usiBuzWarn2OnCntr : USINT := 3;
		bBuzWarn2StopSeqEn : BOOL := FALSE;
		usiBuzWarn2StopSeqCntr : USINT := 3;
		tTLWarn3BlinkTm : TIME := T#500ms;
		tBuzWarn3OnTm : TIME := T#500ms;
		tBuzWarn3RestTm : TIME := T#5s;
		usiBuzWarn3OnCntr : USINT := 3;
		bBuzWarn3StopSeqEn : BOOL := FALSE;
		usiBuzWarn3StopSeqCntr : USINT := 3;
		tTLWarn4BlinkTm : TIME := T#500ms;
		tBuzWarn4OnTm : TIME := T#500ms;
		tBuzWarn4RestTm : TIME := T#5s;
		usiBuzWarn4OnCntr : USINT := 3;
		bBuzWarn4StopSeqEn : BOOL := FALSE;
		usiBuzWarn4StopSeqCntr : USINT := 3;
		tTLWarn5BlinkTm : TIME := T#500ms;
		tBuzWarn5OnTm : TIME := T#500ms;
		tBuzWarn5RestTm : TIME := T#5s;
		usiBuzWarn5OnCntr : USINT := 3;
		bBuzWarn5StopSeqEn : BOOL := FALSE;
		usiBuzWarn5StopSeqCntr : USINT := 3;
		tBuzAlertOnTm : TIME := T#500ms;
		tBuzAlertRestTm : TIME := T#5s;
		usiBuzAlertOnCntr : USINT := 3;
		bBuzAlertStopSeqEn : BOOL := FALSE;
		usiBuzAlertStopSeqCntr : USINT := 3;
		tTLBlueBlinkTm : TIME := T#500ms;
		tTLAmberBlinkTm : TIME := T#500ms;
		tTLWhiteBlinkTm : TIME := T#500ms;
		tTLRedBlinkTm : TIME := T#500ms;
		tTLGreenBlinkTm : TIME := T#500ms;
		eTLBuzMode : eTLBuzMod := TLBuzModNutek;
		sAlmProgNm : STRING[15] := 'Alarm';
		udiAlmFileKeepDay : UDINT := 30;
		sProdRcpProgNm : STRING[15] := 'ProdRcp';
		sProdRcpListFileNm : STRING[80] := 'ProductRecipeList.dat';
		sProdRcpSingleFileNm : STRING[80] := 'ProductRecipe.dat';
		sMpProdRcpProgNm : STRING[15] := 'MpProdRcp';
		sMpProdRcpFileNm : STRING[255] := 'MpProductRecipe.xml';
		sMpProdRcpPVNm : STRING[100] := 'MpProdRcp:a_tyMpProdRcp1';
		sMagRcpProgNm : STRING[15] := 'MagRcp';
		sMagRcpListFileNm : STRING[80] := 'MagazineRecipeList.dat';
		sMagRcpSingleFileNm : STRING[80] := 'MagazineRecipe.dat';
		sMagRcpProgNm1 : STRING[15] := 'MagRcp1';
		sMagRcpListFileNm1 : STRING[80] := 'MagazineRecipeList1.dat';
		sMagRcpSingleFileNm1 : STRING[80] := 'MagazineRecipe1.dat';
		sMcParamProgNm : STRING[15] := 'McParam';
		sMcParamFileNm : STRING[80] := 'MachineParameter.dat';
		sUsrMgmtProgNm : STRING[15] := 'UsrMgmt';
		sBffr1ProgNm : STRING[15] := 'Buffer 1';
		sBffr1FileNm : STRING[80] := 'Buffer1.dat';
		bBffr1FIFO : BOOL := TRUE;
		sBffr2ProgNm : STRING[15] := 'Buffer 2';
		sBffr2FileNm : STRING[80] := 'Buffer2.dat';
		bBffr2FIFO : BOOL := TRUE;
		sBffr3ProgNm : STRING[15] := 'Buffer 3';
		sBffr3FileNm : STRING[80] := 'Buffer3.dat';
		bBffr3FIFO : BOOL := TRUE;
		sBffr4ProgNm : STRING[15] := 'Buffer 4';
		sBffr4FileNm : STRING[80] := 'Buffer4.dat';
		bBffr4FIFO : BOOL := TRUE;
		sUSSMEMA1ProgNm : STRING[15] := 'Mag1_US';
		tUSSMEMA1RstDlyTm : TIME := T#0s;
		tUSSMEMA1SigInChkTm : TIME := T#100ms;
		sUSSMEMA2ProgNm : STRING[15] := 'Mag2_US';
		tUSSMEMA2RstDlyTm : TIME := T#0s;
		tUSSMEMA2SigInChkTm : TIME := T#100ms;
		sUSSMEMA3ProgNm : STRING[15] := 'Mag3_US';
		tUSSMEMA3RstDlyTm : TIME := T#0s;
		tUSSMEMA3SigInChkTm : TIME := T#100ms;
		sUSSMEMA4ProgNm : STRING[15] := 'Mag4_US';
		tUSSMEMA4RstDlyTm : TIME := T#0s;
		tUSSMEMA4SigInChkTm : TIME := T#100ms;
		sDSSMEMA1ProgNm : STRING[15] := 'Mag1_DS';
		tDSSMEMA1RstDlyTm : TIME := T#0s;
		tDSSMEMA1SigInChkTm : TIME := T#100ms;
		sDSSMEMA2ProgNm : STRING[15] := 'Mag2_DS';
		tDSSMEMA2RstDlyTm : TIME := T#0s;
		tDSSMEMA2SigInChkTm : TIME := T#100ms;
		sDSSMEMA3ProgNm : STRING[15] := 'Mag3_DS';
		tDSSMEMA3RstDlyTm : TIME := T#0s;
		tDSSMEMA3SigInChkTm : TIME := T#100ms;
		sDSSMEMA4ProgNm : STRING[15] := 'Mag4_DS';
		tDSSMEMA4RstDlyTm : TIME := T#0s;
		tDSSMEMA4SigInChkTm : TIME := T#100ms;
		sDSSMEMAAProgNm : STRING[15] := 'DSSMEMA A';
		tDSSMEMAARstDlyTm : TIME := T#500ms;
		tDSSMEMAASigInChkTm : TIME := T#100ms;
		sDSSMEMABProgNm : STRING[15] := 'DSSMEMA B';
		tDSSMEMABRstDlyTm : TIME := T#500ms;
		tDSSMEMABSigInChkTm : TIME := T#100ms;
		sInShutterProgNm : STRING[15] := 'Inlet Shutter';
		bInShutterTwoCtrlIn : BOOL := TRUE;
		tInShutterExtTO : TIME := T#20s;
		tInShutterRetTO : TIME := T#20s;
		sOutShutterProgNm : STRING[15] := 'Outlet Shutter';
		bOutShutterTwoCtrlIn : BOOL := TRUE;
		tOutShutterExtTO : TIME := T#20s;
		tOutShutterRetTO : TIME := T#20s;
		sSelClamp1ProgNm : STRING[15] := 'Sel Clamp 1';
		bSelClamp1TwoCtrlIn : BOOL := FALSE;
		tSelClamp1ExtDlyTm : TIME := T#10s;
		tSelClamp1RetDlyTm : TIME := T#10s;
		sSelClamp2ProgNm : STRING[15] := 'Sel Clamp 2';
		bSelClamp2TwoCtrlIn : BOOL := FALSE;
		tSelClamp2ExtDlyTm : TIME := T#10s;
		tSelClamp2RetDlyTm : TIME := T#10s;
		sSelClamp3ProgNm : STRING[15] := 'Sel Clamp 3';
		bSelClamp3TwoCtrlIn : BOOL := FALSE;
		tSelClamp3ExtDlyTm : TIME := T#10s;
		tSelClamp3RetDlyTm : TIME := T#10s;
		sSelClamp4ProgNm : STRING[15] := 'Sel Clamp 4';
		bSelClamp4TwoCtrlIn : BOOL := FALSE;
		tSelClamp4ExtDlyTm : TIME := T#10s;
		tSelClamp4RetDlyTm : TIME := T#10s;
		sMag1SafetyBarProgNm : STRING[15] := 'Mag1 SafetyBar';
		bMag1SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag1SafetyBarExtTO : TIME := T#20s;
		tMag1SafetyBarRetTO : TIME := T#20s;
		sMag2SafetyBarProgNm : STRING[15] := 'Mag2 SafetyBar';
		bMag2SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag2SafetyBarExtTO : TIME := T#20s;
		tMag2SafetyBarRetTO : TIME := T#20s;
		sMag3SafetyBarProgNm : STRING[15] := 'Mag3 SafetyBar';
		bMag3SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag3SafetyBarExtTO : TIME := T#20s;
		tMag3SafetyBarRetTO : TIME := T#20s;
		sMag4SafetyBarProgNm : STRING[15] := 'Mag4 SafetyBar';
		bMag4SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag4SafetyBarExtTO : TIME := T#20s;
		tMag4SafetyBarRetTO : TIME := T#20s;
		sPullConvProgNm : STRING[15] := 'PullerConv';
		bPullConvOnDirMod : BOOL := FALSE;
		tPullConvMtrOffDlyTm : TIME := T#0s;
		tPullConvPullExtTO : TIME := T#20s;
		tPullConvPullRetTO : TIME := T#20s;
		tPullConvRotHomeTO : TIME := T#20s;
		tPullConvRotRemoteTO : TIME := T#20s;
		sMagConv1ProgNm : STRING[15] := 'MagConv 1';
		bMagConv1OnDirMod : BOOL := FALSE;
		tMagConv1MtrOffDlyTm : TIME := T#0s;
		tMagConv1ClprClampTO : TIME := T#20s;
		tMagConv1ClprUnclampTO : TIME := T#20s;
		sMagConv2ProgNm : STRING[15] := 'MagConv 2';
		bMagConv2OnDirMod : BOOL := FALSE;
		tMagConv2MtrOffDlyTm : TIME := T#0s;
		tMagConv2ClprClampTO : TIME := T#20s;
		tMagConv2ClprUnclampTO : TIME := T#20s;
		sMagConv3ProgNm : STRING[15] := 'MagConv 3';
		bMagConv3OnDirMod : BOOL := FALSE;
		tMagConv3MtrOffDlyTm : TIME := T#0s;
		tMagConv3ClprClampTO : TIME := T#20s;
		tMagConv3ClprUnclampTO : TIME := T#20s;
		sMagConv4ProgNm : STRING[15] := 'MagConv 4';
		bMagConv4OnDirMod : BOOL := FALSE;
		tMagConv4MtrOffDlyTm : TIME := T#0s;
		tMagConv4ClprClampTO : TIME := T#20s;
		tMagConv4ClprUnclampTO : TIME := T#20s;
		sMtrPshrProgNm : STRING[15] := 'MotorizedPuller';
		bMtrPshrDir : BOOL := TRUE;
		tMtrPshrAlmRstTm : TIME := T#1s;
		tMtrPshrAlmTrigTm : TIME := T#1s;
		tMtrPshrExtTO : TIME := T#20s;
		tMtrPshrRetTO : TIME := T#20s;
		diMtrPshrExtSlowSpd : DINT := 1;
		diMtrPshrRetSlowSpd : DINT := 1;
		diMtrPshrExtNomSpd : DINT := 8;
		diMtrPshrExtTorq : DINT := 40;
		diMtrPshrRetTorq : DINT := 50;
		diMtrPshrStartTorq : DINT := 90;
		sAWPushPullProgNm : STRING[15] := 'AWPuller';
		sAWPushPullDevice : STRING[3] := 'IF7';
		usiAWPushPullNode : USINT := 19;
		bAWPushPullDir : BOOL := FALSE;
		bAWPushPullDirBl : BOOL := FALSE;
		diAWPushPullPitchInUM : DINT := 3000;
		diAWPushPullMovBlDistInUM : DINT := 3000;
		tyAWPushPullParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=10000,diAcc:=50);
		tyAWPushPullParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000);
		tyAWPushPullParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=15000);
		tyAWPushPullTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=100,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=40,diPronetSpdLoopGain:=250,diPronetSpdIntegral:=200,diPronetTorqueFilter:=100,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=10,diPronetStopMode:=5);
		eAWPushPullServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sAWProgNm : STRING[15] := 'AWOpen';
		sAWDevice : STRING[3] := 'IF7';
		usiAWNode : USINT := 16;
		bAWDir : BOOL := TRUE;
		bAWDirBl : BOOL := FALSE;
		diAWPitchInUM : DINT := 3000;
		diAWMovBlDistInUM : DINT := 3000;
		tyAWParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=15000,diAcc:=25);
		tyAWParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000); (*estun1048576*)
		tyAWParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=15000);
		tyAWTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=80,diPronetSpdLoopGain:=750,diPronetSpdIntegral:=600,diPronetTorqueFilter:=4,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=5);
		eAWServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sTravProgNm : STRING[15] := 'Trav';
		sTravDevice : STRING[3] := 'IF7';
		usiTravNode : USINT := 18;
		bTravDir : BOOL := FALSE;
		tyTravParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=50000,diAcc:=25);
		tyTravParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=190530,diPrimaryGearRatio:=1,diSecondaryGearRatio:=10); (*belt190530*)
		tyTravParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=100000);
		tyTravTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=20,diPronetSpdLoopGain:=450,diPronetSpdIntegral:=400,diPronetTorqueFilter:=4,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=5);
		eTravServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		diTravAutoSpdLongBrdInUMPS : DINT := 100000;
		sLifterProgNm : STRING[15] := 'LifterBtm';
		sLifterDevice : STRING[3] := 'IF7';
		usiLifterNode : USINT := 17;
		bLifterDir : BOOL := TRUE;
		tyLifterParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=25000,diAcc:=25);
		tyLifterParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=10000);
		tyLifterParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=50000); (*covered 150, w/o cover 50*)
		tyLifterTuning : tyMotionCANTuning := (diAsdaA2Inertia:=62,diAsdaA2PosLoopGain:=64,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=257,diAsdaA2SpdIntegral:=41,diAsdaA2LowPassFltr:=40,diAsdaA2AntiInterGain:=41,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=1116,diLex28LTNIintegralGain_P801:=321,diLex28LTNIVdeIntlGain_P802:=319,diLex28LTNPpropotionalGain_P803:=482,diLex28LTNUSERGAIN_P804:=1000,diLex28NLAFFLPFHZspringFil_P805:=5000,diLex28NLFILTDAMPING_P814:=35,diLex28NLFILTT1_P815:=25,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=40,diPronetSpdLoopGain:=250,diPronetSpdIntegral:=500,diPronetTorqueFilter:=100,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=10,diPronetStopMode:=5);
		eLifterServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sDIProgNm : STRING[15] := 'DInput';
		sAGVSvrProgNm : STRING[15] := 'AGVServer';
		sAGVMag1ProgNm : STRING[15] := 'AGVMag 1';
		sAGVMag2ProgNm : STRING[15] := 'AGVMag 2';
		sAGVMag3ProgNm : STRING[15] := 'AGVMag 3';
		sAGVMag4ProgNm : STRING[15] := 'AGVMag 4';
		sHermesProgNm : STRING[15] := 'Hermes';
		sHermesRetainFileNm : STRING[80] := 'Hermes.dat';
		sHermesConfigFileNm : STRING[80] := 'Hermes.dat';
		sDSHermesAProgNm : STRING[15] := 'DSHermes A';
		udiDSHermesAFileKeepDay : UDINT := 7;
		udiDSHermesAAliveTmInSec : UDINT := 5;
		tDSHermesAConnTO : TIME := T#30s;
		sDSHermesBProgNm : STRING[15] := 'DSHermes B';
		udiDSHermesBFileKeepDay : UDINT := 7;
		udiDSHermesBAliveTmInSec : UDINT := 5;
		tDSHermesBConnTO : TIME := T#30s;
		sRmtHermesProgNm : STRING[15] := 'RmtHermes';
		sRmtHermesConfigFileNm : STRING[80] := 'RmtHermes.dat';
		udiRmtHermesFileKeepDay : UDINT := 7;
		udiRmtHermesAliveTmInSec : UDINT := 5;
		udiRmtHermesSndBffrSize : UDINT := 65536;
		udiRmtHermesRcvBffrSize : UDINT := 65536;
		sLFLeaderProgNm : STRING[15] := 'LFLeader';
		tLFLeaderOnlineChkDlyTm : TIME := T#30s;
		tLFLeaderSetTmOffDlyTm : TIME := T#10s;
		sLFFollowerProgNm : STRING[15] := 'Follower';
		sFollower1ProgNm : STRING[15] := 'Follower 1';
		sFollower2ProgNm : STRING[15] := 'Follower 2';
		sLCSProgNm : STRING[15] := 'LCS';
		sLCSMngRcpProgNm : STRING[15] := 'LCSMngRcp';
		sLCSLFProgNm : STRING[15] := 'LCSLF';
		sOpsTravLifLDProgNm : STRING[15] := 'OpsTravLifLD';
		sOpsMagLD1ProgNm : STRING[15] := 'OpsMagLD 1';
		sOpsMagLD2ProgNm : STRING[15] := 'OpsMagLD 2';
		sOpsMagLD3ProgNm : STRING[15] := 'OpsMagLD 3';
		sOpsMagLD4ProgNm : STRING[15] := 'OpsMagLD 4';
		sOpsMagConvLD1ProgNm : STRING[15] := 'OpsMagConvLD 1';
		sOpsMagConvLD2ProgNm : STRING[15] := 'OpsMagConvLD 2';
		sOpsMagConvLD3ProgNm : STRING[15] := 'OpsMagConvLD 3';
		sOpsMagConvLD4ProgNm : STRING[15] := 'OpsMagConvLD 4';
		sOpsLifMagLDProgNm : STRING[15] := 'OpsLifMagLD';
		tyProdRcpWidth : tyUILmt := (diMax:=400000,diMin:=70000);
		tyProdRcpMinSlt : tyUILmt := (diMax:=60,diMin:=5);
		tyProdRcpMaxSlt : tyUILmt := (diMax:=60,diMin:=5);
		tyProdRcpPitch : tyUILmt := (diMax:=55,diMin:=1);
		tyProdRcpMcModA : tyUILmt := (diMax:=0,diMin:=0);
		tyProdRcpMcModAB : tyUILmt := (diMax:=2,diMin:=0);
		tyUISSaverTm : tyUILmt := (diMax:=1800,diMin:=10);
		tyUIConvInitTm : tyUILmt := (diMax:=60000,diMin:=3000);
		tyUIMagConvRunTm : tyUILmt := (diMax:=60000,diMin:=5000);
		tyUITranOutErrDlyTm : tyUILmt := (diMax:=120000,diMin:=5000);
		tyUIHermesSndAliveTm : tyUILmt := (diMax:=1800000,diMin:=5000);
		tyUIHermesLnID : tyUILmt := (diMax:=1000,diMin:=1);
		tyUIAntiGapSenOnTm : tyUILmt := (diMax:=5000,diMin:=0);
		tyUIAntiGapSenOffTm : tyUILmt := (diMax:=5000,diMin:=0);
		tyUISltToSltDist : tyUILmt := (diMax:=70000,diMin:=1000);
		tyUIAWTargetPos : tyUILmt := (diMax:=240000,diMin:=0);
		tyUIAWStepSize : tyUILmt := (diMax:=240000,diMin:=-240000);
		tyUIAWNomSpd : tyUILmt := (diMax:=15000,diMin:=5000);
		tyUIAWSlwSpd : tyUILmt := (diMax:=15000,diMin:=5000);
		tyUITravTargetPos : tyUILmt := (diMax:=1500000,diMin:=-20000);
		tyUITravStepSize : tyUILmt := (diMax:=1500000,diMin:=-1500000);
		tyUITravNomSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUITravSlwSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUILifterTargetPos : tyUILmt := (diMax:=550000,diMin:=-10000);
		tyUILifterStepSize : tyUILmt := (diMax:=550000,diMin:=-550000);
		tyUILifterNomSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUILifterSlwSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUILFIndexBeforeOven : tyUILmt := (diMax:=100,diMin:=1);
		tyUILFIndexAfterOven : tyUILmt := (diMax:=100,diMin:=1);
		sUIDefaultLoginNm : STRING[30] := 'admin';
		sUIDefaultLoginPw : STRING[30] := 'admin';
		sPullerProgNm : STRING[15] := 'Puller';
		bPullerTwoCtrlIn : BOOL := TRUE;
		tPullerExtTO : TIME := T#15s;
		tPullerRetTO : TIME := T#15s;
		bProjPullerRotCylPrep : BOOL := TRUE;
		diProjPullerExtMaxSlt : DINT := 60;
		diProjPullerExtMinSlt : DINT := 4;
		tShutterWaitTmr : TIME := T#500ms;
		tyUIAWOffset : tyUILmt := (diMax:=2000,diMin:=-2000);
		bMagAutoVerifyPrep : BOOL := FALSE;
		tyUIMcParamMagAutoEntSenTm : tyUILmt := (diMax:=5000,diMin:=0);
		bProjDBAOnRgtSen : BOOL := FALSE;
		bAutoLogoutPrep : BOOL := FALSE;
		tyUIAutoLogoutTm : tyUILmt := (diMax:=1800000,diMin:=60000);
		sMpNtParamFileNm : STRING[255] := 'NutekParameter.xml';
		sMpNtParamPVNm : STRING[100] := 'NtParam:tyMpNtParamCurr1';
		bLFProdWidth2Prep : BOOL := FALSE;
		tLFFollowerOnlineChkDlyTm : TIME := T#30s;
		tyNetworkMode : tyUILmt := (diMax:=1,diMin:=0);
		sUSSOT1ProgNm : STRING[15] := 'USSOT1';
		tUSSOT1RstDlyTm : TIME := T#0s;
		tUSSOT1SigInChkTm : TIME := T#100ms;
		sUSSOT2ProgNm : STRING[15] := 'USSOT2';
		tUSSOT2RstDlyTm : TIME := T#0s;
		tUSSOT2SigInChkTm : TIME := T#100ms;
		sUSSOT3ProgNm : STRING[15] := 'USSOT3';
		tUSSOT3RstDlyTm : TIME := T#0s;
		tUSSOT3SigInChkTm : TIME := T#100ms;
		sUSSOT4ProgNm : STRING[15] := 'USSOT4';
		tUSSOT4RstDlyTm : TIME := T#0s;
		tUSSOT4SigInChkTm : TIME := T#100ms;
		sDSSOT1ProgNm : STRING[15] := 'DSSOT1';
		tDSSOT1RstDlyTm : TIME := T#0s;
		tDSSOT1SigInChkTm : TIME := T#100ms;
		sDSSOT2ProgNm : STRING[15] := 'DSSOT2';
		tDSSOT2RstDlyTm : TIME := T#0s;
		tDSSOT2SigInChkTm : TIME := T#100ms;
		sDSSOT3ProgNm : STRING[15] := 'DSSOT3';
		tDSSOT3RstDlyTm : TIME := T#0s;
		tDSSOT3SigInChkTm : TIME := T#100ms;
		sDSSOT4ProgNm : STRING[15] := 'DSSOT4';
		tDSSOT4RstDlyTm : TIME := T#0s;
		tDSSOT4SigInChkTm : TIME := T#100ms;
		sMachineProgNm : STRING[15] := 'Machine';
		sMachine1ProgNm : STRING[15] := 'Machine1';
		sUSBRdrProgNm : STRING[15] := 'USBReader';
		bUSBScannerPrep : BOOL := FALSE;
		bBCodeScannerPrep : BOOL := FALSE;
		bScanPrep : BOOL := FALSE;
		tyVID : tyUILmt := (diMax:=65535,diMin:=0);
		tyPID : tyUILmt := (diMax:=65535,diMin:=0);
		bSOTReadyOnFirst : BOOL := TRUE;
		bShowMESName : BOOL := FALSE;
		bShowFMorMESActive : BOOL := FALSE;
		eScannerType : eScannerType := RS232;
		bRS232ScannerPrep : BOOL := FALSE;
		sRS232ProgNm : STRING[15] := 'RS232';
		tyProdRcpMtrPshrExtSpd : tyUILmt := (diMax:=8,diMin:=1);
		tyProdRcpMtrPshrExtTorq : tyUILmt := (diMax:=100,diMin:=10);
		diPullerHeightInMM : DINT := 54;
		bProjDSFixToFixRail : BOOL := FALSE;
		bProjWorkOrderOPCUA : BOOL := FALSE;
		bProjServoPullerPusherPrep : BOOL := FALSE;
		sPPProgNm : STRING[15] := 'ServoPullPusher';
		sPPDevice : STRING[3] := 'IF7';
		usiPPNode : USINT := 20;
		bPPDir : BOOL := FALSE;
		bPPDirBl : BOOL := FALSE;
		diPPPitchInUM : DINT := 3000; (*NA*)
		diPPMovBlDistInUM : DINT := 0;
		tyPPParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=15000,diAcc:=25);
		tyPPParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000); (*estun1048576*)
		tyPPParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=150000);
		tyPPTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=80,diPronetSpdLoopGain:=750,diPronetSpdIntegral:=600,diPronetTorqueFilter:=4,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=5);
		ePPServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		bProjCurtainSenPrep : BOOL := FALSE; (*Shutter Keep Ret(Open)*)
		bProjMagHeightChkPrep : BOOL := FALSE;
		diTravGoToMagWidthChkPt1 : DINT := 3000;
		diTravGoToMagWidthChkPt2 : DINT := 3000;
		diTravGoToMagWidthChkPt3 : DINT := 3000;
		tyPPTorqParam : PPTorqParam := (usiStartTorque:=22,uiRatio:=889); (*Ratio= x/100*)
		bProjLifTravMnlLoad : BOOL := FALSE;
		eCustomerReq : eCustomer := NA;
		bProjShutter2Prep : BOOL := FALSE;
		bProjShutter3Prep : BOOL := FALSE;
		bHermesSvyPrep : BOOL := FALSE; (*Supervisory Hermes Preparation*)
		bHermesSvyFirstMcInTheLine : BOOL := FALSE; (*Turn On this for Loader / Destacker Only. Other type of machine turns off.*)
		bHermesSvyMagTypeMc : BOOL := FALSE; (*Turn On this for Loader (Magazine type machine) Only. Other type of machine turns off.
*)
		sSvyHermesProgNm : STRING[15] := 'SvyHermes';
		sSvyHermesConfigFileNm : STRING[80] := 'SvyHermes.dat';
		udiSvyHermesFileKeepDay : UDINT := 7;
		udiSvyHermesAliveTmInSec : UDINT := 5;
		tSvyHermesConnTO : TIME := T#30s;
		sSvyHermesRetainFileNm : STRING[80] := 'WorkOrder.dat';
		sDSHermesRetainFileNm : STRING[80] := 'BoardData.dat';
		rMachineCycleTime : REAL := 6.0; (*1.0 = 1 second*)
		rAutoWidthCycleTime : REAL := 30.0; (*30.0 = 30 seconds*)
		bHermesScannerPrep : BOOL := FALSE; (*Turn On if machine has fixed scanner or handheld scanner*)
		iInput : INT := 1; (*Total Inlet, Single Track = 1, Dual Track = 2, and so on*)
		iOutput : INT := 1; (*Total Outlet, Single Track = 1, Dual Track = 2, and so on*)
		bProjAutoRcpPrep : BOOL := FALSE;
		tyAutoRcpParamLmt : AutoRcpLmt := (diThicknessInUM:=5500,diMaxTopClearamceInUM:=30000,diMaxBottomCleranceInUM:=6700);
		eAutoRcpPrecededBy : eAutoRcpPreceded := PrecededBySelf;
		bchineseprep : BOOL := FALSE;
		bgermanprep : BOOL := FALSE;
		bProjOutShutter2Prep : BOOL := FALSE;
		siProjCntrPullLmt : SINT := -1; (*(-1) index to next slot ; (x) no. of brd to alarm*)
		bUIConvDirRL : BOOL := FALSE;
		bProjTrolleyLckPrep : BOOL := FALSE;
		sTrolleyLckProgNm : STRING[15] := 'TrolleyLck';
		bTrolleyLckTwoCtrlIn : BOOL := FALSE;
		tTrolleyLckExtTO : TIME := T#6s;
		tTrolleyLckRetTO : TIME := T#6s;
		sTrolleyLckProgNm2 : STRING[15] := 'TrolleyLck2';
		bTrolleyLckTwoCtrlIn2 : BOOL := FALSE;
		tTrolleyLckExtTO2 : TIME := T#6s;
		tTrolleyLckRetTO2 : TIME := T#6s;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUILmt : 	STRUCT 
		diMax : DINT;
		diMin : DINT;
	END_STRUCT;
	PPTorqParam : 	STRUCT 
		usiStartTorque : USINT;
		uiRatio : UINT;
	END_STRUCT;
	eScannerType : 
		(
		RS232,
		USB
		);
	eCustomer : 
		(
		NA,
		Bosch_China,
		Bosch_Portugal,
		Bosch_America,
		Bosch_Malaysia,
		Siemens,
		We_Fabricate,
		reserve1,
		reserve2,
		reserve3,
		reserve4,
		reserve5,
		reserve6,
		reserve7,
		reserve8,
		reserve9
		);
END_TYPE

(**)
(*Auto Rcp*)

TYPE
	eAutoRcpPreceded : 
		(
		PrecededBySelf,
		PrecededByF1,
		PrecededByF2
		);
	AutoRcpLmt : 	STRUCT 
		diThicknessInUM : DINT;
		diMaxTopClearamceInUM : DINT;
		diMaxBottomCleranceInUM : DINT;
		reserve1 : DINT;
		reserve2 : DINT;
		reserve3 : DINT;
	END_STRUCT;
END_TYPE
