(** 2019-10-30 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	p_bLinkMagSmallSen ACCESS p_DIMagConvSmallMagSen2;
	p_bLinkMagLargeSen ACCESS p_DIMagConvLargeMagSen2;
	p_bLinkFixClprUnClampSen ACCESS p_DIMag2FixedUnclampRS;
	p_bWidthChkInterrupt ACCESS p_DICurtainSen;
	p_bLinkFixClprClampSen ACCESS ADR(bFixClprClampSen);//p_DIMag2FixedSideDetect;//p_DIMag2FixedClampRS;
	p_bLinkDO ACCESS p_DO;
	p_bLinkMagOpsStepMagMtyExit ACCESS p_OpsMagConvLD2MagMtyExit;
	p_bLinkDIMagEntSen ACCESS p_DIMagConvEntSen2;
	
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bRmtClprUnclampSen ACCESS p_DIMag2RemoteUnclampRS;
	p_tyDISettings ACCESS p_NtParamDISettings;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMag2ConvPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamMagConv2OnDirMod;
	p_diInitTm ACCESS p_McParamMag2ConvRunTmOut;
	p_tMtrOffDlyTm ACCESS p_NtParamMagConv2MtrOffDlyTm;
	p_diTxInTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_sProgNm ACCESS p_NtParamMagConv2ProgNm;
	p_tClprClampTO ACCESS p_NtParamMagConv2ClprClampTO;
	p_tClprUnclampTO ACCESS p_NtParamMagConv2ClprUnclampTO;
//	p_bLeftSen ACCESS p_DIMagConvEntSen2;
	p_bRightSen	ACCESS p_DIMagPresentSen2;

	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
