(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_eLinkMag ACCESS p_NtParamProjMag;
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp0McMod;
	p_bMcParamHermesSvyEn ACCESS p_McParamHermesSvyEn;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	
	p_bOpsRun ACCESS p_OpsRun;
	p_eStartupStep ACCESS p_StartupStep;

	p_sProgNm ACCESS p_NtParamMcProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;

	(* Always Change If Project Change *)
	
END_ACTION
