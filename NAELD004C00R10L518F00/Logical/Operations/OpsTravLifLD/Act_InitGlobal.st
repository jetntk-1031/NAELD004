(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_sLinkProdRcpCurrRcp0Nm ACCESS p_ProdRcpCurrRcp0Nm;
	p_sLinkProdRcpCurrRcp2Nm ACCESS p_ProdRcpCurrRcp2Nm;
	
	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp2McMod;
	
	p_bLinkNtParamMagConv1Prep ACCESS p_NtParamProjMag1ConvPrep;
	p_bLinkNtParamMagConv2Prep ACCESS p_NtParamProjMag2ConvPrep;
	p_bLinkNtParamMagConv3Prep ACCESS p_NtParamProjMag3ConvPrep;
	p_bLinkNtParamMagConv4Prep ACCESS p_NtParamProjMag4ConvPrep;
	p_bLinkNtParamProjRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_bLinkDIPullerAntiJamSen ACCESS p_DIPullerAntiJamSen;
	
	p_bLinkProjWorkOrderOPCUA ACCESS p_NtParamProjWorkOrderOPCUA;
	p_uiLinkUIBrdOutCntr ACCESS p_UIBrdOutCntr;
	p_bLinkUIBlkTravLif ACCESS p_UIBlkTravLif;
	
	p_tyDISettings ACCESS p_NtParamDISettings;
	p_bCurtainSenPrep ACCESS p_NtParamProjCurtainSenPrep; //shutter keep on
	
	p_bRlsMag1 ACCESS p_UIRlsMag1;
	p_bRlsMag2 ACCESS p_UIRlsMag2;
	p_bRlsMag3 ACCESS p_UIRlsMag3;
	p_bEjectMag1 ACCESS p_UIEjectMag1;
	p_bEjectMag2 ACCESS p_UIEjectMag2;
	p_bEjectMag3 ACCESS p_UIEjectMag3;

	p_bLinkDIUnlockSafetySig ACCESS p_DIDSUnlockSafetySig;	
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_diAutoRcpTravLifPitch ACCESS p_AutoRcpTravLifPitch;
	p_bMcParamMesRFIDEn ACCESS p_McParamMesRFIDEn;	

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;

	p_bOutShutDis ACCESS p_McParamOutShutterDis;
	p_tShutterWaitTmr ACCESS p_NtParamShutterWaitTmr;
	p_bMagWidthChkDis ACCESS p_McParamMagWidthChkDis;
	
	p_sProgNm ACCESS p_NtParamOpsTravLifLDProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_eLDMag ACCESS p_NtParamProjMag;
//	p_bUSAllow ACCESS p_Follower1USAllow;
	p_bLinkFollower1USAllow ACCESS p_Follower1USAllow;
	p_bDSAllow ACCESS p_LFFollowerDSAllow;
	p_bPullerRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_diPullerExtMaxSlt ACCESS p_NtParamProjPullerExtMaxSlt; //bprojmagmaxslt
	p_diPullerExtMinSlt ACCESS p_NtParamProjPullerExtMinSlt; //bprojmagminslt
	
	p_bProdRcpCurrRcpTopToBtm ACCESS p_ProdRcpCurrRcp2TopToBtm;
	p_diProdRcpCurrRcpPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	p_diMinSlt ACCESS p_ProdRcpCurrRcp2MinSltValue;
	p_diMaxSlt ACCESS p_ProdRcpCurrRcp2MaxSltValue;

	p_diProdRcpCurrRcpPitchRear ACCESS p_ProdRcpCurrRcp2PitchRear;
	
	p_eDSCommMod1 ACCESS p_McParamDSCommAMod;
	p_eDSCommMod2 ACCESS p_McParamDSCommBMod;
	
	p_eUSSMEMAStat1 ACCESS p_USSMEMA1Stat;
	p_eUSSMEMAStatus1 ACCESS p_USSMEMA1Status;
	p_bUSSMEMAUSRdy1 ACCESS p_USSMEMA1USRdy;
	p_bUSSMEMATransporting1 ACCESS p_USSMEMA1Transporting;
	p_bUSSMEMAConvStart1 ACCESS p_USSMEMA1ConvStart;
	p_bUSSMEMAConvStop1 ACCESS p_USSMEMA1ConvStop;
	
	p_eUSSMEMAStat2 ACCESS p_USSMEMA2Stat;
	p_eUSSMEMAStatus2 ACCESS p_USSMEMA2Status;
	p_bUSSMEMAUSRdy2 ACCESS p_USSMEMA2USRdy;
	p_bUSSMEMATransporting2 ACCESS p_USSMEMA2Transporting;
	p_bUSSMEMAConvStart2 ACCESS p_USSMEMA2ConvStart;
	p_bUSSMEMAConvStop2 ACCESS p_USSMEMA2ConvStop;
	
	p_eUSSMEMAStat3 ACCESS p_USSMEMA3Stat;
	p_eUSSMEMAStatus3 ACCESS p_USSMEMA3Status;
	p_bUSSMEMAUSRdy3 ACCESS p_USSMEMA3USRdy;
	p_bUSSMEMATransporting3 ACCESS p_USSMEMA3Transporting;
	p_bUSSMEMAConvStart3 ACCESS p_USSMEMA3ConvStart;
	p_bUSSMEMAConvStop3 ACCESS p_USSMEMA3ConvStop;
	
	p_eUSSMEMAStat4 ACCESS p_USSMEMA4Stat;
	p_eUSSMEMAStatus4 ACCESS p_USSMEMA4Status;
	p_bUSSMEMAUSRdy4 ACCESS p_USSMEMA4USRdy;
	p_bUSSMEMATransporting4 ACCESS p_USSMEMA4Transporting;
	p_bUSSMEMAConvStart4 ACCESS p_USSMEMA4ConvStart;
	p_bUSSMEMAConvStop4 ACCESS p_USSMEMA4ConvStop;
	
	p_eDSSMEMAStat1 ACCESS p_DSSMEMAAStat;
	p_eDSSMEMAStatus1 ACCESS p_DSSMEMAAStatus;
	p_bDSSMEMADSRdy1 ACCESS p_DSSMEMAADSRdy;
	p_bDSSMEMAConvStart1 ACCESS p_DSSMEMAAConvStart;
	
	p_eDSSMEMAStat2 ACCESS p_DSSMEMABStat;
	p_eDSSMEMAStatus2 ACCESS p_DSSMEMABStatus;
	p_bDSSMEMADSRdy2 ACCESS p_DSSMEMABDSRdy;
	p_bDSSMEMAConvStart2 ACCESS p_DSSMEMABConvStart;
	
	p_bDSHermesDSRdy1 ACCESS p_DSHermesADSRdy;
	p_bDSHermesTransporting1 ACCESS p_DSHermesATransporting;
	p_bDSHermesStopTransport1 ACCESS p_DSHermesAStopTransport;
	
	p_bDSHermesDSRdy2 ACCESS p_DSHermesBDSRdy;
	p_bDSHermesTransporting2 ACCESS p_DSHermesBTransporting;
	p_bDSHermesStopTransport2 ACCESS p_DSHermesBStopTransport;
	
	p_eConvStat ACCESS p_PullConvStat;
	p_eConvStatus ACCESS p_PullConvStatus;
	p_eConvDir ACCESS p_NtParamProjConvDir;
	p_bConvHvBrd ACCESS p_PullConvHvBrd;
	
	p_eAWStat ACCESS p_AWOpenStat;
	p_eAWStatus ACCESS p_AWOpenStatus;
	p_bAWWidthPosDiff ACCESS p_AWOpenWidthPosDiff;
		
	p_eAWPushOrPullerStat ACCESS p_AWPushOrPullerStat;
	p_eAWPushOrPullerStatus ACCESS p_AWPushOrPullerStatus;
	p_bAWPushOrPullerWidthPosDiff ACCESS p_AWPushOrPullerWidthPosDiff;
	
	p_eTravStat ACCESS p_TravStat;
	p_eTravStatus ACCESS p_TravStatus;
	p_bTravAPosDiff ACCESS p_TravAPosDiff;
	p_bTravBPosDiff ACCESS p_TravBPosDiff;
	p_bTravCPosDiff ACCESS p_TravCPosDiff;
	p_bTravDPosDiff ACCESS p_TravDPosDiff;
	p_bTravEPosDiff ACCESS p_TravEPosDiff;
	p_bTravPosDiff ACCESS p_TravPosDiff;
	
//	p_eLifStat ACCESS p_LifterBtmStat;
//	p_eLifStatus ACCESS p_LifterBtmStatus;
	p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
	p_bLifterAPosDiff ACCESS p_LifterBtmAPosDiff;
	p_bLifterBPosDiff ACCESS p_LifterBtmBPosDiff;
	
	p_eInletPneuStat ACCESS p_Pneu2SenInShutterStat;
	p_eInletPneuStatus ACCESS p_Pneu2SenInShutterStatus;
	p_bInletPneuCls ACCESS p_Pneu2SenInShutterExtended;
	p_bInShutterExtended ACCESS p_Pneu2SenInShutterExtended;
	p_bInShutterRetracted ACCESS p_Pneu2SenInShutterRetracted;
	p_bInShutterOpenRS ACCESS p_DIInShutterOpenRS;
	
	p_eInletPneuStat2 ACCESS p_Pneu2SenInShutterStat2;
	p_eInletPneuStatus2 ACCESS p_Pneu2SenInShutterStatus2;
	p_bInletPneuCls2 ACCESS p_Pneu2SenInShutterExtended2;
	p_bInShutterExtended2 ACCESS p_Pneu2SenInShutterExtended2;
	p_bInShutterRetracted2 ACCESS p_Pneu2SenInShutterRetracted2;
	p_bInShutterOpenRS2 ACCESS p_DIInShutterOpenRS2;
	
	p_eInletPneuStat3 ACCESS p_Pneu2SenInShutterStat3;
	p_eInletPneuStatus3 ACCESS p_Pneu2SenInShutterStatus3;
	p_bInletPneuCls3 ACCESS p_Pneu2SenInShutterExtended3;
	p_bInShutterExtended3 ACCESS p_Pneu2SenInShutterExtended3;
	p_bInShutterRetracted3 ACCESS p_Pneu2SenInShutterRetracted3;
	p_bInShutterOpenRS3 ACCESS p_DIInShutterOpenRS3;
	
	p_eOutletPneuStat ACCESS p_Pneu2SenOutShutterStat;
	p_eOutletPneuStatus ACCESS p_Pneu2SenOutShutterStatus;
	p_bOutShutterOpenRS ACCESS p_DIOutShutterOpenRS;
	p_bOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;

	p_ePullerStat ACCESS p_Pneu2SenPullerStat;
	p_ePullerStatus ACCESS p_Pneu2SenPullerStatus;
	
	p_bConvLftSen ACCESS p_DIConvLftSen;
	p_bConvRgtSen ACCESS p_DIConvRgtSen;
	p_bConvClrSen ACCESS p_DIConvClrSen;
	p_bPullerExtSen ACCESS p_DIPullerExtRS;
	p_bPullerRetSen ACCESS p_DIPullerRetRS;

	p_bBufferMagPresent1 ACCESS p_DIMagPresentSen1;
	p_bBufferMagPresent2 ACCESS p_DIMagPresentSen2;
	p_bBufferMagPresent3 ACCESS p_DIMagPresentSen3;
	p_bBufferMagPresent4 ACCESS p_DIMagPresentSen4;
	p_diBufferNxtUnloadSlt1 ACCESS p_Buffer1NxtUnloadSlt;
	p_diBufferNxtUnloadSlt2 ACCESS p_Buffer2NxtUnloadSlt;
	p_diBufferNxtUnloadSlt3 ACCESS p_Buffer3NxtUnloadSlt;
	p_diBufferNxtUnloadSlt4 ACCESS p_Buffer4NxtUnloadSlt;
	
	p_bDBAOnRgtSen	ACCESS p_McParamDBAOnRgtSen;
	p_eConvDirection ACCESS p_NtParamProjConvDir;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bRightSen ACCESS p_DIConvRgtSen;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	p_tyBufferStat4 ACCESS p_Buffer4BffrStat;
	
	p_bTravIsHomed ACCESS p_TravIsHomed;
	p_bLifterBtmIsHomed ACCESS p_LifterBtmIsHomed;
	
	p_diSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bMagWidthChkSenOn ACCESS p_DIMagWidthChkSen;
	
	p_bStepMagConvLD1DSCom ACCESS p_OpsMagConvLD1DSCom;
	p_bStepMagConvLD2DSCom ACCESS p_OpsMagConvLD2DSCom;
	p_bStepMagConvLD3DSCom ACCESS p_OpsMagConvLD3DSCom;
	p_bStepMagConvLD4DSCom ACCESS p_OpsMagConvLD4DSCom;
	
	p_bMCLD1AGVCommRdy ACCESS p_OpsMagConvLD1AGVCommRdy;
	p_bMCLD2AGVCommRdy ACCESS p_OpsMagConvLD2AGVCommRdy;
	p_bMCLD3AGVCommRdy ACCESS p_OpsMagConvLD3AGVCommRdy;

	
	p_diNtParamPullerHeightInMM ACCESS p_NtParamPullerHeightInMM;
		
	p_bPullerNoRotCylStartPull ACCESS p_OpsLifMagLDBffrExitBrd;
	
	p_bMCSelfTest ACCESS p_DIMcSelfTest;
	
	p_bCurtainSenPB ACCESS p_DIBypCurtainSensorPB; //JOHN
	p_bPullerRotHmRS ACCESS p_DIPullerRotHmRS; //JOHN
	
	p_bOpsMagConvLD1UnclmpDone ACCESS p_OpsMagConvLD1UnclmpDone;
	p_bOpsMagConvLD2UnclmpDone ACCESS p_OpsMagConvLD2UnclmpDone;
	p_bOpsMagConvLD3UnclmpDone ACCESS p_OpsMagConvLD3UnclmpDone;
	p_bShutter2Prep ACCESS p_NtParamProjShutter2Prep;
	p_bShutter3Prep ACCESS p_NtParamProjShutter3Prep;
	p_bOutShutter2Prep ACCESS p_NtParamProjOutShutter2Prep; //outshutter 2
	p_eOutletPneuStat2 ACCESS p_Pneu2SenOutShutterStat2;
	p_eOutletPneuStatus2 ACCESS p_Pneu2SenOutShutterStatus2;
	p_bOutShutterOpenRS2 ACCESS p_DIOutShutterOpenRS2;
	p_siCntrPullLmt ACCESS p_NtParamProjCntrPullLmt;

	//AutoRcp
	p_bAutoRcpTravWidthDiffBlk ACCESS p_AutoRcpbTravWidthDiffblk;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_ausiSvyMagAccOrder ACCESS p_SvyHermesMagAccOrder;
	p_bHermesSvyPrep ACCESS p_NtParamHermesSvyPrep; //queryWO
	p_bMcParamHermesSvyEn ACCESS p_McParamHermesSvyEn;

	p_tyAutoRcpMagRcp ACCESS p_AutoRcpMagRcp;
END_ACTION
