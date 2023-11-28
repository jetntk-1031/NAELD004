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
	
	p_bLinkDIMagEntrySen ACCESS p_DIMagConvEntSen4;
	p_bLinkMcParamMagAutoDetTm ACCESS p_McParamMagAutoDetTm;
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bLinkMagRcpCurrRcpMagModel ACCESS p_MagRcpCurrRcpMagModel;
	
	p_bLinkNewMagVerified1 ACCESS p_OpsMagConvLD1NewMagVerified;
	p_bLinkNewMagVerified2 ACCESS p_OpsMagConvLD2NewMagVerified;
	p_bLinkNewMagVerified3 ACCESS p_OpsMagConvLD3NewMagVerified;
	
	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	p_bLinkMagRcpCurrRcpMagModel1 ACCESS p_MagRcpCurrRcpMagModel1;
	
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bEn ACCESS p_NtParamProjMag4ConvPrep;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsMagConvLD4ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifLDMagDis;
	
	p_bNewMag ACCESS p_UINewMag4;
	p_bRlsMag ACCESS p_UIRlsMag4;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	p_tyBufferStat4 ACCESS p_Buffer4BffrStat;
	
	p_bMagEntrySen1 ACCESS p_DIMagConvEntSen1;
	p_bMagEntrySen2 ACCESS p_DIMagConvEntSen2;
	p_bMagEntrySen3 ACCESS p_DIMagConvEntSen3;
	p_bMagEntrySen4 ACCESS p_DIMagConvEntSen4;
	
	p_bMagPresentSen ACCESS p_Buffer4MagPresent;
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	p_bBufferMagPresent4 ACCESS p_Buffer4MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	p_dtBufferMagPresentTm4 ACCESS p_Buffer4MagPresentTm;
	
	p_eBufferStat ACCESS p_Buffer4Stat;
	p_eBufferStatus ACCESS p_Buffer4Status;
	
	p_bBufferMagRemoved ACCESS p_Buffer4MagRemoved;
	
	p_eMagConv2ClpStat ACCESS p_MagConv2Clp4Stat;
	p_eMagConv2ClpStatus ACCESS p_MagConv2Clp4Status;
	p_bMagConv2ClpHvMag ACCESS p_MagConv2Clp4HvMag;
	
	p_eDSSMEMAStat ACCESS p_DSSMEMA4Stat;
	p_eDSSMEMAStatus ACCESS p_DSSMEMA4Status;
	p_bDSSMEMAConvStart ACCESS p_DSSMEMA4ConvStart;
	
	p_eAGVMagStat ACCESS p_AGVMag4Stat;
	p_eAGVMagStatus ACCESS p_AGVMag4Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag4McRunRdy;
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	
	p_eSelClampCtrlStat ACCESS p_PneuNoSenSelClamp4Stat;
	p_eSelClampCtrlStatus ACCESS p_PneuNoSenSelClamp4Status;
	
	p_bDIMagConvHeightSen ACCESS p_DIMagConvHeightSen4;
	p_bDIMagConvSelUnclampRS ACCESS p_DIMag4SelUnclampRS;
	p_bDIMagConvCAB717Sen ACCESS p_DIMagConvCAB717MagSen4;
	p_bDIMagConvSmallSen ACCESS p_DIMagConvSmallMagSen4;
	p_bDIMagConvLargeSen ACCESS p_DIMagConvLargeMagSen4;
	p_bDIInShutterClosedRS ACCESS p_DIInShutterCloseRS;
	
	p_bOpsTravLifLDInitDone ACCESS p_OpsTravLifLDInitDone;
	
	//USSOT
	p_eUSSOTStat ACCESS p_USSOT4Stat;
	p_eUSSOTStatus ACCESS p_USSOT4Status;
	p_bUSSOTTransporting ACCESS p_USSOT4Transporting;
	p_bUSSOTConvStart ACCESS p_USSOT4ConvStart;
	p_bUSSOTConvStop ACCESS p_USSOT4ConvStop;
	p_bUSSOTUSRdy ACCESS p_USSOT4USRdy;
	p_bUSSOTUSLargeMagRdy ACCESS p_USSOT4USLargeMagRdy;
		
	//DSSOT
	p_eDSSOTStat ACCESS p_DSSOT4Stat;
	p_eDSSOTStatus ACCESS p_DSSOT4Status;
	p_bDSSOTConvStart ACCESS p_DSSOT4ConvStart;
	p_bDSSOTConvStop ACCESS p_DSSOT4ConvStop;
	
	p_bDISOTRcv ACCESS p_DISOT4Receive;
	
	p_bInShutterExtended ACCESS p_Pneu2SenInShutterExtended;
	
	p_bUSAllow ACCESS p_Follower1USAllow;
	
	p_bLD1ExitedWait ACCESS p_OpsMagConvLD1ExitedWait;
	p_bLD2ExitedWait ACCESS p_OpsMagConvLD2ExitedWait;
	p_bLD3ExitedWait ACCESS p_OpsMagConvLD3ExitedWait;
	
	p_eSafetyBarStat ACCESS p_Pneu2SMag4SafetyBarStat;
	p_eSafetyBarStatus ACCESS p_Pneu2SMag4SafetyBarStatus;
	p_bSafetyBarExtended ACCESS p_Pneu2SMag4SafetyBarExtended;
	p_bSafetyBarRetracted ACCESS p_Pneu2SMag4SafetyBarRetracted;
	
	p_bOpsTravLifULUpdatePullSlot ACCESS p_OpsTravLifULUpdatePullSlot;
	
	p_bProjLifTravMnlLoad	ACCESS p_NtParamProjLifTravMnlLoad;
	(* Always Change If Project Change *)
	
END_ACTION
