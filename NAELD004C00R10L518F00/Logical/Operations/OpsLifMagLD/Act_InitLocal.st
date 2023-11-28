(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	pa_bMagDis ACCESS ADR(a_bMagDis);
	p_bUnloadMag ACCESS ADR(bUnloadMag);
	p_bDSAllow ACCESS ADR(bDSAllow);
	p_bPullerRotCylPrep ACCESS ADR(bPullerRotCylPrep);
	p_bPullerNoRotCylExitStartLif ACCESS ADR(bPullerNoRotCylExitStartLif);
	p_diPullerExtMaxSlt ACCESS ADR(diPullerExtMaxSlt);
	p_diPullerExtMinSlt ACCESS ADR(diPullerExtMinSlt);
	p_bLifterSafeInitialize ACCESS ADR(bLifterSafeInitialize);
	
	p_bProdRcpCurrRcpTopToBtm ACCESS ADR(bProdRcpCurrRcpTopToBtm);
	p_diProdRcpCurrRcpPitch ACCESS ADR(diProdRcpCurrRcpPitch);
	
	p_bMagSetupDone1 ACCESS ADR(bMagSetupDone1);
	p_bMagSetupDone2 ACCESS ADR(bMagSetupDone2);
	p_bMagSetupDone3 ACCESS ADR(bMagSetupDone3);
	
	p_tyBufferStat1 ACCESS ADR(tyBufferStat1);
	p_tyBufferStat2 ACCESS ADR(tyBufferStat2);
	p_tyBufferStat3 ACCESS ADR(tyBufferStat3);
	
	p_bMagPresentSen1 ACCESS ADR(bMagPresentSen1);
	p_bMagPresentSen2 ACCESS ADR(bMagPresentSen2);
	p_bMagPresentSen3 ACCESS ADR(bMagPresentSen3);
	
	p_bBufferMagPresent1 ACCESS ADR(bBufferMagPresent1);
	p_bBufferMagPresent2 ACCESS ADR(bBufferMagPresent2);
	p_bBufferMagPresent3 ACCESS ADR(bBufferMagPresent3);
	
	p_dtBufferMagPresentTm1 ACCESS ADR(dtBufferMagPresentTm1);
	p_dtBufferMagPresentTm2 ACCESS ADR(dtBufferMagPresentTm2);
	p_dtBufferMagPresentTm3 ACCESS ADR(dtBufferMagPresentTm3);
	
	p_eLifterStat ACCESS ADR(eLifterStat);
	p_eLifterStatus ACCESS ADR(eLifterStatus);
	
	p_eBufferStat1 ACCESS ADR(eBufferStat1);
	p_eBufferStatus1 ACCESS ADR(eBufferStatus1);
	
	p_eBufferStat2 ACCESS ADR(eBufferStat2);
	p_eBufferStatus2 ACCESS ADR(eBufferStatus2);
	
	p_eBufferStat3 ACCESS ADR(eBufferStat3);
	p_eBufferStatus3 ACCESS ADR(eBufferStatus3);
	
	p_eDSSMEMAStat1 ACCESS ADR(eDSSMEMAStat1);
	p_eDSSMEMAStatus1 ACCESS ADR(eDSSMEMAStatus1);
	p_bDSSMEMAConvStart1 ACCESS ADR(bDSSMEMAConvStart1);
	
	p_eDSSMEMAStat2 ACCESS ADR(eDSSMEMAStat2);
	p_eDSSMEMAStatus2 ACCESS ADR(eDSSMEMAStatus2);
	p_bDSSMEMAConvStart2 ACCESS ADR(bDSSMEMAConvStart2);
	
	p_eDSSMEMAStat3 ACCESS ADR(eDSSMEMAStat3);
	p_eDSSMEMAStatus3 ACCESS ADR(eDSSMEMAStatus3);
	p_bDSSMEMAConvStart3 ACCESS ADR(bDSSMEMAConvStart3);
	
	p_diBufferNxtUnloadSlt1 ACCESS ADR(diBufferNxtUnloadSlt1);
	p_diBufferNxtUnloadSlt2 ACCESS ADR(diBufferNxtUnloadSlt2);
	p_diBufferNxtUnloadSlt3 ACCESS ADR(diBufferNxtUnloadSlt3);
	
	
END_ACTION
