(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkConvHvBrd ACCESS p_PullConvHvBrd;
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifLDPosGo;
	p_bLinkNtParamDSWidthChkPrep ACCESS p_NtParamDSWidthChkPrep;
	p_bLinkMcParamDSWidthChkEn ACCESS p_McParamDSWidthChkEn;
	p_bLinkDIDSWidthChkSen ACCESS p_DIDSWidthChkSen;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_tyParam ACCESS p_McParamDSSMEMAAParam;
	p_bGdBrd ACCESS p_PullConvGdBrd;
	p_diTransferOutTO ACCESS p_McParamTranOutErrDlyTm;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bRightSen ACCESS p_DIConvRgtSen;
	p_bDSB ACCESS p_DIDSBA;
	p_bVirtualEn ACCESS p_UIVSMEMADSEnA;
	p_bDSBVirtual ACCESS p_UIVSMEMADSBA;
	p_tRstDlyTm ACCESS p_NtParamDSSMEMAARstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSMEMAASigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSMEMAAProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
