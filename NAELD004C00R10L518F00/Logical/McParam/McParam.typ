(*2019-05-04*)
(**)
(*Action*)

TYPE
	eMcParamAction : 
		(
		McParamActIdle,
		McParamActCreateDir,
		McParamActRead,
		McParamActWrite
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyMcParam : 	STRUCT 
		a_bLFOnline : ARRAY[1..c_diLFClntNum]OF BOOL;
		a_sLFIPAddr : ARRAY[1..c_diLFClntNum]OF STRING[15];
		sMcNm : STRING[30] := 'Triple Magazine Line Loader';
		uiSSaverTmInSec : UINT := 1800;
		bSSaverEn : BOOL := FALSE;
		usiDefaultMcMod : USINT := 0;
		usiDefaultFlippedBrd : USINT := 0;
		diAWPusherAtHmPosInUM : DINT;
		bAWPusherDis : BOOL := FALSE;
		diWidthAtHmPosInUM : DINT;
		diConvInitTmInMS : DINT := 6000;
		diTranOutErrDlyTmInMS : DINT := 12000;
		diMag1ConvRunTmOutInMS : DINT := 20000;
		diMag2ConvRunTmOutInMS : DINT := 20000;
		diMag3ConvRunTmOutInMS : DINT := 20000;
		diMag4ConvRunTmOutInMS : DINT := 20000;
		diTravPosA : DINT;
		diTravPosB : DINT;
		diLifterPosA : DINT;
		diLifterPosB : DINT;
		bAWDis : BOOL := FALSE;
		bMnlAccDat : BOOL := FALSE;
		bAutoStepEn : BOOL := FALSE;
		bVSMEMAEn : BOOL := TRUE;
		bChgParamEn : BOOL := TRUE;
		bHermesRmtEn : BOOL := FALSE;
		bLongBrdEn : BOOL := FALSE;
		bOutShutterDis : BOOL := FALSE;
		bLFEn : BOOL := FALSE;
		bLCSLFEn : BOOL := FALSE;
		bLCSReqRcpEn : BOOL := FALSE;
		bLCSManageRcpEn : BOOL := FALSE;
		bLCSLiveDatEn : BOOL := FALSE;
		bLFLeaderMc : BOOL := FALSE;
		bSectionLeader : BOOL := FALSE;
		bDSWidthChkEn : BOOL := FALSE;
		diLFMcIdxBeforeOven : DINT := 1;
		diLFMcIdxAfterOven : DINT := 1;
		diLFMcIdxBeforeOven2 : DINT := 1;
		diLFMcIdxAfterOven2 : DINT := 1;
		usiLang : USINT := 0;
		tyLftSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyRgtSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=500);
		tyMagConvEntrySenAntiGapDly : tyAntiGapDly := (diSigOnTm:=100,diSigOffTm:=100);
		tyMagConvPresentSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=1000,diSigOffTm:=100);
		eDSCommA : eMcSetCommMod := McSetCommModSMEMA;
		tyDSCommASMEMA : tySMEMAParam := (eSelection:=SMEMASelIPC9851,bStatSigSetGd:=FALSE);
		eDSCommB : eMcSetCommMod := McSetCommModSMEMA;
		tyDSCommBSMEMA : tySMEMAParam := (eSelection:=SMEMASelIPC9851,bStatSigSetGd:=FALSE);
		diWidthOffsetInUM : DINT := 0;
		diMagAutoDetectSenTmInMS : DINT := 2000;
		bAGVComEn : BOOL := FALSE;
		bAutoLogoutEn : BOOL := FALSE;
		diAutoLogoutTmInSec : DINT := 60000;
		sIPAddr : STRING[15] := '192.168.0.32';
		sSubnetMask : STRING[15] := '255.255.255.0';
		eNetworkMod : eNetworkConfigMod := SetIPManually;
		bLFSeqStayActive : BOOL := FALSE;
		bLFBuzMute : BOOL := FALSE;
		bScannerEn : BOOL := TRUE;
		diVID : DINT := 1529;
		diPID : DINT := 8716;
		eAGVComProtocol : eMcAGVCommProtocol := McSetAGVCommOPCUA;
		eMagExMode : eMcMagExchangeMode := McSetMagXcAutoManMode;
		bAIVSizeDisabled : BOOL := FALSE;
		diRS232StartCode1 : DINT := -1;
		diRS232StartCode2 : DINT := -1;
		diRS232EndCode1 : DINT := -1;
		diRS232EndCode2 : DINT := -1;
		diTravOutletFixtoFixPos : DINT := 0;
		bDisableFMWarning : BOOL := FALSE;
		bDBAOnWOAlign : BOOL := FALSE;
		diLMCfbTmInMS : DINT := 20000;
		bMagWidthChkDis : BOOL := FALSE;
		diMag1WidthChkDetDist : DINT := 3000;
		diMag2WidthChkDetDist : DINT := 3000;
		diMag3WidthChkDetDist : DINT := 3000;
		bDBAOnRgtSen : BOOL := FALSE;
		bHermesSvyEn : BOOL := FALSE;
		bHermesScannerEn : BOOL := TRUE;
		bMesRFIDEn : BOOL := FALSE;
		diMesRFIDTOInMS : DINT := 5000;
		diTravLaneBOffset : DINT := 0;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyAntiGapDly : 	STRUCT 
		diSigOnTm : DINT;
		diSigOffTm : DINT;
	END_STRUCT;
	eMcSetCommMod : 
		(
		McSetCommModSMEMA,
		McSetCommModHermes
		);
	eMcAGVCommProtocol : 
		(
		McSetAGVCommOPCUA,
		McSetAGVCommHardIO,
		McSetAGVCommDisabled
		);
	eMcMagExchangeMode : 
		(
		McSetMagXcAutoManMode,
		McSetMagXcAutoMode,
		McSetMagXcManMode
		);
END_TYPE
