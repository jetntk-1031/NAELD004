(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_bPrep ACCESS p_NtParamTrolleyLckPrep;
	p_bExtSen ACCESS p_DITrolleyExtRS1;
	p_tRetTO ACCESS p_NtParamTrolleyLckRetTO;
	p_tExtTO ACCESS p_NtParamTrolleyLckExtTO;
	p_bTwoCtrlIn ACCESS p_NtParamTrolleyLckTwoCtrlIn;

	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
