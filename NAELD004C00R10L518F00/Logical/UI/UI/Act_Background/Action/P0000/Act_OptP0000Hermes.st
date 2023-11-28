
ACTION Act_OptP0000Hermes: //Can receive at anytime, at any Page
	
	//SendBordInfo can be received at anytime, at any Page
	IF (p_bRcvBoardInfoIncompl AND tyCommon.tyInfo.tyHotspotClose.bRtCompl = TRUE) OR EDGENEG (p_bRcvBoardInfoOk) OR tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnQueryBoardInfo.bValue = FALSE THEN //Reset	
		bQueryBoardInfo := FALSE;
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnQueryBoardInfo.bValue := FALSE;
	END_IF
	
	//Reset QueryWorkOrderInfo when Close C0009 Info
	IF EDGEPOS (tyCommon.tyInfo.tyHotspotClose.bRtCompl = TRUE OR tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQueryWorkOrderInfo.bValue = FALSE OR p_bRcvWorkOrderInfo1) THEN
		bQueryWorkOrderInfo := FALSE;
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQueryWorkOrderInfo.bValue := FALSE;
	END_IF
	
	//Configure update can happen at anytime, at any Page (Can modify to Reset this when User Press tyCommon.tyInfo.tyHotspotClose.bRtCompl)
	IF p_bRmtUpdateUIData = TRUE OR p_bSvyUpdateUIData = TRUE THEN
		
		//Update UI Upstream Configure 
//		tyP1023McSetHComm.tyUSHermes.tyNumSndAliveTm.diValue		:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].tSndAlive);
//		tyP1023McSetHComm.tyUSHermes.tyNumLaneID.diValue			:= INT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].iLaneID);
//		tyP1023McSetHComm.tyUSHermes.tyNumHostPort.diValue			:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].uiHostPort);
//		tyP1023McSetHComm.tyUSHermes.tyStringHostAddr.sValue		:= p_tyHermesConfiguration.a_tyUSParam[0].sHostAddress;
//		tyP1023McSetHComm.tyUSHermes.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureCheckAliveResponse;
//		tyP1023McSetHComm.tyUSHermes.tyBtnCmpTypeId.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpTypeId;
//		tyP1023McSetHComm.tyUSHermes.tyBtnCmpParam.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpParam;
//		tyP1023McSetHComm.tyUSHermes.tyBtnOverWrite.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bOverwrite;
//		tyP1023McSetHComm.tyUSHermes.tyBtnBoardForecast.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureBoardForecast;//new
//		tyP1023McSetHComm.tyUSHermes.tyBtnQueryBoardInfo.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureQueryBoardInfo;//new
			
		//Update UI Downstream Configure
		tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.diValue		:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].tSndAlive);
		tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.diValue			:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].uiSvrPort);
		tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.diValue			:= INT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].iLaneID);
		tyP1023McSetHComm.tyDSHermesA.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyDSParam[0].bFeatureCheckAliveResponse;
		tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.bValue	    := p_tyHermesConfiguration.a_tyDSParam[0].bFeatureBoardForecast;//new
		tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.bValue	    := p_tyHermesConfiguration.a_tyDSParam[0].bFeatureSendBoardInfo;//new

		//Update UI Supervisory Configure
		tyP1022McSetVComm.tyVComSvy.tyNumSndAliveTm.diValue	    	:= TIME_TO_DINT(p_tyHermesConfiguration.tySvyParam.tSndAlive);
		tyP1022McSetVComm.tyVComSvy.tyNumSvySystemPort.diValue	    := UINT_TO_DINT(p_tyHermesConfiguration.tySvyParam.uiSvySvstemPort);
		tyP1022McSetVComm.tyVComSvy.tyBtnConfiguration.bValue		:= p_tyHermesConfiguration.tySvyParam.bFeatureConfiguration;
		tyP1022McSetVComm.tyVComSvy.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.tySvyParam.bFeatureCheckAliveResponse;
		tyP1022McSetVComm.tyVComSvy.tyBtnBoardTracking.bValue		:= p_tyHermesConfiguration.tySvyParam.bFeatureBoardTracking;
		tyP1022McSetVComm.tyVComSvy.tyBtnQueryWorkOrderInfo.bValue	:= p_tyHermesConfiguration.tySvyParam.bFeatureQueryWorkOrderInfo;
		tyP1022McSetVComm.tyVComSvy.tyBtnSendWorkOrderInfo.bValue   := p_tyHermesConfiguration.tySvyParam.bFeatureSendWorkOrderInfo;
		
		//Update UI Mc Name and Backup Mc Name of P1021
		tyP1021McSetGen.tyGen.tyStringMcNm.sValue			    	:= p_tyMcParamCurr.sMcNm; //String[30] doesnt tally with MachineId String[80] currently.
		tyP1021McSetGen.tyGenBkUp.tyStringMcNm	                    := tyP1021McSetGen.tyGen.tyStringMcNm;
		
		
		//Update Backup Param P1022
		tyP1022McSetVComm.tyVComSelBkUp	    := tyP1022McSetVComm.tyVComSel;
		tyP1022McSetVComm.tyVComSvyBkUp	    := tyP1022McSetVComm.tyVComSvy;
		tyP1022McSetVComm.tyLFBkUp		    := tyP1022McSetVComm.tyLF;
		
		//Update Backup Param P1023
//		tyP1023McSetHComm.tyUSSelBkUp		:= tyP1023McSetHComm.tyUSSel;
//		tyP1023McSetHComm.tyUSSMEMABkUp		:= tyP1023McSetHComm.tyUSSMEMA;
//		tyP1023McSetHComm.tyUSHermesBkUp	:= tyP1023McSetHComm.tyUSHermes;
		tyP1023McSetHComm.tyDSSelABkUp		:= tyP1023McSetHComm.tyDSSelA;
		tyP1023McSetHComm.tyDSSMEMAABkUp		:= tyP1023McSetHComm.tyDSSMEMAA;
		tyP1023McSetHComm.tyDSHermesABkUp	:= tyP1023McSetHComm.tyDSHermesA;
		
	END_IF
	
END_ACTION
