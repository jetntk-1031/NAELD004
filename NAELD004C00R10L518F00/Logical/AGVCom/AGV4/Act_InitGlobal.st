(** 2021-05-31 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_tyLinkBufferStat ACCESS p_Buffer4BffrStat;
	p_bLinkAGVOnline ACCESS p_AGVOnline;
	p_tyLinkAGVtoDTMag ACCESS p_AGVTagAGVToDTMag;
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_OpsMagConvLD4AGVMagAct;
	p_udiRstErr	ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjAGVPrep;
	p_sProgNm ACCESS p_NtParamAGVMag4ProgNm;
	p_diTxInTimeOut ACCESS p_McParamMag4ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag4ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_bBufferMagPresent ACCESS p_DIMagPresentSen4;
	p_bMagConvLftSen ACCESS p_DIMagConvEntSen4;
	p_bMagConvRgtSen ACCESS p_DIMagPresentSen4;
	p_bMagConvMtrIn ACCESS p_MagConv2Clp4MtrSigOnOrLToR;
	p_bMagConvMtrOut ACCESS p_MagConv2Clp4MtrDirOrRToL;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bAGVInPosSen1	ACCESS p_DIMag4AGVInPosSen1;
	p_bAGVInPosSen2	ACCESS p_DIMag4AGVInPosSen2;
	p_bNtParamAGVInPosSenPrep ACCESS p_NtParamProjAGVInPosSenPrep;
	p_bSOTRcvOk ACCESS p_DISOT4Receive;
	p_bSOTErr ACCESS p_DISOT4Error;
	p_bSOTRdy ACCESS p_DISOT4Ready;
	p_bSOTAvailable ACCESS p_DISOT4Available;
	p_bEn ACCESS p_McParamAGVComEn;
	(* Always Change If Project Change *)
	
END_ACTION
