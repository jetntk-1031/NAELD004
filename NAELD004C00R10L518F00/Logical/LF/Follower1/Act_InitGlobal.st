(** 2019-06-27 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_bMcParamMesRFIDEn ACCESS p_McParamMesRFIDEn;	

	p_bLinkOpsRun ACCESS p_OpsRun;
	p_eLinkNtParamProjMag ACCESS p_NtParamProjMag;
	p_bLinkNtParamProjMagConv1Prep ACCESS p_NtParamProjMag1ConvPrep;
	p_bLinkNtParamProjMagConv2Prep ACCESS p_NtParamProjMag2ConvPrep;
	p_bLinkNtParamProjMagConv3Prep ACCESS p_NtParamProjMag3ConvPrep;
	p_bLinkNtParamProjMagConv4Prep ACCESS p_NtParamProjMag4ConvPrep;
	p_bLinkBffr1MagRemoved ACCESS p_Buffer1MagRemoved;
	p_bLinkBffr2MagRemoved ACCESS p_Buffer2MagRemoved;
	p_bLinkBffr3MagRemoved ACCESS p_Buffer3MagRemoved;
	p_bLinkBffr4MagRemoved ACCESS p_Buffer4MagRemoved;
//	p_bLinkOpsMagLD1InitDone ACCESS p_OpsMagLD1InitDone;
//	p_bLinkOpsMagLD2InitDone ACCESS p_OpsMagLD2InitDone;
//	p_bLinkOpsMagLD3InitDone ACCESS p_OpsMagLD3InitDone;
//	p_bLinkOpsMagLD4InitDone ACCESS p_OpsMagLD4InitDone;
	p_bLinkOpsMagConvLD1InitDone ACCESS p_OpsMagConvLD1InitDone;
	p_bLinkOpsMagConvLD2InitDone ACCESS p_OpsMagConvLD2InitDone;
	p_bLinkOpsMagConvLD3InitDone ACCESS p_OpsMagConvLD3InitDone;
	p_bLinkOpsMagConvLD4InitDone ACCESS p_OpsMagConvLD4InitDone;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp1;
//	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;	//Follower 1 Assign With Default Recipe
	p_sProgNm ACCESS p_NtParamFollower1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bWidth2Prep ACCESS p_NtParamLFWidth2Prep;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat; //add
	p_eProdRcpStatus ACCESS p_ProdRcpStatus; //add
	p_eLinkUIProdRcpAct ACCESS p_UIProdRcpAct; //add
	p_tyProdRcpCurrRcpWr ACCESS p_UIProdRcpCurrRcpWr; //add
	(* Always Change If Project Change *)
	
END_ACTION
