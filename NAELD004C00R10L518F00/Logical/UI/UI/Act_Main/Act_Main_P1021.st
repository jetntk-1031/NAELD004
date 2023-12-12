
ACTION Act_Main_P1021:

	//Machine Setting - General
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValueMin	:= p_tyNtParamCurr.tyUIConvInitTm.diMin;
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValueMax	:= p_tyNtParamCurr.tyUIConvInitTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.diValueMin	:= p_tyNtParamCurr.tyUITranOutErrDlyTm.diMin;
	tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.diValueMax	:= p_tyNtParamCurr.tyUITranOutErrDlyTm.diMax;
	
	//LMC feedback time
	tyP1021McSetGen.tyGen.tyNumLMCFbTm.uiRtStat	:= NOT p_tyNtParamCurr.bProjWorkOrderOPCUA;

	//Screen Saver
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValueMin	:= p_tyNtParamCurr.tyUISSaverTm.diMin;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValueMax	:= p_tyNtParamCurr.tyUISSaverTm.diMax;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	tyP1021McSetGen.tyGen.tyBtnSSaverEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	tyP1021McSetGen.tyGen.tyTxtLblSSaver.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	
	//Width
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyTxtWidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyBtnAWDis.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPrep;
	
	//Pusher Auto Width AT Home
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin-p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValueMax	:= (p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000) / 2;
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP1021McSetGen.tyGen.tyTxtAWPusherAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
		
