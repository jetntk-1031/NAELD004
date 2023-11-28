(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkDIPullerRetRS ACCESS p_DIPullerRetRS;
	p_bLinkDIConvLftSen ACCESS p_DIConvLftSen;
	p_bLinkProjShutter3Prep ACCESS p_NtParamProjShutter3Prep;
	p_bLinkShutter1Extended ACCESS p_Pneu2SenInShutterExtended;
	p_bLinkShutter1Retracted ACCESS p_Pneu2SenInShutterRetracted;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjInletShutPrep;
	p_bSimu ACCESS p_UISimuMod;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamInShutterTwoCtrlIn;
//	p_sProgNm ACCESS p_NtParamInShutterProgNm;
	p_bExtSen ACCESS p_DIInShutterCloseRS3;
	p_bRetSen ACCESS p_DIInShutterOpenRS3;
	p_tExtTO ACCESS p_NtParamInShutterExtTO;
	p_tRetTO ACCESS p_NtParamInShutterRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
