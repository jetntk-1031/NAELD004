(** 2018-12-10 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)

	//Pass Data To Link
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	p_bLinkNtParamProjSOTSenPrep ACCESS p_NtParamProjSOTSenPrep;
	p_bOpsTravLifLDBypCurtainSenCtrl ACCESS p_OpsTravLifLDBypCurtainSenCtrl;
	p_bCurtainSenPrep ACCESS p_NtParamProjCurtainSenPrep;
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_tyDISettings ACCESS p_NtParamDISettings;
	p_sProgNm ACCESS p_NtParamDIProgNm;
	
	p_diConvLftSenOnTm ACCESS p_McParamConvLftSenOnTm;
	p_diConvLftSenOffTm ACCESS p_McParamConvLftSenOffTm;
	p_diConvRgtSenOnTm ACCESS p_McParamConvRgtSenOnTm;
	p_diConvRgtSenOffTm ACCESS p_McParamConvRgtSenOffTm;
 	p_diMagConvEntSenOnTm ACCESS p_McParamMagConvEntrySenOnTm;
	p_diMagConvEntSenOffTm ACCESS p_McParamMagConvEntrySenOffTm;
	p_diMagConvPresentSenOnTm ACCESS p_McParamMagConvPresentSenOnTm;
	p_diMagConvPresentSenOffTm ACCESS p_McParamMagConvPresentSenOffTm;

	p_bUIAGVSimulationOn ACCESS p_UIAGVSimulationOn;
	p_tySOTSimulate1 ACCESS p_UISOTSimulationSig1;
	p_tySOTSimulate2 ACCESS p_UISOTSimulationSig2;
	p_tySOTSimulate3 ACCESS p_UISOTSimulationSig3;
	p_tySOTSimulate4 ACCESS p_UISOTSimulationSig4;
	
	p_tyTagFromMes ACCESS p_TagFromMes;
	p_tyDO  ACCESS p_DO;
	p_eLDMag ACCESS p_NtParamProjMag;

	p_bPullConvHvBrd ACCESS p_PullConvHvBrd;
	p_bRstErrSafetyRlyRst ACCESS p_RstErrSafetyRlyRst;
	p_bRstCurtainSenCtrl ACCESS p_UISafetyCurtainReset;
	(* Always Change If Project Change *)
	
END_ACTION