//	tyP1021McSetGen.tyGen.tyNumWidthOffset.uiRtStat.0 :=  NOT p_tyNtParamCurr.bAWPrep;
//	tyP1021McSetGen.tyGen.tyTxtWidthOffset.uiRtStat.0 :=  NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.uiRtStat.0 := TRUE;
	tyP1021McSetGen.tyGen.tyTxtWidthOffset.uiRtStat.0 := TRUE;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValueMin :=  p_tyNtParamCurr.tyUIAWOffset.diMin;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValueMax :=  p_tyNtParamCurr.tyUIAWOffset.diMax;
	//Hermes Remote Configuration
	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesRmtPrep;
	
	//Machine Mode
	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.uiRtStat.0 := TRUE;
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueMaxIdx	:= 2;
	ELSE
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueMaxIdx	:= 0;
	END_IF
	
	//Flipped Board
	tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.usiValueMaxIdx	:= 2;
	
	//Fix To Fix Rail Machine
	IF p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjDSFixToFixRail THEN
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.uiRtStat.0 := FALSE;
		tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.uiRtStat.0 := FALSE;
	ELSE
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.uiRtStat.0 := TRUE;
		tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.uiRtStat.0 := TRUE;
	END_IF
	
	//Trav & Lifter For Lane B
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValueMin		:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValueMax		:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValueMin		:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValueMax		:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValueMin		:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValueMax		:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValueMin		:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValueMax		:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyTxtTravPosLaneB.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjDSFixToFixRail = FALSE);;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjDSFixToFixRail = FALSE);;
	tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjDSFixToFixRail = FALSE);;
	tyP1021McSetGen.tyGen.tyTxtLiftPosLaneB.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	
	
	//Machine Setting - Magazine Inlet Sensor Auto Detect Timer
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValueMin	:= p_tyNtParamCurr.tyUIMcParamMagAutoEntSenTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValueMax	:= p_tyNtParamCurr.tyUIMcParamMagAutoEntSenTm.diMax;
	
	
	//Vitrual SMEMA
	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bVSMEMAPrep;
	
	//Long Board
	tyP1021McSetGen.tyGen.tyBtnLongBrdEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLongBrdPrep;
	
	//Shutter
	tyP1021McSetGen.tyGen.tyBtnOutShutterDis.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
	
	//Magazine Conveyor
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag1ConvRunTm.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag2ConvRunTm.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMag3ConvPrep AND (p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple)AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag3ConvRunTm.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMag3ConvPrep AND (p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple)AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMag4ConvPrep AND (p_tyNtParamCurr.eProjMag = LDMagQuadruple)AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag4ConvRunTm.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMag4ConvPrep AND (p_tyNtParamCurr.eProjMag = LDMagQuadruple)AND p_tyNtParamCurr.bProjLifTravMnlLoad = FALSE);
	
	//Hermes Supervisory Configuration
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.uiRtStat.0		:= NOT p_tyNtParamCurr.bHermesSvyPrep; //new for Hermes 1.3
	tyP1021McSetGen.tyGen.tyBtnRFIDEn.uiRtStat.0			:= NOT (p_tyNtParamCurr.bHermesSvyPrep OR p_tyNtParamCurr.eCustomerReq = We_Fabricate) ; 
	tyP1021McSetGen.tyGen.tyNumRFIDWrTO.uiRtStat.0			:= NOT p_tyNtParamCurr.bHermesSvyPrep; 

	//Parameter
	tyP1021McSetGen.tyGen.tyStringMcNm.sValue					:= p_tyMcParamCurr.sMcNm;
	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueIdx		:= p_tyMcParamCurr.usiDefaultMcMod;
	tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.usiValueIdx	:= p_tyMcParamCurr.usiDefaultFlippedBrd;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValue					:= UINT_TO_DINT(p_tyMcParamCurr.uiSSaverTmInSec);
	tyP1021McSetGen.tyGen.tyBtnSSaverEn.bValue					:= p_tyMcParamCurr.bSSaverEn;
	tyP1021McSetGen.tyGen.tyStringIPAddr.sValue					:= p_sHWInfoIPAddr;
	tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue				:= p_sHWInfoSubnetMask;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValue				:= p_tyMcParamCurr.diWidthAtHmPosInUM;
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValue				:= p_tyMcParamCurr.diConvInitTmInMS;
	tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.diValue			:= p_tyMcParamCurr.diTranOutErrDlyTmInMS;
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValue			:= p_tyMcParamCurr.diMag1ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValue			:= p_tyMcParamCurr.diMag2ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValue			:= p_tyMcParamCurr.diMag3ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.diValue			:= p_tyMcParamCurr.diMag4ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValue			:= p_tyMcParamCurr.diMagAutoDetectSenTmInMS;
	
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValue				:= p_tyMcParamCurr.diTravPosA;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue				:= p_tyMcParamCurr.diLifterPosA;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValue				:= p_tyMcParamCurr.diTravPosB;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue				:= p_tyMcParamCurr.diLifterPosB;
	
	tyP1021McSetGen.tyGen.tyBtnAWDis.bValue						:= p_tyMcParamCurr.bAWDis;
	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bValue				:= p_tyMcParamCurr.bAWPusherDis;
	tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bValue					:= p_tyMcParamCurr.bMnlAccDat;
	tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bValue				:= p_tyMcParamCurr.bAutoStepEn;
	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bValue					:= p_tyMcParamCurr.bVSMEMAEn;
	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bValue				:= p_tyMcParamCurr.bHermesRmtEn;
	tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bValue					:= p_tyMcParamCurr.bLongBrdEn;
	tyP1021McSetGen.tyGen.tyBtnOutShutterDis.bValue				:= p_tyMcParamCurr.bOutShutterDis;
	tyP1021McSetGen.tyGen.tyBtnChgParamEn.bValue				:= p_tyMcParamCurr.bChgParamEn;
	tyP1021McSetGen.tyGen.tyBtnAGVComEn.bValue					:= p_tyMcParamCurr.bAGVComEn;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValue				:= p_tyMcParamCurr.diWidthOffsetInUM;
	
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValue				:= p_tyMcParamCurr.diAWPusherAtHmPosInUM;
	
	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.uiRtStat			:= TRUE;
	tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.uiRtStat		:= TRUE;
	tyP1021McSetGen.tyGen.tyNumLMCFbTm.diValue 					:= p_tyMcParamCurr.diLMCfbTmInMS;  //LMC fb via opcua
	tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bValue 			:= p_tyMcParamCurr.bMagWidthChkDis; 
	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValue 		:= p_tyMcParamCurr.diMag1WidthChkDetDist; 
	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValue 		:= p_tyMcParamCurr.diMag2WidthChkDetDist; 
	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValue 		:= p_tyMcParamCurr.diMag3WidthChkDetDist; 
	
	//Logout
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValueMin			:= p_tyNtParamCurr.tyUIAutoLogoutTm.diMin;
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValueMax			:= p_tyNtParamCurr.tyUIAutoLogoutTm.diMax;
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.uiRtStat.0			:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.uiRtStat.0			:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	tyP1021McSetGen.tyGen.tyTxtLblAutoLogoutTm.uiRtStat.0		:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValue				:= p_tyMcParamCurr.diAutoLogoutTmInSec;
	tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bValue				:= p_tyMcParamCurr.bAutoLogoutEn;
	
	//Network Mode
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueMinIdx		:= DINT_TO_USINT(p_tyNtParamCurr.tyNetworkMode.diMin);
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueMaxIdx		:= DINT_TO_USINT(p_tyNtParamCurr.tyNetworkMode.diMax);
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx			:= DINT_TO_USINT(p_tyMcParamCurr.eNetworkMod);
	
	tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bValue					:= p_tyMcParamCurr.bLFBuzMute;
	
	tyP1021McSetGen.tyGen.tyBtnScannerEn.uiRtStat.0		:= NOT p_tyNtParamCurr.bUSBScannerPrep AND NOT p_tyNtParamCurr.bRS232ScannerPrep;
	
	tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMaxIdx		:= 2;
	tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMinIdx		:= 0;
	

	CASE  p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  0;
			
		McSetAGVCommHardIO:		
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  1;
			
		McSetAGVCommDisabled:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  2;
	END_CASE
	
	tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMaxIdx		:= 2;
	tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMinIdx		:= 0;
	
	CASE  p_tyMcParamCurr.eMagExMode OF
		McSetMagXcAutoManMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 0;
		
		McSetMagXcAutoMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 1;
			
		McSetMagXcManMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 2;
	END_CASE
	
	tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.uiRtStat.0 := NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.uiRtStat.0 := NOT p_tyNtParamCurr.bProjAGVPrep;
	
	tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bValue := p_tyMcParamCurr.bAIVSizeDisabled;
	tyP1021McSetGen.tyGen.tyBtnScannerEn.bValue	:= p_tyMcParamCurr.bScannerEn; 
	
	tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.diValue	:= p_tyMcParamCurr.diTravOutletFixtoFixPos;
	tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.diValueMax	:= 1500000; 	

	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep);
	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bValue	:= p_tyMcParamCurr.bDisableFMWarning;
	
	tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep);
	
	IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP1021McSetGen.tyGen.tyTxtLiftPosLaneA.usiValueIdx := 15;
	END_IF
	
	//DBA on right sensor
	tyP1021McSetGen.tyGen.tyBtnDBAOnRgtSen.bValue := p_tyMcParamCurr.bDBAOnRgtSen;

	//Supervisory + mesRFID
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue			:= p_tyMcParamCurr.bHermesSvyEn;//new for Hermes 1.3
	tyP1021McSetGen.tyGen.tyBtnRFIDEn.bValue				:= p_tyMcParamCurr.bMesRFIDEn;
	tyP1021McSetGen.tyGen.tyNumRFIDWrTO.diValue			:= p_tyMcParamCurr.diMesRFIDTOInMS;
	//trav b offset
	tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.diValue		:= p_tyMcParamCurr.diTravLaneBOffset;
	//pull limit from Mcparam
	tyP1021McSetGen.tyGen.tyNumMtyPullSlt.diValue 		:= p_tyMcParamCurr.diProjCntrPullLmt	;
	tyP1021McSetGen.tyGen.tyNumMtyPullSlt.diValueMax 		:= p_tyNtParamCurr.diProjMagMaxSlt	;
	tyP1021McSetGen.tyGen.tyNumMtyPullSlt.uiRtStat 		:= NOT(p_tyNtParamCurr.siProjCntrPullLmt <> -1 )	;

END_ACTION
