(** 2020-08-06 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;

	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkPullConvHvBrd ACCESS p_PullConvHvBrd;
	p_bLinkOpsTravLifLDInitDone ACCESS p_OpsTravLifLDInitDone;
	p_bLinkProjCurtainSenPrep ACCESS p_NtParamProjCurtainSenPrep;
	p_bLinkBypCurtainWidthChg ACCESS p_OpsTravLifLBypCurtainWidthChg;
	p_bLinkBypCurtainSenCtrl ACCESS p_OpsTravLifLDBypCurtainSenCtrl;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bDSWidthChkPrep ACCESS p_NtParamDSWidthChkPrep;
	p_bDSWidthChkEn ACCESS p_McParamDSWidthChkEn;
	p_bDSWidthChkSen ACCESS p_DIDSWidthChkSen;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp2;
	p_tyInternalReqProdRcp ACCESS p_Follower1UpdtProdRcp;	//Follower 2 Assign With Follower 1 Recipe
	p_sProgNm ACCESS p_NtParamFollower2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bWidth2Prep ACCESS p_NtParamLFWidth2Prep;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat; //add
	p_eProdRcpStatus ACCESS p_ProdRcpStatus; //add
	p_eLinkUIProdRcpAct ACCESS p_UIProdRcpAct; //add
	p_tyProdRcpCurrRcpWr ACCESS p_UIProdRcpCurrRcpWr; //add
	(* Always Change If Project Change *)
	
END_ACTION
