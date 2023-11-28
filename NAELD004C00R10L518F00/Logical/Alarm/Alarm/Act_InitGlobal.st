(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_tyLinkUsrFolderAlmData ACCESS p_UsrFolderAlmData;
	p_tyLinkLibVerAlmData ACCESS p_LibVerAlmData;
	p_tyLinkTimeAlmData ACCESS p_TimeAlmData;
	p_tyLinkTimeAlmData1 ACCESS p_TimeAlmData1;
	p_tyLinkHWInfoAlmData ACCESS p_HWInfoAlmData;
	p_tyLinkProdRcpAlmData ACCESS p_ProdRcpAlmData;
	p_tyLinkMpProdRcpAlmData ACCESS p_MpProdRcpAlmData;
	p_tyLinkMagRcpAlmData ACCESS p_MagRcpAlmData;
	p_tyLinkMagRcpAlmData1 ACCESS p_MagRcpAlmData1;
	p_tyLinkMcParamAlmData ACCESS p_McParamAlmData;
	p_tyLinkNtParamAlmData ACCESS p_NtParamAlmData;
	p_tyLinkUsrMgmtAlmData ACCESS p_UsrMgmtAlmData;
	p_tyLinkBuffer1AlmData ACCESS p_Buffer1AlmData;
	p_tyLinkBuffer2AlmData ACCESS p_Buffer2AlmData;
	p_tyLinkBuffer3AlmData ACCESS p_Buffer3AlmData;
	p_tyLinkBuffer4AlmData ACCESS p_Buffer4AlmData;
	p_tyLinkUSSMEMA1AlmData ACCESS p_USSMEMA1AlmData;
	p_tyLinkUSSMEMA2AlmData ACCESS p_USSMEMA2AlmData;
	p_tyLinkUSSMEMA3AlmData ACCESS p_USSMEMA3AlmData;
	p_tyLinkUSSMEMA4AlmData ACCESS p_USSMEMA4AlmData;
	p_tyLinkDSSMEMA1AlmData ACCESS p_DSSMEMA1AlmData;
	p_tyLinkDSSMEMA2AlmData ACCESS p_DSSMEMA2AlmData;
	p_tyLinkDSSMEMA3AlmData ACCESS p_DSSMEMA3AlmData;
	p_tyLinkDSSMEMA4AlmData ACCESS p_DSSMEMA4AlmData;
	p_tyLinkDSSMEMAAAlmData ACCESS p_DSSMEMAAAlmData;
	p_tyLinkDSSMEMABAlmData ACCESS p_DSSMEMABAlmData;
	p_tyLinkInShutterAlmData ACCESS p_Pneu2SenInShutterAlmData;
	p_tyLinkOutShutterAlmData ACCESS p_Pneu2SenOutShutterAlmData;
	p_tyLinkPullerAlmData ACCESS p_Pneu2SenPullerAlmData;
	p_tyLinkPullConvAlmData ACCESS p_PullConvAlmData;
	p_tyLinkMagConv1AlmData ACCESS p_MagConv2Clp1AlmData;
	p_tyLinkMagConv2AlmData ACCESS p_MagConv2Clp2AlmData;
	p_tyLinkMagConv3AlmData ACCESS p_MagConv2Clp3AlmData;
	p_tyLinkMagConv4AlmData ACCESS p_MagConv2Clp4AlmData;
	p_tyLinkAWOpenAlmData ACCESS p_AWOpenAlmData;
	p_tyLinkAWOpenAlmData1 ACCESS p_AWOpenAlmData1;
	p_tyLinkAWOpenAlmData2 ACCESS p_AWOpenAlmData2;
	p_tyLinkAWOpenAlmData3 ACCESS p_AWOpenAlmData3;
	p_tyLinkTravAlmData ACCESS p_TravAlmData;
	p_tyLinkTravAlmData1 ACCESS p_TravAlmData1;
	p_tyLinkTravAlmData2 ACCESS p_TravAlmData2;
	p_tyLinkTravAlmData3 ACCESS p_TravAlmData3;
	p_tyLinkLifterBtmAlmData ACCESS p_LifterBtmAlmData;
	p_tyLinkLifterBtmAlmData1 ACCESS p_LifterBtmAlmData1;
	p_tyLinkLifterBtmAlmData2 ACCESS p_LifterBtmAlmData2;
	p_tyLinkLifterBtmAlmData3 ACCESS p_LifterBtmAlmData3;
	p_tyLinkDIAlmData1 ACCESS p_DIAlmData1;
	p_tyLinkDIAlmData2 ACCESS p_DIAlmData2;
	p_tyLinkDIAlmData3 ACCESS p_DIAlmData3;
	p_tyLinkDIAlmData4 ACCESS p_DIAlmData4;
	p_tyLinkDIAlmData5 ACCESS p_DIAlmData5;
	p_tyLinkDIAlmData6 ACCESS p_DIAlmData6;		//JOHN
	p_tyLinkAGVMag1AlmData ACCESS p_AGVMag1AlmData;
	p_tyLinkAGVMag2AlmData ACCESS p_AGVMag2AlmData;
	p_tyLinkAGVMag3AlmData ACCESS p_AGVMag3AlmData;
	p_tyLinkAGVMag4AlmData ACCESS p_AGVMag4AlmData;
	p_tyLinkHermesAlmData ACCESS p_HermesAlmData;
	p_tyLinkDSHermesAAlmData ACCESS p_DSHermesAAlmData;
	p_tyLinkDSHermesAAlmData1 ACCESS p_DSHermesAAlmData1;
	p_tyLinkDSHermesAAlmData2 ACCESS p_DSHermesAAlmData2;
	p_tyLinkDSHermesAAlmData3 ACCESS p_DSHermesAAlmData3;
	p_tyLinkDSHermesAAlmData4 ACCESS p_DSHermesAAlmData4;
	p_tyLinkDSHermesBAlmData ACCESS p_DSHermesBAlmData;
	p_tyLinkDSHermesBAlmData1 ACCESS p_DSHermesBAlmData1;
	p_tyLinkDSHermesBAlmData2 ACCESS p_DSHermesBAlmData2;
	p_tyLinkDSHermesBAlmData3 ACCESS p_DSHermesBAlmData3;
	p_tyLinkDSHermesBAlmData4 ACCESS p_DSHermesBAlmData4;
	p_tyLinkRmtHermesAlmData ACCESS p_RmtHermesAlmData;
	p_tyLinkRmtHermesAlmData1 ACCESS p_RmtHermesAlmData1;
	p_tyLinkRmtHermesAlmData2 ACCESS p_RmtHermesAlmData2;
	p_tyLinkRmtHermesAlmData3 ACCESS p_RmtHermesAlmData3;
	p_tyLinkLFLeaderAlmData ACCESS p_LFLeaderAlmData;
	p_tyLinkLFFollowerAlmData ACCESS p_LFFollowerAlmData;
	p_tyLinkLFFollowerInfoData ACCESS p_LFFollowerInfoData;
	p_tyLinkLFFollowerInfoData1 ACCESS p_LFFollowerInfoData1;
	p_tyLinkFollower1AlmData ACCESS p_Follower1AlmData;
	p_tyLinkFollower1InfoData ACCESS p_Follower1InfoData;
	p_tyLinkFollower1InfoData1 ACCESS p_Follower1InfoData1;
	p_tyLinkFollower2AlmData ACCESS p_Follower2AlmData;
	p_tyLinkFollower2InfoData ACCESS p_Follower2InfoData;
	p_tyLinkFollower2InfoData1 ACCESS p_Follower2InfoData1;
	p_tyLinkLCSMngRcpAlmData ACCESS p_LCSMngRcpAlmData;
	p_tyLinkLCSLFAlmData ACCESS p_LCSLFAlmData;
	p_tyLinkLCSLFInfoData ACCESS p_LCSLFInfoData;
	p_tyLinkOpsTravLifLDAlmData ACCESS p_OpsTravLifLDAlmData;
//	p_tyLinkOpsMagLD1AlmData ACCESS p_OpsMagLD1AlmData;
//	p_tyLinkOpsMagLD1AlmData1 ACCESS p_OpsMagLD1AlmData1;
//	p_tyLinkOpsMagLD2AlmData ACCESS p_OpsMagLD2AlmData;
//	p_tyLinkOpsMagLD2AlmData1 ACCESS p_OpsMagLD2AlmData1;
//	p_tyLinkOpsMagLD3AlmData ACCESS p_OpsMagLD3AlmData;
//	p_tyLinkOpsMagLD3AlmData1 ACCESS p_OpsMagLD3AlmData1;
//	p_tyLinkOpsMagLD4AlmData ACCESS p_OpsMagLD4AlmData;
//	p_tyLinkOpsMagLD4AlmData1 ACCESS p_OpsMagLD4AlmData1;
	p_tyLinkOpsMagConvLD1AlmData ACCESS p_OpsMagConvLD1AlmData;
	p_tyLinkOpsMagConvLD1AlmData1 ACCESS p_OpsMagConvLD1AlmData1;
	p_tyLinkOpsMagConvLD2AlmData ACCESS p_OpsMagConvLD2AlmData;
	p_tyLinkOpsMagConvLD2AlmData1 ACCESS p_OpsMagConvLD2AlmData1;
	p_tyLinkOpsMagConvLD3AlmData ACCESS p_OpsMagConvLD3AlmData;
	p_tyLinkOpsMagConvLD3AlmData1 ACCESS p_OpsMagConvLD3AlmData1;
	p_tyLinkOpsMagConvLD4AlmData ACCESS p_OpsMagConvLD4AlmData;
	p_tyLinkOpsMagConvLD4AlmData1 ACCESS p_OpsMagConvLD4AlmData1;
	p_tyLinkSelClamp1AlmData ACCESS p_PneuNoSenSelClamp1AlmData;
	p_tyLinkSelClamp2AlmData ACCESS p_PneuNoSenSelClamp2AlmData;
	p_tyLinkSelClamp3AlmData ACCESS p_PneuNoSenSelClamp3AlmData;
	p_tyLinkSelClamp4AlmData ACCESS p_PneuNoSenSelClamp4AlmData;
	p_tyLinkUSSOT1AlmData ACCESS p_USSOT1AlmData;
	p_tyLinkUSSOT2AlmData ACCESS p_USSOT2AlmData;
	p_tyLinkUSSOT3AlmData ACCESS p_USSOT3AlmData;
	p_tyLinkUSSOT4AlmData ACCESS p_USSOT4AlmData;
	p_tyLinkDSSOT1AlmData ACCESS p_DSSOT1AlmData;
	p_tyLinkDSSOT2AlmData ACCESS p_DSSOT2AlmData;
	p_tyLinkDSSOT3AlmData ACCESS p_DSSOT3AlmData;
	p_tyLinkDSSOT4AlmData ACCESS p_DSSOT4AlmData;
	p_tyLinkMcAlarmData ACCESS p_McAlmData;
	p_tyLinkMc1AlarmData ACCESS p_Mc1AlmData;
	p_tyLinkUSBBarcodeAlmData ACCESS p_USBRdrAlmData;	
	p_tyLinkUSBBarcodeAlmData1 ACCESS p_USBRdrAlmData1;	
	p_tyLinkUSBBarcodeAlmData2 ACCESS p_USBRdrAlmData2;
	p_tyLinkAGVAlmData1 ACCESS p_AGVAlmData1;
	p_tyLinkRS232FrmAlmData ACCESS p_FrmAlmData;
	p_tyLinkAWPushOrPullerAlmData ACCESS p_AWPushOrPullerAlmData;
	p_tyLinkAWPushOrPullerAlmData1 ACCESS p_AWPushOrPullerAlmData1;
	p_tyLinkAWPushOrPullerAlmData2 ACCESS p_AWPushOrPullerAlmData2;
	p_tyLinkAWPushOrPullerAlmData3 ACCESS p_AWPushOrPullerAlmData3;
	p_tyLinkMtrPshrAlmData ACCESS p_MtrPshrAlmData;
//	p_tyLinkUSHermesInfoData1 ACCESS p_USHermesInfoData1;//new for Hermes 1.3
//	p_tyLinkUSHermesInfoData2 ACCESS p_USHermesInfoData2;//new for Hermes 1.3
	p_tyLinkRmtHermesInfoData ACCESS p_RmtHermesInfoData;//new for Hermes 1.3
	p_tyLinkSvyHermesAlmData ACCESS p_SvyHermesAlmData;//new for Hermes 1.3
	p_tyLinkSvyHermesAlmData1 ACCESS p_SvyHermesAlmData1;//new for Hermes 1.3
	p_tyLinkSvyHermesAlmData2 ACCESS p_SvyHermesAlmData2;//new for Hermes 1.3
	p_tyLinkSvyHermesAlmData3 ACCESS p_SvyHermesAlmData3;//new for Hermes 1.3
	p_tyLinkSvyHermesAlmData4 ACCESS p_SvyHermesAlmData4;//new for Hermes 1.3
	p_tyLinkSvyHermesInfoData ACCESS p_SvyHermesInfoData;//new for Hermes 1.3
	p_tyLinkSvyHermesInfoData1 ACCESS p_SvyHermesInfoData1;//new for Hermes 1.3
	p_tyLinkSvyHermesInfoData2 ACCESS p_SvyHermesInfoData2;//new for Hermes 1.3
	p_tyLinkSvyHermesInfoData3 ACCESS p_SvyHermesInfoData3;//new for Hermes 1.3
	p_tyLinkSvyHermesInfoData4 ACCESS p_SvyHermesInfoData4;//new for Hermes 1.3
	p_tyLinkOutShutterAlmData2 ACCESS p_Pneu2SenOutShutterAlmData2;
	p_tyLinkTrllyAlmData ACCESS p_PneuExtSenTrllyAlmData;
	p_tyLinkTrlly2AlmData ACCESS p_PneuExtSenTrlly2AlmData;
	
	p_tyLinkOpsLifMagLDAlmData ACCESS p_OpsLifMagLDAlmData;
	p_tyLinkOpsLifMagLDAlmData1 ACCESS p_OpsLifMagLDAlmData1;
	
	p_tyLinkPPAlmData ACCESS p_PPAlmData;
	p_tyLinkPPAlmData1 ACCESS p_PPAlmData1;
	p_tyLinkPPAlmData2 ACCESS p_PPAlmData2;
	p_tyLinkPPAlmData3 ACCESS p_PPAlmData3;
	
	p_tyLinkInShutterAlmData2 ACCESS p_Pneu2SenInShutterAlmData2;
	p_tyLinkInShutterAlmData3 ACCESS p_Pneu2SenInShutterAlmData3;
	
	p_tyLinkAutoRcpAlmData ACCESS p_AutoRcpAlmData;
	p_tyLinkAutoRcpInfoData ACCESS p_AutoRcpInfoData;
	p_tyLinkAutoRcpInfoData1 ACCESS p_AutoRcpInfoData1;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_eAct ACCESS p_StartupAlarmAct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_udiFileKeepDay ACCESS p_NtParamAlmFileKeepDay;
	p_sProgNm ACCESS p_NtParamAlmProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bStartupUISettingsLoadDone ACCESS p_StartupUISettingsLoadDone;
	(* Always Change If Project Change *)
	
END_ACTION
