(** 2021-06-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
		
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	//	p_bEn ACCESS p_McParamAIVEn;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;

	p_bOpsRun ACCESS p_OpsRun;
	
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	
	(* Always Change If Project Change *)
END_ACTION
