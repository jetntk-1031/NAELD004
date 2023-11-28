(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkDIMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bLinkMagConv2Clp1MtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bLinkMagConv2Clp1MtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bLinkDIMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bLinkMagConv2Clp2MtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bLinkMagConv2Clp2MtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bLinkDIMagPresentSen3 ACCESS p_DIMagPresentSen3;
	p_bLinkMagConv2Clp3MtrIn ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bLinkMagConv2Clp3MtrOut ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bLinkDIMagPresentSen3 ACCESS p_DIMagPresentSen3;
	p_bLinkMagConv2Clp3MtrIn ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bLinkMagConv2Clp3MtrOut ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bLinkDIMagPresentSen4 ACCESS p_DIMagPresentSen4;
	p_bLinkMagConv2Clp4MtrIn ACCESS p_MagConv2Clp4MtrSigOnOrLToR;
	p_bLinkMagConv2Clp4MtrOut ACCESS p_MagConv2Clp4MtrDirOrRToL;
	
	p_bLinkFixedMagClampRS1 ACCESS p_DIMag1FixedClampRS;
	p_bLinkRmtMagClampRS1 ACCESS p_DIMag1RemoteClampRS;
	
	p_bLinkFixedMagClampRS2 ACCESS p_DIMag2FixedClampRS;
	p_bLinkRmtMagClampRS2 ACCESS p_DIMag2RemoteClampRS;
	
	p_bLinkFixedMagClampRS3 ACCESS p_DIMag3FixedClampRS;
	p_bLinkRmtMagClampRS3 ACCESS p_DIMag3RemoteClampRS;
	
	p_bLinkFixedMagClampRS4 ACCESS p_DIMag4FixedClampRS;
	p_bLinkRmtMagClampRS4 ACCESS p_DIMag4RemoteClampRS;
	
	p_bLinkDIMagEntrySen ACCESS p_DIMagConvEntSen3;
	p_bLinkMcParamMagAutoDetTm ACCESS p_McParamMagAutoDetTm;
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bLinkMagRcpCurrRcpMagModel ACCESS p_MagRcpCurrRcpMagModel;

	p_bLinkNewMagVerified1 ACCESS p_OpsMagConvLD1NewMagVerified;
	p_bLinkNewMagVerified2 ACCESS p_OpsMagConvLD2NewMagVerified;
	p_bLinkNewMagVerified4 ACCESS p_OpsMagConvLD4NewMagVerified;

	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	p_bLinkMagRcpCurrRcpMagModel1 ACCESS p_MagRcpCurrRcpMagModel1;
	
	p_bLinkProjCurtainSenPrep ACCESS p_NtParamProjCurtainSenPrep;
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;
	p_bMag3OrientationChkSen1 ACCESS p_DIMag3OrientChkSen1;
	p_bMagOrientChkSenPrep ACCESS p_NtParamProjMagOrientChkSenPrep;
	p_bMagHeightDetSen3 ACCESS p_DIHighMagDetSen3;
	p_bMagHeightDetEn ACCESS p_MagRcpCurrRcpMagHeightChkEn;
	p_bMagHeightDetPrep	ACCESS p_NtParamProjMagHeightChkPrep;
	p_bFixedSideDetect ACCESS p_DIMag3FixedSideDetect;//sensor
	
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_bHermesSvyPrep ACCESS p_NtParamHermesSvyPrep; //queryWO
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamHermesSvyEn ACCESS p_McParamHermesSvyEn;
	p_bMcParamMesRFIDEn ACCESS p_McParamMesRFIDEn;		//MES Rfid opcua
	p_diRFIDTO ACCESS p_McParamMesRFIDTOInMS;
	
	p_bMagPropDiffBlk ACCESS p_AutoRcpbMag3PropDiffBlk; //link- false
	p_bAutoRcpbMag3RcpLoaded ACCESS p_AutoRcpbMag3RcpLoaded; //ops
	p_ausiSvyMagAccOrder ACCESS p_SvyHermesMagAccOrder;
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv3; //For Siemen
	p_bHCommModChg ACCESS p_UIHCommModChg;

	p_ausiLCSLFMagAccOrder ACCESS p_LCSLFMagAccOrder;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bEn ACCESS p_NtParamProjMag3ConvPrep;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsMagConvLD3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifLDMagDis;
	
	p_bNewMag ACCESS p_UINewMag3;
	p_bRlsMag ACCESS p_UIRlsMag3;
	p_bUIP800Press3 ACCESS p_UIP800Press3;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	p_tyBufferStat4 ACCESS p_Buffer4BffrStat;
	
	p_bMagEntrySen1 ACCESS p_DIMagConvEntSen1;
	p_bMagEntrySen2 ACCESS p_DIMagConvEntSen2;
	p_bMagEntrySen3 ACCESS p_DIMagConvEntSen3;
	p_bMagEntrySen4 ACCESS p_DIMagConvEntSen4;
	
	p_bMagPresentSen ACCESS p_Buffer3MagPresent;
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	p_bBufferMagPresent4 ACCESS p_Buffer4MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	p_dtBufferMagPresentTm4 ACCESS p_Buffer4MagPresentTm;
	
	p_eBufferStat ACCESS p_Buffer3Stat;
	p_eBufferStatus ACCESS p_Buffer3Status;
	
	p_bBufferMagRemoved ACCESS p_Buffer3MagRemoved;
	
	p_eMagConv2ClpStat ACCESS p_MagConv2Clp3Stat;
	p_eMagConv2ClpStatus ACCESS p_MagConv2Clp3Status;
	p_bMagConv2ClpHvMag ACCESS p_MagConv2Clp3HvMag;
	
	p_eDSSMEMAStat ACCESS p_DSSMEMA3Stat;
	p_eDSSMEMAStatus ACCESS p_DSSMEMA3Status;
	p_bDSSMEMAConvStart ACCESS p_DSSMEMA3ConvStart;
	
	p_eAGVMagStat ACCESS p_AGVMag3Stat;
	p_eAGVMagStatus ACCESS p_AGVMag3Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag3McRunRdy;
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	
	p_eSelClampCtrlStat ACCESS p_PneuNoSenSelClamp3Stat;
	p_eSelClampCtrlStatus ACCESS p_PneuNoSenSelClamp3Status;
	
	p_bDIMagConvHeightSen ACCESS p_DIMagConvHeightSen3;
	p_bDIMagConvSelUnclampRS ACCESS p_DIMag3SelUnclampRS;
	p_bDIMagConvCAB717Sen ACCESS p_DIMagConvCAB717MagSen3;
	p_bDIMagConvSmallSen ACCESS p_DIMagConvSmallMagSen3;
	p_bDIMagConvLargeSen ACCESS p_DIMagConvLargeMagSen3;
	p_bDIInShutterClosedRS ACCESS p_DIInShutterCloseRS;
	
	p_bOpsTravLifLDInitDone ACCESS p_OpsTravLifLDInitDone;
	
	//USSOT
	p_eUSSOTStat ACCESS p_USSOT3Stat;
	p_eUSSOTStatus ACCESS p_USSOT3Status;
	p_bUSSOTTransporting ACCESS p_USSOT3Transporting;
	p_bUSSOTConvStart ACCESS p_USSOT3ConvStart;
	p_bUSSOTConvStop ACCESS p_USSOT3ConvStop;
	p_bUSSOTUSRdy ACCESS p_USSOT3USRdy;
	p_bUSSOTUSLargeMagRdy ACCESS p_USSOT3USLargeMagRdy;
		
	//DSSOT
	p_eDSSOTStat ACCESS p_DSSOT3Stat;
	p_eDSSOTStatus ACCESS p_DSSOT3Status;
	p_bDSSOTConvStart ACCESS p_DSSOT3ConvStart;
	p_bDSSOTConvStop ACCESS p_DSSOT3ConvStop;
	
	p_bDISOTRcv ACCESS p_DISOT3Receive;
	p_bDISOTAGVReady ACCESS p_DISOT3Ready;

	p_bInShutterExtended ACCESS p_Pneu2SenInShutterExtended3;
	
	p_bUSAllow ACCESS p_Follower1USAllow;
	
	p_bLD1ExitedWait ACCESS p_OpsMagConvLD1ExitedWait;
	p_bLD2ExitedWait ACCESS p_OpsMagConvLD2ExitedWait;
	p_bLD4ExitedWait ACCESS p_OpsMagConvLD4ExitedWait;
	
	p_eSafetyBarStat ACCESS p_Pneu2SMag3SafetyBarStat;
	p_eSafetyBarStatus ACCESS p_Pneu2SMag3SafetyBarStatus;
	p_bSafetyBarExtended ACCESS p_Pneu2SMag3SafetyBarExtended;
	p_bSafetyBarRetracted ACCESS p_Pneu2SMag3SafetyBarRetracted;
	
	p_bOpsTravLifULUpdatePullSlot ACCESS p_OpsTravLifULUpdatePullSlot;
	p_eOpsTravLifLDPosGo ACCESS p_OpsTravLifLDPosGo;
	
	p_bOpsTravLifErrCmdUnclmp ACCESS p_OpsTravLifWChkErrCmdUnclmp3;
	p_bProjLifTravMnlLoad	ACCESS p_NtParamProjLifTravMnlLoad;
	
	p_bOpsTravLifLDEntBrd ACCESS p_OpsTravLifLDEntBrd;
	p_bOpsTravLifLDUSMagWidthChk ACCESS p_OpsTravLifLDUSMagWidthChk;
	p_bOpsTravLifMove ACCESS p_OpsTravLifMove;
	
	p_bEjectMag ACCESS p_UIEjectMag3;
	
	(* Always Change If Project Change *)
	
END_ACTION
