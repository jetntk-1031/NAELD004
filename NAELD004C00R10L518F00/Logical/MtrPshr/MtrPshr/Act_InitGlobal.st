(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkPullConvPullerExtCtrl ACCESS p_PullConvPullerExtCtrl;
	p_bLinkPullConvPullerRetCtrl ACCESS p_PullConvPullerRetCtrl;
	p_bLinkAlarmSig ACCESS p_DIMtrPullerAlmSig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMotorizedPullerPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bDir ACCESS p_NtParamMtrPshrDir;
	p_tExtTO ACCESS p_NtParamMtrPshrExtTO;
	p_tRetTO ACCESS p_NtParamMtrPshrRetTO;
	p_diExtSlowSpd ACCESS p_NtParamMtrPshrExtSlowSpd;
	p_diRetSlowSpd ACCESS p_NtParamMtrPshrRetSlowSpd;
	p_diExtNomSpd ACCESS p_NtParamMtrPshrExtNomSpd;
	p_diExtTorque ACCESS p_NtParamMtrPshrExtTorq;
	p_diStartTorque ACCESS p_NtParamMtrPshrStartTorq;
	p_sProgNm ACCESS p_NtParamMtrPshrProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bExtSen ACCESS p_DIPullerExtRS;
	p_bRetSen ACCESS p_DIPullerRetRS;
	p_bExtSlowSen ACCESS p_DIPullerExtSlwSen;
	p_bRetSlowSen ACCESS p_DIPullerRetSlwSen;
//	p_bAlarmSig ACCESS p_DIMtrPullerAlmSig;
	p_bTorqueSig ACCESS p_DIMtrPullerTorqueSig;
	
	(* Always Change If Project Change *)
	
END_ACTION
