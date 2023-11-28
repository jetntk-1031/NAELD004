(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag2ConvPrep;
	
	p_bLinkNtParamProjPullerRotPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
//	p_bLinkOpsMagMagBffrAvl ACCESS p_OpsMagLD2MagBffrAvl;
	p_bLinkOpsMagConvMagBffrAvl ACCESS p_OpsMagConvLD2MagBffrAvl;
	p_bLinkDIPullExtRS ACCESS p_DIPullerExtRS;
	p_bLinkDIPullRetRS ACCESS p_DIPullerRetRS;
	p_diLinkProdRcpCurrRcpPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_eLinkOpsLifMagLDMagNxtUnload ACCESS p_OpsLifMagLDMagNxtUnload;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bDSB ACCESS p_USSMEMA2USB;
	p_tRstDlyTm ACCESS p_NtParamDSSMEMA2RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSMEMA2SigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSMEMA2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
