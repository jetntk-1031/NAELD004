(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkPullerRetRS ACCESS p_DIPullerRetRS; //safeinitial param
	p_bLinkInShutterCloRS ACCESS p_DIInShutterCloseRS; //safeinitial param
	p_bLinkInShutterExtended ACCESS p_Pneu2SenInShutterExtended;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsLifMagLDProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifLDMagDis;
	p_bUnloadMag ACCESS p_UIUnloadMag;
	p_bPullerRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_bPullerNoRotCylExitStartLif ACCESS p_Pneu2SenPullerExtended;
	p_diPullerExtMaxSlt ACCESS p_NtParamProjPullerExtMaxSlt;
	p_diPullerExtMinSlt ACCESS p_NtParamProjPullerExtMinSlt;

	p_bProdRcpCurrRcpTopToBtm ACCESS p_ProdRcpCurrRcp1TopToBtm;
	p_diProdRcpCurrRcpPitch ACCESS p_ProdRcpCurrRcp1Pitch;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bMagPresentSen3 ACCESS p_DIMagPresentSen3;
	
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_eLifterStat ACCESS p_LifterBtmStat;
	p_eLifterStatus ACCESS p_LifterBtmStatus;
	
	p_eBufferStat1 ACCESS p_Buffer1Stat;
	p_eBufferStatus1 ACCESS p_Buffer1Status;
	
	p_eBufferStat2 ACCESS p_Buffer2Stat;
	p_eBufferStatus2 ACCESS p_Buffer2Status;
	
	p_eBufferStat3 ACCESS p_Buffer3Stat;
	p_eBufferStatus3 ACCESS p_Buffer3Status;
	
	p_eDSSMEMAStat1 ACCESS p_DSSMEMA1Stat;
	p_eDSSMEMAStatus1 ACCESS p_DSSMEMA1Status;
	p_bDSSMEMAConvStart1 ACCESS p_DSSMEMA1ConvStart;
	
	p_eDSSMEMAStat2 ACCESS p_DSSMEMA2Stat;
	p_eDSSMEMAStatus2 ACCESS p_DSSMEMA2Status;
	p_bDSSMEMAConvStart2 ACCESS p_DSSMEMA2ConvStart;
	
	p_eDSSMEMAStat3 ACCESS p_DSSMEMA3Stat;
	p_eDSSMEMAStatus3 ACCESS p_DSSMEMA3Status;
	p_bDSSMEMAConvStart3 ACCESS p_DSSMEMA3ConvStart;
	
	p_diBufferNxtUnloadSlt1 ACCESS p_Buffer1NxtUnloadSlt;
	p_diBufferNxtUnloadSlt2 ACCESS p_Buffer2NxtUnloadSlt;
	p_diBufferNxtUnloadSlt3 ACCESS p_Buffer3NxtUnloadSlt;
	
	(* Always Change If Project Change *)
	
END_ACTION
