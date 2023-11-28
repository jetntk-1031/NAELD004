(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkNtParamProjPullerRotPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_bLinkConvHvBrd ACCESS p_PullConvHvBrd;
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifLDPosGo;
	p_bLinkDIPullExtRS ACCESS p_DIPullerExtRS;
	p_bLinkDIPullRetRS ACCESS p_DIPullerRetRS;
	p_diLinkProdRcpCurrRcpPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bRightSen ACCESS p_DIConvRgtSen;
	p_bUBA ACCESS p_DSSMEMA3DBA;
	p_bUBAStat ACCESS p_DSSMEMA3DBAStat;
	p_tRstDlyTm ACCESS p_NtParamUSSMEMA3RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSMEMA3SigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSMEMA3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
