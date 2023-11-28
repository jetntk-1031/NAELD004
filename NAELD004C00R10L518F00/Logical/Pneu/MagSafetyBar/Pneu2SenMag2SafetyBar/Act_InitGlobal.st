(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkNtPrmProjMagSafetyBarPrep ACCESS p_NtParamProjMagSafetyBarPrep;
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkMagSafetyBarDisabledFront ACCESS p_MagRcpCurrRcpSBarDisabled;
	p_bLinkMagSafetyBarDisabledRear ACCESS p_MagRcpCurrRcpSBarDisabled1;
	
	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMagSafetyBarPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamMag2SafetyBarTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamMag2SafetyBarProgNm;
	p_bExtSen ACCESS p_DIMag2SafetyBarExtRS;
	p_bRetSen ACCESS p_DIMag2SafetyBarRetRS;
	p_tExtTO ACCESS p_NtParamMag2SafetyBarExtTO;
	p_tRetTO ACCESS p_NtParamMag2SafetyBarRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
