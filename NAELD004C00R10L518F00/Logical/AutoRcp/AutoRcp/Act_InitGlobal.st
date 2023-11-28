(** 2019-06-12 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_eLinkNtParamProjMag ACCESS p_NtParamProjMag;
	p_tyNtParamAutoRcpParamLmt ACCESS p_NtParamAutoRcpParamLmt;
	p_diNtParamProdRcpMaxWidth ACCESS p_NtParamProdRcpMaxWidth;
	p_diNtParamProdRcpMinWidth ACCESS p_NtParamProdRcpMinWidth;
	p_tySendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData; 
	p_bSndWorkOrderInfo ACCESS p_SndWorkOrderInfo;
	p_ausiSvyMagAccOrder ACCESS p_SvyHermesMagAccOrder;
	p_asSvyHermesMagGUID ACCESS p_SvyHermesMagGUID;
	p_usiSvyMagOrderPos ACCESS p_SvyHermesMagOrderPos;

	p_bLinkOpsMagConvLD1QueryWO ACCESS p_OpsMagConvLD1QueryWO;
	p_bLinkOpsMagConvLD2QueryWO ACCESS p_OpsMagConvLD2QueryWO;
	p_bLinkOpsMagConvLD3QueryWO ACCESS p_OpsMagConvLD3QueryWO;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
//	p_tyInternalReqProdRcp ACCESS p_Follower1UpdtProdRcp;	//Follower 2 Assign With Follower 1 Recipe
//	p_sProgNm ACCESS p_NtParamFollower2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;

	p_bPrep ACCESS p_NtParamAutoRcpPrep;
	p_diNtParamPullerHeightInMM ACCESS p_NtParamPullerHeightInMM;
	//Zone 1
	p_bLinkPshrConvHvBrd ACCESS p_PullConvHvBrd;
	p_bLinkOpsTravLifLDInitDone ACCESS p_OpsTravLifLDInitDone;
	
	//Zone 2
	p_bLinkOpsMagConvLD1InitDone ACCESS p_OpsMagConvLD1InitDone;
	p_bLinkOpsMagConvLD2InitDone ACCESS p_OpsMagConvLD2InitDone;
	p_bLinkOpsMagConvLD3InitDone ACCESS p_OpsMagConvLD3InitDone;
	p_udiOpsMagConvLD1MagAllwGo ACCESS p_OpsMagConvLD1MagAllwGo;
	p_udiOpsMagConvLD2MagAllwGo ACCESS p_OpsMagConvLD2MagAllwGo;
	p_udiOpsMagConvLD3MagAllwGo ACCESS p_OpsMagConvLD3MagAllwGo;
	
	p_bOpsMagConvLD1ExtDelAutoRcp ACCESS p_OpsMagConvLD1ExtDelAutoRcp;
	p_bOpsMagConvLD2ExtDelAutoRcp ACCESS p_OpsMagConvLD2ExtDelAutoRcp;
	p_bOpsMagConvLD3ExtDelAutoRcp ACCESS p_OpsMagConvLD3ExtDelAutoRcp;
	
	p_bBuffer1MagPresent ACCESS p_Buffer1MagPresent;
	p_bBuffer2MagPresent ACCESS p_Buffer2MagPresent;
	p_bBuffer3MagPresent ACCESS p_Buffer3MagPresent;
	
	p_bBuffer1MagRemoved ACCESS p_Buffer1MagPresent;
	p_bBuffer2MagRemoved ACCESS p_Buffer2MagPresent;
	p_bBuffer3MagRemoved ACCESS p_Buffer3MagPresent;
	
	p_tyBuffer1BffrStat ACCESS p_Buffer1BffrStat ;
	p_tyBuffer2BffrStat ACCESS p_Buffer2BffrStat ;
	p_tyBuffer3BffrStat ACCESS p_Buffer3BffrStat ;
	
//	p_bMagAW1WidthDiff ACCESS p_MagAWOpen1WidthPosDiff; 
//	p_bMagAW2WidthDiff ACCESS p_MagAWOpen2WidthPosDiff;
//	p_bMagAW3WidthDiff ACCESS p_MagAWOpen3WidthPosDiff;
	
	
	//Hermes A accepted the BA 
//	p_bHermesABAAccepted ACCESS p_USHermesABAAccepted; //brd avail
//	p_bHermesABFAccepted ACCESS p_USHermesABFAccepted; //brd forecast
	
	//Hermes B accepeted the BA
//	p_bHermesBBAAccepted ACCESS p_USHermesBBAAccepted;
//	p_bHermesBBFAccepted ACCESS p_USHermesBBFAccepted;
	
	p_diMagRcpCurrRcpTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diMagRcpCurrRcpSltToSlt ACCESS p_MagRcpCurrRcpSltToSlt;
	
	
//	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;
	p_bProdSelTopToBtm ACCESS p_ProdRcpCurrRcp1TopToBtm;

	p_bConvHvBrd ACCESS p_PullConvHvBrd;
	
	//We Fab
	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;	//Follower 0
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	p_ausiLCSLFMagAccOrder ACCESS p_LCSLFMagAccOrder;
	p_usiLCSLFMagOrderPos ACCESS p_LCSLFMagOrderPos;

END_ACTION
