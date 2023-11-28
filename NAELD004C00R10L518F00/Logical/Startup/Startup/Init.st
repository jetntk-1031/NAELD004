(** 2019-05-04 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To External Use
	p_StartupStat		:= ADR(eStat);
	p_StartupStatus		:= ADR(eStatus);
	p_StartupStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	
	//Output
	p_StartupRun				:= ADR(bRun);
	p_StartupUsrFolderAct		:= ADR(eUsrFolderAct);
	p_StartupHWInfoAct			:= ADR(eHWInfoAct);
	p_StartupLibVerAct			:= ADR(eLibVerAct);
	p_StartupNtParamAct			:= ADR(eNtParamAct);
	p_StartupMcParamAct			:= ADR(eMcParamAct);
	p_StartupProdRcpAct			:= ADR(eProdRcpAct);
	p_StartupMpProdRcpAct		:= ADR(eMpProdRcpAct);
	p_StartupMagRcpAct			:= ADR(eMagRcpAct);
	p_StartupMagRcpAct1			:= ADR(eMagRcpAct1);
	p_StartupUsrMgmtAct			:= ADR(eUsrMgmtAct);
	p_StartupBuffer1Act			:= ADR(eBuffer1Act);
	p_StartupBuffer2Act			:= ADR(eBuffer2Act);
	p_StartupBuffer3Act			:= ADR(eBuffer3Act);
	p_StartupBuffer4Act			:= ADR(eBuffer4Act);
	p_StartupAlarmAct			:= ADR(eAlarmAct);
	p_StartupUIAct				:= ADR(eUIAct);
	p_StartupAWAct				:= ADR(eAWAct);
	p_StartupAWPushPulAct		:= ADR(eAWPushPulAct);
	p_StartupTravAct			:= ADR(eTravAct);
	p_StartupLifterAct			:= ADR(eLifterAct);
	p_StartupHermesAct			:= ADR(eHermesAct);
	p_StartupRmtHermesAct		:= ADR(eRmtHermesAct);
	p_StartupDSHermesAAct		:= ADR(eDSHermesAAct);
	p_StartupDSHermesBAct		:= ADR(eDSHermesBAct);
	p_StartupStep				:= ADR(eStartupStep1);
	p_StartupUSBAct				:= ADR(eUSBAct);
	p_StartupFrmAct				:= ADR(eFrmAct);
	p_StartupServoPPAct			:= ADR(eServoPPAct);
	
	p_StartupNtSettingsLoadDone	:= ADR(bNtSettingsLoadDone);
	p_StartupUISettingsLoadDone := ADR(bUISettingsLoadDone);
	p_StartupStepTxt			:= ADR(sStepTxt);
	p_StartupSvyHermesAct		:= ADR(eSvyHermesAct); //new for Hermes 1.3
	p_StartupWaitDecision    	:= ADR(bWaitDecision); //new for Hermes 1.3
	p_StartupAutoRcpsAct		:= ADR(eAutoRcpAct);
	
	p_StartupGetConfigDone			:= ADR(bGetConfigDone);
	p_StartupMismatchSetConfigDone	:= ADR(bMismatchSetConfigDone);
	(* Always Change If Project Change *)
	
END_PROGRAM