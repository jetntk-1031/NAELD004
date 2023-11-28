(** 2020-08-29 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	
	p_bManual ACCESS ADR(bManual);
	p_sProgNm ACCESS ADR(sProgNm);
	
	p_diVendorID ACCESS ADR (uiVendorID);
	p_diProductID ACCESS ADR (uiProductID);
	p_bUSBRun ACCESS ADR (bUSBRun);
	p_bScannerEn ACCESS ADR (bScannerEn);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);

	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	

	
END_ACTION
