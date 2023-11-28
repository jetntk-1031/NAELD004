(** 2021-04-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_diTransferOutTO ACCESS p_McParamMag2ConvRunTmOut;
	p_bEn ACCESS p_McParamAGVComEn;
//	p_bVirtualEn ACCESS p_UIVSOTDSEn;
//	p_bDSBVirtual ACCESS p_UIVSOTDSB;
	p_tRstDlyTm ACCESS p_NtParamDSSOT2RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSOT2SigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSOT2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bMagSizeLarge ACCESS p_OpsMagConvLD2MagSizeL;
	
	(* Always Change If Project Change *)
	
END_ACTION
