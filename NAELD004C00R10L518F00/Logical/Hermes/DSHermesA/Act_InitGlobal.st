(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_eLinkMcParamDSCommMod ACCESS p_McParamDSCommAMod;
	
	p_usiLinkProdRcpCurrRcpFlipBrd ACCESS p_ProdRcpCurrRcp2FlippedBrd;
	p_bLinkConvHvBrd ACCESS p_PullConvHvBrd;
	p_bLinkOpsTravLifLDDSComm ACCESS p_OpsTravLifLDDSComm;
	p_eLinkTravLifLDPosGo ACCESS p_OpsTravLifLDPosGo;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamHermesPrep;
	p_tyParam ACCESS p_HermesDSParam1;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	pa_usiMacAddr ACCESS p_HWInfoMacAddr;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_sMcId ACCESS p_McParamMcNm;
	p_sRecipeNm ACCESS p_ProdRcpCurrRcp1Nm;
	p_sWorkOrderId ACCESS p_AutoRcpWorkOrderId; //from autorcp /////////p_SvyHermesWorkOrderId; //Work Order Id from SupervisoryHermes 
	p_sBatchId ACCESS p_SvyHermesBatchId; //Batch Id from SupervisoryHermes
	p_diWidthInUM ACCESS p_ProdRcpCurrRcp1Width;
	p_udiAliveIdleTimeInSec ACCESS p_NtParamDSHermesAAliveTmInSec;
	p_tConnTimeOut ACCESS p_NtParamDSHermesAConnTO;
	p_diTransferInTO ACCESS p_McParamTranOutErrDlyTm;
	pa_tyXMLTableDataBrdAvl ACCESS p_HermesBrdAvlDataTableLastZ; //Last zone Board Data, for B.A
	p_iXMLTableDataBrdAvlTtlIdx ACCESS p_HermesBrdAvlDataTtlIdxLastZ;  //Last zone Board Data, for B.A
	p_bNewBrdAvlFirstZone ACCESS p_HermesBrdAvlDataNewBrdAvl1stZ; //First zone Board Data, for B.F
	p_bNewBrdAvlLastZone ACCESS p_HermesBrdAvlDataNewBrdAvlLastZ; //Last zone Board Data, for B.A
	p_bOpsRun ACCESS p_OpsRun;
	p_bInterruptSen ACCESS p_DIConvRgtSen; //Last Zone Sensor that give B.A
	p_udiFileKeepDay ACCESS p_NtParamDSHermesAFileKeepDay;
	p_sRetainFileName ACCESS p_NtParamDSHermesRetainFileNm;
	p_sProgNm ACCESS p_NtParamDSHermesAProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bRmtPrep ACCESS p_NtParamHermesRmtPrep;
	p_bRmtEn ACCESS p_McParamHermesRmtEn;
	p_bSvyPrep ACCESS p_NtParamHermesSvyPrep; 
	p_bSvyEn ACCESS p_McParamHermesSvyEn; 
	p_bOpsGConv1HvBrd ACCESS p_PullConvHvBrd; //Take Zone 1's Have Board
	//p_tyUSBoardArrivedData ACCESS p_USHermesBoardArrivedData;
	//p_rAWCycleTm ACCESS p_NtParamDSHermesAWCycleTm;
	p_bInitDone ACCESS p_OpsTravLifLDInitDone;
	p_bFirstZoneEndSen ACCESS p_DIConvRgtSen; //Take First Zone's End sensor
	p_tyHermesConfiguration ACCESS p_HermesConfiguration;
//	p_bUSHermesStopTransport ACCESS p_USHermesStopTransportSnd;
//	p_bRcvBoardInfo ACCESS p_USHermesRcvBoardInfoOk;
//	p_tyBoardInfoData ACCESS p_USHermesBoardInfoData; //SendBoardInfo from Upstream, used to generate B.A for inserted PCB
//	p_bUSHermesTransporting ACCESS p_USHermesTransporting;
	p_eLinkCustomerReq ACCESS p_NtParamCustomerReq;
	p_usiProdRcpCurrRcp1McMod  ACCESS  p_ProdRcpCurrRcp1McMod;      //ADD
//	p_usiSelProdRcpStep  ACCESS p_SelProdRcpStep;
	
	// phase 1
	p_tySendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData; 
	p_bReplyWorkOrderInfo ACCESS  p_ReplyWorkOrderInfo;
	p_bSendBoardForecast ACCESS p_SendBoardForecast;
	p_bClearWorkOrder ACCESS p_ClearWorkOrder;
	
	p_tyAutoRcpTravLif ACCESS p_AutoRcpTravLif; 
	p_diLinkAutoRcpTravLifWidth ACCESS p_AutoRcpTravLifWidth;
	p_diLinkAutoRcpMag1Width ACCESS p_diAutoRcpMag1Width;
	p_diLinkAutoRcpMag2Width ACCESS p_diAutoRcpMag2Width;
	p_diLinkAutoRcpMag3Width ACCESS p_diAutoRcpMag3Width;

	p_tyAutoRcpMagRcp ACCESS p_AutoRcpMagRcp;
	p_ausiSvyMagAccOrder ACCESS p_SvyHermesMagAccOrder;

	p_sHermesBrdId ACCESS p_HermesBrdId;
	p_bDIPullerRetRS ACCESS p_DIPullerRetRS;
	(* Always Change If Project Change *)
END_ACTION
