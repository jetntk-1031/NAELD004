(** 2021-04-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_diTransferOutTO ACCESS p_McParamMag1ConvRunTmOut;
	p_bEn ACCESS p_McParamAGVComEn;
//	p_bVirtualEn ACCESS p_UIVSOTDSEn;
//	p_bDSBVirtual ACCESS p_UIVSOTDSB;
	p_tRstDlyTm ACCESS p_NtParamDSSOT1RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSOT1SigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSOT1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bMagSizeLarge ACCESS p_OpsMagConvLD1MagSizeL;
	
	(* Always Change If Project Change *)
	
END_ACTION
