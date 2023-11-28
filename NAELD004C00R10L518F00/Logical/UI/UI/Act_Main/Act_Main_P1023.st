
ACTION Act_Main_P1023:
	
	//Machine Setting - Horizontal Communicationm Control
	//Display
	tyP1023McSetHComm.tyDSSelA.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
	tyP1023McSetHComm.tyDSSelB.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
	
	tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesSvyPrep;
	tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesSvyPrep;
	
	IF p_tyNtParamCurr.bIPCSMEMA9851ExtdPrep = TRUE THEN
		tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 2;
		tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 2;
	ELSE
		tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 1;
		tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 1;
	END_IF
	
	tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.diValueMin	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMin;
	tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.diValueMax	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMax;
	tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.diValueMin	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMin;
	tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.diValueMax	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMax;
	
	tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.diValueMin		:= p_tyNtParamCurr.tyUIHermesLnID.diMin;
	tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.diValueMax		:= p_tyNtParamCurr.tyUIHermesLnID.diMax;
	tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.diValueMin		:= p_tyNtParamCurr.tyUIHermesLnID.diMin;
	tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.diValueMax		:= p_tyNtParamCurr.tyUIHermesLnID.diMax;
	
	//Parameter - Downstream A
	CASE p_tyMcParamCurr.eDSCommA OF
		McSetCommModSMEMA:
			tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue	:= TRUE;
			tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtLk		:= TRUE;
			tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue	:= FALSE;
			tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtLk	:= FALSE;
		McSetCommModHermes:
			tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue	:= FALSE;
			tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtLk		:= FALSE;
			tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue	:= TRUE;
			tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtLk	:= TRUE;
	END_CASE
	
	tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx		:= UDINT_TO_USINT(p_tyMcParamCurr.tyDSCommASMEMA.eSelection);
	tyP1023McSetHComm.tyDSSMEMAA.tyBtnGdSig.bValue					:= p_tyMcParamCurr.tyDSCommASMEMA.bStatSigSetGd;
	
	tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.diValue			:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].tSndAlive);
	tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.diValue				:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].uiSvrPort);
	tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.diValue				:= INT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[0].iLaneID);
	tyP1023McSetHComm.tyDSHermesA.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyDSParam[0].bFeatureCheckAliveResponse;	
	tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.bValue	:= p_tyHermesConfiguration.a_tyDSParam[0].bFeatureBoardForecast;//new for Hermes 1.3
	tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.bValue	:= p_tyHermesConfiguration.a_tyDSParam[0].bFeatureSendBoardInfo;//new for Hermes 1.3

	//Parameter - Downstream B
	CASE p_tyMcParamCurr.eDSCommB OF
		McSetCommModSMEMA:
			tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue	:= TRUE;
			tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtLk		:= TRUE;
			tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue	:= FALSE;
			tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtLk	:= FALSE;
		McSetCommModHermes:
			tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue	:= FALSE;
			tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtLk		:= FALSE;
			tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue	:= TRUE;
			tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtLk	:= TRUE;
	END_CASE
	
	tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx		:= UDINT_TO_USINT(p_tyMcParamCurr.tyDSCommBSMEMA.eSelection);
	tyP1023McSetHComm.tyDSSMEMAB.tyBtnGdSig.bValue					:= p_tyMcParamCurr.tyDSCommBSMEMA.bStatSigSetGd;
	
	tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.diValue			:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[1].tSndAlive);
	tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.diValue				:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[1].uiSvrPort);
	tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.diValue				:= INT_TO_DINT(p_tyHermesConfiguration.a_tyDSParam[1].iLaneID);
	tyP1023McSetHComm.tyDSHermesB.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyDSParam[1].bFeatureCheckAliveResponse;	
	tyP1023McSetHComm.tyDSHermesB.tyBtnBoardForecast.bValue	:= p_tyHermesConfiguration.a_tyDSParam[1].bFeatureBoardForecast;//new for Hermes 1.3
	tyP1023McSetHComm.tyDSHermesB.tyBtnSendBoardInfo.bValue	:= p_tyHermesConfiguration.a_tyDSParam[1].bFeatureSendBoardInfo;//new for Hermes 1.3

END_ACTION
