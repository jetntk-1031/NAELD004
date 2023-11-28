(** 2019-05-10 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamRS232Prep;
	p_diStartCode1 ACCESS p_McParamRS232StartCode1;
	p_diStartCode2 ACCESS p_McParamRS232StartCode2;
	p_diEndCode1 ACCESS p_McParamRS232EndCode1;
	p_diEndCode2 ACCESS p_McParamRS232EndCode2;
	p_sProgNm ACCESS p_NtParamRS232ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_udiFileKeepDay ACCESS p_NtParamAlmFileKeepDay;
	
	(* Always Change If Project Change *)
	
END_ACTION
