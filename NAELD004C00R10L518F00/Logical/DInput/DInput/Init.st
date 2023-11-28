(** 2019-03-22 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
//	diMagConv1EntSenOffTm	:= 300;
//	diMagConv2EntSenOffTm	:= 300;
//	diMagConv3EntSenOffTm	:= 300;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_DIAlmData1	:= ADR(tyAlmData1);
	p_DIAlmData2	:= ADR(tyAlmData2);
	p_DIAlmData3	:= ADR(tyAlmData3);
	p_DIAlmData4	:= ADR(tyAlmData4);
	p_DIAlmData5	:= ADR(tyAlmData5);
	p_DIAlmData6	:= ADR(tyAlmData6);	//JOHN
	
	//Output
	p_DI					:= ADR(tyDInput);
	p_DISafetyRlySig		:= ADR(tyDInput.bSafetyRlySig);
	p_DIEStopSig			:= ADR(tyDInput.bEStopSig);
	p_DICoverSWSig			:= ADR(tyDInput.bCoverSWSig);
	p_DIDSBA				:= ADR(tyDInput.bDSBA);
	p_DIDSBB				:= ADR(tyDInput.bDSBB);
	p_DIPullerExtRS			:= ADR(tyDInput.bPullerExtRS);
	p_DIPullerRetRS			:= ADR(tyDInput.bPullerRetRS);
	p_DIPullerRotRmRS		:= ADR(tyDInput.bPullerRotRmRS);
	p_DIPullerRotHmRS		:= ADR(tyDInput.bPullerRotHmRS);
	p_DIConvLftSen			:= ADR(tyDInput.bConvLftSen);
	p_DIConvRgtSen			:= ADR(tyDInput.bConvRgtSen);
	p_DILifterTimingBeltSen	:= ADR(tyDInput.bLifterTimingBeltSen);
	p_DILifterSafetyLmtSW1	:= ADR(tyDInput.bLifterSafetyLmtSW1);
	p_DILifterSafetyLmtSW2	:= ADR(tyDInput.bLifterSafetyLmtSW2);
	p_DIMag1FixedClampRS	:= ADR(tyDInput.bMag1FixedClampRS);
	p_DIMag1FixedUnclampRS	:= ADR(tyDInput.bMag1FixedUnclampRS);
	p_DIMag1RemoteClampRS	:= ADR(tyDInput.bMag1RemoteClampRS);
	p_DIMag1RemoteUnclampRS := ADR(tyDInput.bMag1RemoteUnclampRS);
	p_DIMag2FixedClampRS	:= ADR(tyDInput.bMag2FixedClampRS);
	p_DIMag2FixedUnclampRS	:= ADR(tyDInput.bMag2FixedUnclampRS);
	p_DIMag2RemoteClampRS	:= ADR(tyDInput.bMag2RemoteClampRS);
	p_DIMag2RemoteUnclampRS	:= ADR(tyDInput.bMag2RemoteUnclampRS);
	p_DIMag3FixedClampRS	:= ADR(tyDInput.bMag3FixedClampRS);
	p_DIMag3FixedUnclampRS	:= ADR(tyDInput.bMag3FixedUnclampRS);
	p_DIMag3RemoteClampRS	:= ADR(tyDInput.bMag3RemoteClampRS);
	p_DIMag3RemoteUnclampRS	:= ADR(tyDInput.bMag3RemoteUnclampRS);
	p_DIMag4FixedClampRS	:= ADR(tyDInput.bMag4FixedClampRS);
	p_DIMag4FixedUnclampRS	:= ADR(tyDInput.bMag4FixedUnclampRS);
	p_DIMag4RemoteClampRS	:= ADR(tyDInput.bMag4RemoteClampRS);
	p_DIMag4RemoteUnclampRS	:= ADR(tyDInput.bMag4RemoteUnclampRS);
	p_DIInShutterOpenRS		:= ADR(tyDInput.bInShutterOpenRS);
	p_DIInShutterCloseRS	:= ADR(tyDInput.bInShutterCloseRS);
	p_DIOutShutterOpenRS	:= ADR(tyDInput.bOutShutterOpenRS);
	p_DIOutShutterCloseRS	:= ADR(tyDInput.bOutShutterCloseRS);
	p_DIMagPresentSen1		:= ADR(tyDInput.bMagPresentSen1);
	p_DIMagPresentSen2		:= ADR(tyDInput.bMagPresentSen2);
	p_DIMagPresentSen3		:= ADR(tyDInput.bMagPresentSen3);
	p_DIMagPresentSen4		:= ADR(tyDInput.bMagPresentSen4);
	p_DIMagConvEntSen1		:= ADR(tyDInput.bMagConvEntSen1);
	p_DIMagConvEntSen2		:= ADR(tyDInput.bMagConvEntSen2);
	p_DIMagConvEntSen3		:= ADR(tyDInput.bMagConvEntSen3);
	p_DIMagConvEntSen4		:= ADR(tyDInput.bMagConvEntSen4);
	p_DIMag1AGVInPosSen1	:= ADR(tyDInput.bMag1AGVInPosSen1);
	p_DIMag1AGVInPosSen2	:= ADR(tyDInput.bMag1AGVInPosSen2);
	p_DIMag2AGVInPosSen1	:= ADR(tyDInput.bMag2AGVInPosSen1);
	p_DIMag2AGVInPosSen2	:= ADR(tyDInput.bMag2AGVInPosSen2);
	p_DIMag3AGVInPosSen1	:= ADR(tyDInput.bMag3AGVInPosSen1);
	p_DIMag3AGVInPosSen2	:= ADR(tyDInput.bMag3AGVInPosSen2);
	p_DIMag4AGVInPosSen1	:= ADR(tyDInput.bMag4AGVInPosSen1);
	p_DIMag4AGVInPosSen2	:= ADR(tyDInput.bMag4AGVInPosSen2);
	p_DIMag1OrientChkSen1	:= ADR(tyDInput.bMag1OrientChkSen1);
	p_DIMag1OrientChkSen2	:= ADR(tyDInput.bMag1OrientChkSen2);
	p_DIMag2OrientChkSen1	:= ADR(tyDInput.bMag2OrientChkSen1);
	p_DIMag2OrientChkSen2	:= ADR(tyDInput.bMag2OrientChkSen2);
	p_DIMag3OrientChkSen1	:= ADR(tyDInput.bMag3OrientChkSen1);
	p_DIMag3OrientChkSen2	:= ADR(tyDInput.bMag3OrientChkSen2);
	p_DIMag4OrientChkSen1	:= ADR(tyDInput.bMag4OrientChkSen1);
	p_DIMag4OrientChkSen2	:= ADR(tyDInput.bMag4OrientChkSen2);
	p_DIDSWidthChkSen		:= ADR(tyDInput.bDSWidthChkSen);
	p_DIMagConvHeightSen1	:= ADR(tyDInput.bMagConvHeightSen1);
	p_DIMagConvHeightSen2	:= ADR(tyDInput.bMagConvHeightSen2);
	p_DIMagConvHeightSen3	:= ADR(tyDInput.bMagConvHeightSen3);
	p_DIMagConvHeightSen4	:= ADR(tyDInput.bMagConvHeightSen4);
	p_DIMagConvSmallMagSen1	:= ADR(tyDInput.bMagConvSmallMagSen1);
	p_DIMagConvSmallMagSen2	:= ADR(tyDInput.bMagConvSmallMagSen2);
	p_DIMagConvSmallMagSen3	:= ADR(tyDInput.bMagConvSmallMagSen3);
	p_DIMagConvSmallMagSen4	:= ADR(tyDInput.bMagConvSmallMagSen4);
	p_DIMagConvLargeMagSen1	:= ADR(tyDInput.bMagConvLargeMagSen1);
	p_DIMagConvLargeMagSen2	:= ADR(tyDInput.bMagConvLargeMagSen2);
	p_DIMagConvLargeMagSen3	:= ADR(tyDInput.bMagConvLargeMagSen3);
	p_DIMagConvLargeMagSen4	:= ADR(tyDInput.bMagConvLargeMagSen4);
	p_DIMagConvCAB717MagSen1:= ADR(tyDInput.bMagConvCAB717MagSen1);
	p_DIMagConvCAB717MagSen2:= ADR(tyDInput.bMagConvCAB717MagSen2);
	p_DIMagConvCAB717MagSen3:= ADR(tyDInput.bMagConvCAB717MagSen3);
	p_DIMagConvCAB717MagSen4:= ADR(tyDInput.bMagConvCAB717MagSen4);
	p_DIMag1SelUnclampRS	:= ADR(tyDInput.bMag1SelUnClampRS);
	p_DIMag2SelUnclampRS	:= ADR(tyDInput.bMag2SelUnClampRS);
	p_DIMag3SelUnclampRS	:= ADR(tyDInput.bMag3SelUnClampRS);
	p_DIMag4SelUnclampRS	:= ADR(tyDInput.bMag4SelUnClampRS);
	p_DISOT1Receive 		:= ADR(tyDInput.bSOT1Receive);
	p_DISOT1Error 			:= ADR(tyDInput.bSOT1AIVError);
	p_DISOT1SizeLarge		:= ADR(tyDInput.bSOT1AIVSizeLarge);
	p_DISOT1Ready			:= ADR(tyDInput.bSOT1AIVReady);
	p_DISOT1Available		:= ADR(tyDInput.bSOT1AIVAvailable);
	p_DISOT2Receive 		:= ADR(tyDInput.bSOT2Receive);
	p_DISOT2Error 			:= ADR(tyDInput.bSOT2AIVError);
	p_DISOT2SizeLarge		:= ADR(tyDInput.bSOT2AIVSizeLarge);
	p_DISOT2Ready			:= ADR(tyDInput.bSOT2AIVReady);
	p_DISOT2Available		:= ADR(tyDInput.bSOT2AIVAvailable);
	p_DISOT3Receive 		:= ADR(tyDInput.bSOT3Receive);
	p_DISOT3Error 			:= ADR(tyDInput.bSOT3AIVError);
	p_DISOT3SizeLarge		:= ADR(tyDInput.bSOT3AIVSizeLarge);
	p_DISOT3Ready			:= ADR(tyDInput.bSOT3AIVReady);
	p_DISOT3Available		:= ADR(tyDInput.bSOT3AIVAvailable);
	p_DISOT4Receive 		:= ADR(tyDInput.bSOT4Receive);
	p_DISOT4Error 			:= ADR(tyDInput.bSOT4AIVError);
	p_DISOT4SizeLarge		:= ADR(tyDInput.bSOT4AIVSizeLarge);
	p_DISOT4Ready			:= ADR(tyDInput.bSOT4AIVReady);
	p_DISOT4Available		:= ADR(tyDInput.bSOT4AIVAvailable);
	p_DIFleetManagerActive	:= ADR(tyDInput.bFleetManagerReady);
	p_DIPullerExtSlwSen		:= ADR(tyDInput.bPullerExtSlwSen);
	p_DIPullerRetSlwSen		:= ADR(tyDInput.bPullerRetSlwSen);
	p_DIMtrPullerTorqueSig	:= ADR(tyDInput.bMtrPullerTorqueSig);
	p_DIMtrPullerAlmSig		:= ADR(tyDInput.bMtrPullerAlmSig);
	p_DIMag1SafetyBarExtRS	:= ADR(tyDInput.bMag1SafetyBarExtRS);
	p_DIMag1SafetyBarRetRS	:= ADR(tyDInput.bMag1SafetyBarRetRS);
	p_DIMag2SafetyBarExtRS	:= ADR(tyDInput.bMag2SafetyBarExtRS);
	p_DIMag2SafetyBarRetRS	:= ADR(tyDInput.bMag2SafetyBarRetRS);
	p_DIMag3SafetyBarExtRS	:= ADR(tyDInput.bMag3SafetyBarExtRS);
	p_DIMag3SafetyBarRetRS	:= ADR(tyDInput.bMag3SafetyBarRetRS);
	p_DIMagWidthChkSen		:= ADR(tyDInput.bMagWidthChkSen);
	p_DIPullerAntiJamSen	:= ADR(tyDInput.bPullerAntiJam);

	
	p_DIInShutterOpenRS2	:= ADR(tyDInput.bInShutterOpenRS2);
	p_DIInShutterCloseRS2	:= ADR(tyDInput.bInShutterCloseRS2);
	p_DIInShutterOpenRS3	:= ADR(tyDInput.bInShutterOpenRS3);
	p_DIInShutterCloseRS3	:= ADR(tyDInput.bInShutterCloseRS3);
	p_DIMag1FixedSideDetect	:= ADR(tyDInput.bMag1FixedSideDetect);
	p_DIMag1RemoteSideDetect	:= ADR(tyDInput.bMag1RemoteSideDetect);
	p_DIMag2FixedSideDetect		:= ADR(tyDInput.bMag2FixedSideDetect);
	p_DIMag2RemoteSideDetect	:= ADR(tyDInput.bMag2RemoteSideDetect);
	p_DIMag3FixedSideDetect		:= ADR(tyDInput.bMag3FixedSideDetect);
	p_DIMag3RemoteSideDetect	:= ADR(tyDInput.bMag3RemoteSideDetect);

	p_DICurtainSen			:= ADR(tyDInput.bCurtainSensor);
	p_DIBypCurtainSensorPB	:= ADR(tyDInput.bBypCurtainSensorPB);
	p_DICurtainSafetySig2	:= ADR(tyDInput.bCurtainSafetySig2); 		// JOHN
	p_DIHighMagDetSen1		:= ADR(tyDInput.bHighMagDetSen1); 	// Detect the Magazine Height together with magazine orientation 
	p_DIHighMagDetSen2		:= ADR(tyDInput.bHighMagDetSen2);	//as mag orientation sen is always detecting magazine at any orientation
	p_DIHighMagDetSen3		:= ADR(tyDInput.bHighMagDetSen3);	//For magazine without metal plate detecting
	p_DIConvClrSen			:= ADR(tyDInput.bConvClrSen); 	   //conveyor clear sensor
	
	p_DIDSSafetySig			:= ADR(tyDInput.bDSSafetySig);	//ADD
	p_DIDSUnlockSafetySig	:= ADR(tyDInput.bDSUnlockCoverSig); //ADD
	
	p_DIMcSelfTest	:= ADR(bSelfTest);
	p_DISimServoEn	:= ADR(bSimServoEn);
	
	p_DIOutShutterOpenRS2	:= ADR(tyDInput.bOutShutterOpenRS2);
	p_DIOutShutterCloseRS2	:= ADR(tyDInput.bOutShutterCloseRS2);
	
	p_DITrolleyExtRS1	:= ADR(tyDInput.bTrolleyExtRS1);
	p_DITrolleyExtRS2	:= ADR(tyDInput.bTrolleyExtRS2);
	p_DITrolleyPreSen1	:= ADR(tyDInput.bTrolleyPreSen1);
	p_DITrolleyPreSen2	:= ADR(tyDInput.bTrolleyPreSen2);
	p_DISlotLckSenMag1	:= ADR(tyDInput.bSlotLckSenMag1);
	p_DISlotLckSenMag2	:= ADR(tyDInput.bSlotLckSenMag2);

	(* Always Change If Project Change *)
	
END_PROGRAM