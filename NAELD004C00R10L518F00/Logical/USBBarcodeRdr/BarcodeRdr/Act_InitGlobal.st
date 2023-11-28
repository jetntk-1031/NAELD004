(** 2020-08-29 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_tyLinkNtParam ACCESS p_NtParamCurr;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_sProgNm ACCESS p_NtParamUSBProgNm;
	
    p_eAct ACCESS p_UIUSBRdrAct;       //ADD

	p_diVendorID ACCESS p_McParamVID;
	p_diProductID ACCESS p_McParamPID;
	p_bUSBRun ACCESS p_UIUSBRun;
	p_bScannerEn ACCESS p_McParamScannerEn;

	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_udiFileKeepDay ACCESS p_NtParamAlmFileKeepDay;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
