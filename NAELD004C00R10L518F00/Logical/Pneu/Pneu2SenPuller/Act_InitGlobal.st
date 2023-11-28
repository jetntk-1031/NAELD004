(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkAlmErr ACCESS p_AlarmErr;
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bDis ACCESS p_NtParamProjPullerRotCylPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamPullerTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamPullerProgNm;
	p_bExtSen ACCESS p_DIPullerExtRS;
	p_bRetSen ACCESS p_DIPullerRetRS;
	p_tExtTO ACCESS p_NtParamPullerExtTO;
	p_tRetTO ACCESS p_NtParamPullerRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
