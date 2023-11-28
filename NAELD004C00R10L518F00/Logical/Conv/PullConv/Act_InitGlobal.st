(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkUIBypsInitConv ACCESS p_UIOpsBypsInitConv;
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkRotHomeSen ACCESS p_DIPullerRotHmRS;
	p_bLinkRotRemoteSen	ACCESS p_DIPullerRotRmRS;
	p_bLinkPullerExtSen ACCESS p_DIPullerExtRS;	
	p_bLinkPullerRetSen ACCESS p_DIPullerRetRS;
	p_bLinkNtParamPullerRotPrep ACCESS p_NtParamProjPullerRotCylPrep;
	p_bSelfTest ACCESS p_DIMcSelfTest;
	p_bLinkDIRgtSen ACCESS p_DIConvRgtSen;
	p_bLinkOpsTravLifLDExitBrd ACCESS p_OpsTravLifLDExitBrd;
	p_bLinkDIPullerAntiJamSen ACCESS p_DIPullerAntiJamSen;
	p_bLinkPPTurnToHm ACCESS p_PPTurnToHm;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamPullConvOnDirMod;
	p_diInitTm ACCESS p_McParamConvInitTm;
	p_tMtrOffDlyTm ACCESS p_NtParamPullConvMtrOffDlyTm;
	p_diTxOutTimeOut ACCESS p_McParamTranOutErrDlyTm;
	p_eDirection ACCESS p_NtParamProjConvDir;
	p_sProgNm ACCESS p_NtParamPullConvProgNm;
	p_tPullerExtTO ACCESS p_NtParamPullConvPullExtTO;
	p_tPullerRetTO ACCESS p_NtParamPullConvPullRetTO;
	p_tRotHomeTO ACCESS p_NtParamPullConvRotHomeTO;
	p_tRotRemoteTO ACCESS p_NtParamPullConvRotRemoteTO;
	p_bLeftSen ACCESS p_DIConvLftSen;

	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
