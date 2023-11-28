(** 2019-05-07 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkNtParamProjLaneBPrep ACCESS p_NtParamProjLaneBPrep;
	p_eLinkMcParamDSACommMod ACCESS p_McParamDSCommAMod;
	p_eLinkMcParamDSBCommMod ACCESS p_McParamDSCommBMod;
	
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkConvHvBrd ACCESS p_PullConvHvBrd;
	p_bLinkOpsMagConvLD1QueryWO ACCESS p_OpsMagConvLD1QueryWO;
	p_bLinkOpsMagConvLD2QueryWO ACCESS p_OpsMagConvLD2QueryWO;
	p_bLinkOpsMagConvLD3QueryWO ACCESS p_OpsMagConvLD3QueryWO;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_tyResponseFromMES1 ACCESS p_TagFromMesMagConv1; //For we_fab
	p_tyResponseFromMES2 ACCESS p_TagFromMesMagConv2; //For we_fab
	p_tyResponseFromMES3 ACCESS p_TagFromMesMagConv3; //For we_fab

	//Pass Data To Internal Use
	p_eAct ACCESS p_LCS_LCSLF_LCSAct;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamLCSLFPrep;
	p_bEn ACCESS p_McParamLCSLFEn;
	p_tyCurrProdParam ACCESS p_ProdRcpCurrRcp0;
	p_bMnlAccData ACCESS p_McParamMnlAccDat;
	p_bAccData ACCESS p_UIProdAccData;
	p_tyLCSProdRcpInfo ACCESS p_LCS_LCSLF_LCSProdRcpInfo;
	p_bChkLmtOK ACCESS p_LCSChkLmtOK;
	p_bChkLmtNG ACCESS p_LCSChkLmtNG;
	p_sProgNm ACCESS p_NtParamLCSLFProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bUIBtnSectionLdr ACCESS P_UISectionLdr;
	p_bLCSSectionLeaderEn ACCESS p_LCSSectionLeaderEn;
	p_bMcParamSectionLdr ACCESS p_McParamSectionLeader;
	
	(* Always Change If Project Change *)
	
END_ACTION
