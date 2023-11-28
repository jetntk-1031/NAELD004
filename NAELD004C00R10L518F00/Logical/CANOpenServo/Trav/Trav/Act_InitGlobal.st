(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bSimu ACCESS p_UISimuMod;
	
	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	
	p_diLinkAPos ACCESS p_MagRcpCurrRcpMag1TravPos;
	p_diLinkBPos ACCESS p_MagRcpCurrRcpMag2TravPos;
	p_diLinkCPos ACCESS p_MagRcpCurrRcpMag3TravPos;
	p_diLinkGPos ACCESS p_MagRcpCurrRcpMag4TravPos;
	
	p_diLinkAPos1 ACCESS p_MagRcpCurrRcpMag1TravPos1;
	p_diLinkBPos1 ACCESS p_MagRcpCurrRcpMag2TravPos1;
	p_diLinkCPos1 ACCESS p_MagRcpCurrRcpMag3TravPos1;
	p_diLinkGPos1 ACCESS p_MagRcpCurrRcpMag4TravPos1;
	
	p_bLinkNtParamProjRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	
	p_bLinkOpsTravLifULInDSPos ACCESS p_OpsTravLifULInDSPos;
	p_bLinkOpsTravLifUSMagWidthChk ACCESS p_OpsTravLifLDUSMagWidthChk;
	
	p_bLinkNtParamProjDsFixToFixRail ACCESS p_NtParamProjDsFixToFixRail;
	p_diLinkFixtoFixPosIn ACCESS p_McParamTravOutletFixtoFixPos;
	p_diLinkMcParamTravPosB ACCESS p_McParamTravPosB;
	p_tyProdRcpCurrRcp ACCESS p_ProdRcpCurrRcp2;

	p_bLinkSafetyRelay ACCESS p_DISafetyRlySig;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	
		//Trav magwidthCheck
	p_bLinkTravGotoChkPt ACCESS p_OpsTravLifULTravGotoChkPt;
//	p_diLinkTravGotoChkPtDist1 ACCESS p_NtParamTravGotoMagWidthChkPt1;
//	p_diLinkTravGotoChkPtDist2 ACCESS p_NtParamTravGotoMagWidthChkPt2;
//	p_diLinkTravGotoChkPtDist3 ACCESS p_NtParamTravGotoMagWidthChkPt3;
	p_diLinkTravGotoChkPtDist1 ACCESS p_McParamMag1WidthChkDetDist;
	p_diLinkTravGotoChkPtDist2 ACCESS p_McParamMag2WidthChkDetDist;
	p_diLinkTravGotoChkPtDist3 ACCESS p_McParamMag3WidthChkDetDist;

	p_diLaneBOffset ACCESS p_McParamTravLaneBOffset;
	//Pass Data To Internal Use
	p_bEn ACCESS p_DISimServoEn;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
//	p_diAPos ACCESS p_MagRcpCurrRcpMag1TravPos;
//	p_diBPos ACCESS p_MagRcpCurrRcpMag2TravPos;
//	p_diCPos ACCESS p_MagRcpCurrRcpMag3TravPos;
	p_diDPos ACCESS p_McParamTravPosA;
//	p_diEPos ACCESS p_McParamTravPosB;
//	p_diGPos ACCESS p_MagRcpCurrRcpMag4TravPos;
	p_tyTuning ACCESS p_NtParamTravTuning;
	p_diJogVelInUMPS ACCESS p_UIMnlTravJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlTravTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlTravStepSize;
	p_diMoveAcc ACCESS p_NtParamTravAcc;
	p_diMoveDec ACCESS p_NtParamTravDec;
	p_bDir ACCESS p_NtParamTravDir;
	p_usiNode ACCESS p_NtParamTravNode;
	p_sDevice ACCESS p_NtParamTravDevice;
	p_sProgNm ACCESS p_NtParamTravProgNm;
	p_tyParamInHm ACCESS p_NtParamTravParamInHm;
	p_tyParamInConvert ACCESS p_NtParamTravParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamTravMotorType;
	
	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
//	p_bInShutterDis ACCESS p_McParamInShutterDis;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	p_bOutShutterDis ACCESS p_McParamOutShutterDis;
	p_bPullerRetSen ACCESS p_DIPullerRetRS;
	p_bPullerExtSen ACCESS p_DIPullerExtRS;
	p_bPullerRotHmRS ACCESS p_DIPullerRotHmRS; //JOHN

	(* Always Change If Project Change *)
	
END_ACTION
