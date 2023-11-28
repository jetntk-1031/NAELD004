(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_sSearch ACCESS p_UIMagRcpSearch1;
	p_tyInfoIn ACCESS p_UIMagRcpInfoIn1;
	p_sListFileName ACCESS p_NtParamMagRcpListFileNm1;
	p_sSingleFileName ACCESS p_NtParamMagRcpSingleFileNm1;
	p_sProgNm ACCESS p_NtParamMagRcpProgNm1;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
