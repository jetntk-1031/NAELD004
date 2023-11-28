(** 2021-08-01 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
		//Digital Input
	p_tyDI ACCESS p_DI;
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkOpsMagConvLD1QueryWO ACCESS p_OpsMagConvLD1QueryWO;
	p_bLinkOpsMagConvLD2QueryWO ACCESS p_OpsMagConvLD2QueryWO;
	p_bLinkOpsMagConvLD3QueryWO ACCESS p_OpsMagConvLD3QueryWO;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamHermesPrep;
	p_tyParam ACCESS p_HermesSvyParam;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	pa_usiMacAddr ACCESS p_HWInfoMacAddr;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_sMcId ACCESS p_McParamMcNm;
	p_sRecipeNm ACCESS p_ProdRcpCurrRcp0Nm;
//	p_sMagazineId ACCESS p_UIMagazineId; // change to mag1,2,3
//	p_iSlotId ACCESS p_UIMagazineSlotId; 
	p_sBarcode ACCESS p_UIPCBBarcode; 
	p_udiAliveIdleTimeInSec ACCESS p_NtParamSvyHermesAliveTmInSec;
	p_tConnTimeOut ACCESS p_NtParamSvyHermesConnTO;
	p_diTransferInTO ACCESS p_McParamTranOutErrDlyTm;
	p_bNewBrdAvlLastZone ACCESS p_HermesBrdAvlDataNewBrdAvlLastZ;
	p_bOpsRun ACCESS p_OpsRun;
	p_udiFileKeepDay ACCESS p_NtParamSvyHermesFileKeepDay;
	p_sConfigFileName ACCESS p_NtParamSvyHermesConfigFileNm;
	p_sProgNm ACCESS p_NtParamSvyHermesProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bSvyPrep ACCESS p_NtParamHermesSvyPrep; 
	p_bSvyEn ACCESS p_McParamHermesSvyEn;
//	p_bQueryWorkOrderInfo ACCESS p_OpsMagConvLD1QueryWO;  //Query WO ****
	p_tyHermesConfiguration ACCESS p_HermesConfiguration;
//	p_bUSHermesStopTransport1 ACCESS p_USHermesStopTransportSnd1; //Lane 1, PCB arrived 
//	p_bUSHermesStopTransport2 ACCESS p_USHermesStopTransportSnd2; //Lane 2, open up for specific machine
//	p_bUSHermesStopTransport3 ACCESS p_USHermesStopTransportSnd3; //Lane 3, open up for specific machine
//	p_bUSHermesStopTransport4 ACCESS p_USHermesStopTransportSnd4; //Lane 4, open up for specific machine
//	p_tyUSBoardArrived1 ACCESS p_USHermesBoardArrivedData; //Lane 1
//	p_tyUSBoardArrived2 ACCESS p_USHermesBoardArrivedData2; //Lane 2, open up for specific machine
//	p_tyUSBoardArrived3 ACCESS p_USHermesBoardArrivedData3; //Lane 3, open up for specific machine
//	p_tyUSBoardArrived4 ACCESS p_USHermesBoardArrivedData4; //Lane 4, open up for specific machine
	p_bDSHermesTransportFinished1 ACCESS p_DSHermesATransportFinishedSnd;
//	p_bDSHermesTransportFinished2 ACCESS p_DSHermesTransportFinishedSnd2; //Lane 2, open up for specific machine
//	p_bDSHermesTransportFinished3 ACCESS p_DSHermesTransportFinishedSnd3; //Lane 3, open up for specific machine
//	p_bDSHermesTransportFinished4 ACCESS p_DSHermesTransportFinishedSnd4; //Lane 4, open up for specific machine
	p_tyDSBoardDeparted1 ACCESS p_DSHermesABoardDepartedData; //Lane 1
//	p_tyDSBoardDeparted2 ACCESS p_DSHermesBoardDepartedData2; //Lane 2, open up for specific machine
//	p_tyDSBoardDeparted3 ACCESS p_DSHermesBoardDepartedData3; //Lane 3, open up for specific machine
//	p_tyDSBoardDeparted4 ACCESS p_DSHermesBoardDepartedData4; //Lane 4, open up for specific machine
	p_eHermesStat ACCESS p_HermesStat;
	p_eHermesStatus ACCESS p_HermesStatus;
	p_eMcParamStat ACCESS p_McParamStat;
	p_eMcParamStatus ACCESS p_McParamStatus;
	p_bAllZonesEmpty ACCESS p_DSHermesAAllZonesEmpty; //All zones empty. Before empty, cannot change current sWorkOrderId.
	p_bUIDeleteWorkOrder ACCESS p_UIDeleteWorkOrder; 
	p_bAutoRcpCurrDeleteSendWO ACCESS p_AutoRcpCurrDeleteSendWO; 
	p_bFirstMcIntheLine ACCESS p_NtParamHermesSvyFirstMc; //First machine in the line only can Query Work Order
	p_sRetainFileName ACCESS p_NtParamSvyHermesRetainFileNm;
	p_tyProdRcpCurrRcp ACCESS p_ProdRcpCurrRcp0;
	
	p_eLinkCustomerReq ACCESS p_NtParamCustomerReq;          //ADD   Include ReplyWorkOrderID & Machine mode changeover
//	p_bLinkDIPresentSen ACCESS p_DIBrdStackPresentSen;                     //ADD 
//	p_bOpsConvTopUpBrdReq ACCESS p_OpsConvTopUpBrdReq; 
//	p_bOpsConvWaitForTopUpBrd ACCESS p_OpsConvWaitForTopUpBrd;	
//	p_bUITopUpBrdRdy ACCESS p_UITopUpBrdRdy;
	p_bSendBFId ACCESS p_SendBFId;
//	p_usiSelProdRcpStep  ACCESS p_SelProdRcpStep;
		
	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;      //Add
//	p_bUSHermesUSRdy ACCESS p_USHermesUSRdy;
//	pa_tyLinkXMLTableDataBrdAvl1 ACCESS p_USHermesTableDataBrdAvl; //lane 1 B.A
//	p_iLinkXMLTableDataBrdAvlTtlIdx1 ACCESS p_USHermesTableDataBrdAvlTtlIdx; //lane 1 B.A
//	p_tyUSBoardAvailableRcv ACCESS  p_USBoardAvailableRcv; 
//	p_tyUSBoardForecastRcv ACCESS p_USBoardForecastRcv;
//	p_bLinkStepStackMode ACCESS p_McParamStepStackMode;
	
//	p_eLinkMcParamUSCommMod ACCESS p_McParamUSCommMod;
	p_sHermesBrdId ACCESS p_HermesBrdId; //generate for forecast , avail and arrived(supv)

	p_diBuffer1Slt ACCESS p_Buffer1SlotNo;
	p_diBuffer2Slt ACCESS p_Buffer2SlotNo;
	p_diBuffer3Slt ACCESS p_Buffer3SlotNo;

	p_bConvHvBrd ACCESS p_PullConvHvBrd;
	p_bPullerRetRS ACCESS p_DIPullerRetRS; 
	p_eOpsTravLifLDPosGo ACCESS p_OpsTravLifLDPosGo;
	p_tyAutoRcpTravLif ACCESS p_AutoRcpTravLif;
	(* Always Change If Project Change *)
END_ACTION
