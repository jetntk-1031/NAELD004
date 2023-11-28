(** 2019-03-22 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsTravLifLDPaused ACCESS p_OpsTravLifLDPaused;
//	p_bLinkOpsMagLD1Paused ACCESS p_OpsMagLD1Paused;
//	p_bLinkOpsMagLD2Paused ACCESS p_OpsMagLD2Paused;
//	p_bLinkOpsMagLD3Paused ACCESS p_OpsMagLD3Paused;
//	p_bLinkOpsMagLD4Paused ACCESS p_OpsMagLD4Paused;
	p_bLinkOpsMagConvLD1Paused ACCESS p_OpsMagConvLD1Paused;
	p_bLinkOpsMagConvLD2Paused ACCESS p_OpsMagConvLD2Paused;
	p_bLinkOpsMagConvLD3Paused ACCESS p_OpsMagConvLD3Paused;
	p_bLinkOpsMagConvLD4Paused ACCESS p_OpsMagConvLD4Paused;
	p_bLinkUIOpsAct ACCESS p_UIOpsAct;
	p_bLinkSimuRun ACCESS p_SimuRun;
	p_bLinkSimuStop ACCESS p_SimuStop;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_bLinkOpsLifMagLDPaused ACCESS p_OpsLifMagLDPaused;
	
	//Pass Data To Internal Use
//	p_eAct ACCESS p_UIOpsAct;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
