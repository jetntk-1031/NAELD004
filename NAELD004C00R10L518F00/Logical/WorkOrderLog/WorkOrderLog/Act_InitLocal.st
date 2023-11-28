(** 2021-06-20 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_tyDTStructure ACCESS ADR(tyDTStructure);
	p_dtCurrDT ACCESS ADR(dtCurrDT);

	p_bOpsRun ACCESS ADR(bOpsRun);
	
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);
	p_sRetainFileName ACCESS ADR(sRetainFileName);
//	p_udiRetainDataAddr ACCESS ADR(udiRetainDataAddr);
//	p_udiRetainDataLen ACCESS ADR(udiRetainDataLen);
	p_sProgNm ACCESS ADR(sProgNm);
	
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_bInternalUse ACCESS ADR(bInternalUse);
	
	p_sSourceString ACCESS ADR(a_sLogList);
	
END_ACTION
