(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag1ConvPrep;
	
	p_bLinkNtParamProjPullerRotPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
//	p_bLinkOpsMagMagBffrAvl ACCESS p_OpsMagLD1MagBffrAvl;
	p_bLinkOpsMagConvMagBffrAvl ACCESS p_OpsMagConvLD1MagBffrAvl;
	p_bLinkDIPullExtRS ACCESS p_DIPullerExtRS;
	p_bLinkDIPullRetRS ACCESS p_DIPullerRetRS;
	p_diLinkProdRcpCurrRcpPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_eLinkOpsLifMagLDMagNxtUnload ACCESS p_OpsLifMagLDMagNxtUnload;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bDSB ACCESS p_USSMEMA1USB;
	p_tRstDlyTm ACCESS p_NtParamDSSMEMA1RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSMEMA1SigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSMEMA1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
