(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bLinkDILifterTimingBeltSen ACCESS p_DILifterTimingBeltSen;
	p_bLinkDILifterSafetyLmtSW1 ACCESS p_DILifterSafetyLmtSW1;
	p_bLinkDILifterSafetyLmtSW2 ACCESS p_DILifterSafetyLmtSW2;
	
	p_diLinkSltToSltDist1 ACCESS p_MagRcpCurrRcpSltToSlt1;
	
	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	
	p_diLinkASlt1Pos ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
	p_diLinkBSlt1Pos ACCESS p_MagRcpCurrRcpMag2Slt1Pos;
	p_diLinkCSlt1Pos ACCESS p_MagRcpCurrRcpMag3Slt1Pos;
	p_diLinkDSlt1Pos ACCESS p_MagRcpCurrRcpMag4Slt1Pos;
	
	p_diLinkASlt1Pos1 ACCESS p_MagRcpCurrRcpMag1Slt1Pos1;
	p_diLinkBSlt1Pos1 ACCESS p_MagRcpCurrRcpMag2Slt1Pos1;
	p_diLinkCSlt1Pos1 ACCESS p_MagRcpCurrRcpMag3Slt1Pos1;
	p_diLinkDSlt1Pos1 ACCESS p_MagRcpCurrRcpMag4Slt1Pos1;
	
	p_bLinkNtParamProjRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	
	p_bLinkOpsTravLifULInDSPos ACCESS p_OpsTravLifULInDSPos;
	
	p_bLinkSafetyRelay ACCESS p_DISafetyRlySig;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	
	//Pass Data To Internal Use
	p_bEn ACCESS p_DISimServoEn;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
//	p_diASlt1Pos ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
//	p_diBSlt1Pos ACCESS p_MagRcpCurrRcpMag2Slt1Pos;
//	p_diCSlt1Pos ACCESS p_MagRcpCurrRcpMag3Slt1Pos;
	p_diAPos ACCESS p_McParamLifterPosA;
	p_diBPos ACCESS p_McParamLifterPosB;
	p_tyTuning ACCESS p_NtParamLifterTuning;
	p_diJogVelInUMPS ACCESS p_UIMnlLifterBtmJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlLifterBtmTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlLifterBtmStepSize;
	p_bUITeachServo ACCESS p_UITeachServo;
	p_diMoveAcc ACCESS p_NtParamLifterAcc;
	p_diMoveDec ACCESS p_NtParamLifterDec;
	p_bDir ACCESS p_NtParamLifterDir;
	p_usiNode ACCESS p_NtParamLifterNode;
	p_sDevice ACCESS p_NtParamLifterDevice;
	p_sProgNm ACCESS p_NtParamLifterProgNm;
	p_tyParamInHm ACCESS p_NtParamLifterParamInHm;
	p_tyParamInConvert ACCESS p_NtParamLifterParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamLifterMotorType;

	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
	//	p_bInShutterDis ACCESS p_McParamInShutterDis;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	p_bOutShutterDis ACCESS p_McParamOutShutterDis;
	p_bPullerExtSen ACCESS p_DIPullerExtRS;
	p_bPullerRetSen ACCESS p_DIPullerRetRS;
	
	p_bDIConvClrSen ACCESS p_DIConvClrSen;
	p_bDIConvLftSen ACCESS p_DIConvLftSen;	
	(* Always Change If Project Change *)
	
END_ACTION
