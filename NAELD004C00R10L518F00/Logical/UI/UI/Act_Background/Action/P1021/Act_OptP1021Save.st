
ACTION Act_OptP1021Save:
	
	IF tyP1021McSetGen.tyGen.tyStringMcNm.bRtCompl					OR tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.bRtCompl
		OR tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.bRtCompl	OR tyP1021McSetGen.tyGen.tyNumSSaverTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnSSaverEn.bRtCompl				OR tyP1021McSetGen.tyGen.tyNumWidthAtHm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumConvInitTm.bRtCompl			OR tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.bRtCompl		OR tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.bRtCompl		OR tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumTravPosLaneA.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl			OR tyP1021McSetGen.tyGen.tyNumTravPosLaneB.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnAWDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bRtCompl				OR tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnOutShutterDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnChgParamEn.bRtCompl			OR tyP1021McSetGen.tyGen.tyNumWidthOffset.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnAGVComEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.bRtCompl			OR tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.bRtCompl
		OR tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.bRtCompl	OR tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnScannerEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bRtCompl OR tyP1021McSetGen.tyGen.tyNumLMCFbTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bRtCompl	OR tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.bRtCompl OR tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnDBAOnRgtSen.bRtCompl OR tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bRtCompl     //new for Hermes 1.3
		OR tyP1021McSetGen.tyGen.tyBtnRFIDEn.bRtCompl OR tyP1021McSetGen.tyGen.tyNumRFIDWrTO.bRtCompl 
		OR tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.bRtCompl 
		THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1021McSetGen.tyGen.tyStringMcNm.bRtCompl				:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumSSaverTm.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnSSaverEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumWidthAtHm.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumConvInitTm.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.bRtCompl 		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.bRtCompl 		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumWidthOffset.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAGVComEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.bRtCompl		:= FALSE;
		
		tyP1021McSetGen.tyGen.tyNumTravPosLaneA.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTravPosLaneB.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAWDis.bRtCompl				:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnOutShutterDis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnChgParamEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnScannerEn.bRtCompl			:= FALSE;
		
		tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumLMCFbTm.bRtCompl				:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnDBAOnRgtSen.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bRtCompl			:= FALSE; //new for Hermes 1.3	
		tyP1021McSetGen.tyGen.tyBtnRFIDEn.bRtCompl 			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumRFIDWrTO.bRtCompl 			:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.bRtCompl 	:= FALSE;
		
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE AND bSaveNetworkPriority=FALSE THEN 
		
		tyMcParamWr.sMcNm					:=	tyP1021McSetGen.tyGen.tyStringMcNm.sValue;
		tyMcParamWr.usiDefaultMcMod			:=	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueIdx;
		tyMcParamWr.usiDefaultFlippedBrd	:=	tyP1021McSetGen.tyGen.tyDrpDnDefaultFlippedBrd.usiValueIdx;
		tyMcParamWr.uiSSaverTmInSec			:= 	DINT_TO_UINT(tyP1021McSetGen.tyGen.tyNumSSaverTm.diValue);
		tyMcParamWr.bSSaverEn				:=	tyP1021McSetGen.tyGen.tyBtnSSaverEn.bValue;
		tyMcParamWr.diWidthAtHmPosInUM		:=	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValue;
		tyMcParamWr.diConvInitTmInMS		:=	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValue;
		tyMcParamWr.diTranOutErrDlyTmInMS	:=	tyP1021McSetGen.tyGen.tyNumTranOutErrDlyTm.diValue;
		tyMcParamWr.diMag1ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValue;
		tyMcParamWr.diMag2ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValue;
		tyMcParamWr.diMag3ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValue;
		tyMcParamWr.diMag4ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag4ConvRunTm.diValue;
		tyMcParamWr.diWidthOffsetInUM		:=  tyP1021McSetGen.tyGen.tyNumWidthOffset.diValue;
		tyMcParamWr.diMagAutoDetectSenTmInMS:=  tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValue;
		
		tyMcParamWr.diTravPosA				:=	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValue;
		tyMcParamWr.diLifterPosA			:=	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue;
		tyMcParamWr.diTravPosB				:=	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValue;
		tyMcParamWr.diLifterPosB			:=	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue;
		tyMcParamWr.bAWDis					:=	tyP1021McSetGen.tyGen.tyBtnAWDis.bValue;
		tyMcParamWr.bMnlAccDat				:=	tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bValue;
		tyMcParamWr.bAutoStepEn				:=	tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bValue;
		tyMcParamWr.bVSMEMAEn				:=	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bValue;
		tyMcParamWr.bHermesRmtEn			:=	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bValue;
		tyMcParamWr.bLongBrdEn				:=  tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bValue;
		tyMcParamWr.bOutShutterDis			:=  tyP1021McSetGen.tyGen.tyBtnOutShutterDis.bValue;
		tyMcParamWr.bChgParamEn				:=  tyP1021McSetGen.tyGen.tyBtnChgParamEn.bValue;
		tyMcParamWr.bAGVComEn				:=  tyP1021McSetGen.tyGen.tyBtnAGVComEn.bValue;
		tyMcParamWr.bLFBuzMute				:=  tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bValue;
		tyMcParamWr.bAutoLogoutEn			:=  tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bValue;
		tyMcParamWr.diAutoLogoutTmInSec		:=  tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValue;
		
		tyMcParamWr.eNetworkMod				:=  USINT_TO_DINT(tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx);
		tyMcParamWr.eAGVComProtocol			:=  tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx;
		tyMcParamWr.eMagExMode				:=  tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx;
		tyMcParamWr.bAIVSizeDisabled		:=  tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bValue;
		tyMcParamWr.bScannerEn				:=	tyP1021McSetGen.tyGen.tyBtnScannerEn.bValue;
		
		tyMcParamWr.diAWPusherAtHmPosInUM	:=	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValue;
		tyMcParamWr.bAWPusherDis			:=	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bValue;
		tyMcParamWr.diTravOutletFixtoFixPos	:=  tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosOutlet.diValue;
		tyMcParamWr.bDisableFMWarning		:= 	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bValue;
		tyMcParamWr.diLMCfbTmInMS 			:=	tyP1021McSetGen.tyGen.tyNumLMCFbTm.diValue;
		tyMcParamWr.bMagWidthChkDis 		:=	tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bValue;
		tyMcParamWr.diMag1WidthChkDetDist 	:=  tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValue;
		tyMcParamWr.diMag2WidthChkDetDist 	:=  tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValue;
		tyMcParamWr.diMag3WidthChkDetDist 	:=  tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValue;
		tyMcParamWr.bDBAOnRgtSen			:=	tyP1021McSetGen.tyGen.tyBtnDBAOnRgtSen.bValue;
		tyMcParamWr.bHermesSvyEn			:= tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue;//new for Hermes 1.3
		tyMcParamWr.bMesRFIDEn				:= tyP1021McSetGen.tyGen.tyBtnRFIDEn.bValue;
		tyMcParamWr.diMesRFIDTOInMS			:= tyP1021McSetGen.tyGen.tyNumRFIDWrTO.diValue;
		tyMcParamWr.diTravLaneBOffset		:= tyP1021McSetGen.tyGen.tyNumTravLaneBOffset.diValue;

		IF tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx =DINT_TO_USINT(SetIPManually) THEN
			tyMcParamWr.sIPAddr				:= tyP1021McSetGen.tyGen.tyStringIPAddr.sValue;
			tyMcParamWr.sSubnetMask			:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue;
		END_IF
				
		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			eMcParamAct	:= McParamActIdle;
			
			usiNetworkModeOld := tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx;
			//Screen Saver Time
			tyProperty.tyVisu.uiSSaverTm	:= p_tyMcParamCurr.uiSSaverTmInSec;
			
			//Backup Param
			tyP1021McSetGen.tyGenBkUp	:= tyP1021McSetGen.tyGen;
			
			tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
			fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxSaveErr);
			
			IF tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
				tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
				
				//Restore Param
				tyP1021McSetGen.tyGen	:= tyP1021McSetGen.tyGenBkUp;
				tyMcParamWr				:= p_tyMcParamCurr;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
