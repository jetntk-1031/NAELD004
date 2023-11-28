(** 2019-05-20 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	
	p_sMsgWr ACCESS ADR(sMsgWr);
	p_tyParam ACCESS ADR(tyParam);
	p_tyXOpenConfig ACCESS ADR(tyXOpenConfig);
	p_diStartCode1 ACCESS ADR(diStartCode1);
	p_diStartCode2 ACCESS ADR(diStartCode2);
	p_diEndCode1 ACCESS ADR(diEndCode1);
	p_diEndCode2 ACCESS ADR(diEndCode2);
	p_sProgNm ACCESS ADR(sProgNm);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
