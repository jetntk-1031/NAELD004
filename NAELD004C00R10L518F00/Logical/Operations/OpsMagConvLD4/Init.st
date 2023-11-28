(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 4;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvLD4AlmData	:= ADR(tyAlmData);
	p_OpsMagConvLD4AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvLD4StepTxt				:= ADR(sStepTxt);
	p_OpsMagConvLD4Paused				:= ADR(bPaused);
	
	p_OpsMagConvLD4BufferAct			:= ADR(eBufferAct);
	p_OpsMagConvLD4MagConv2ClpAct		:= ADR(eMagConv2ClpAct);
	p_OpsMagConvLD4DSSMEMAAct			:= ADR(eDSSMEMAAct);
	p_OpsMagConvLD4AGVMagAct			:= ADR(eAGVMagAct);
	p_OpsMagConvLD4SafetyBarAct			:= ADR(eSafetyBarAct);
	
	p_OpsMagConvLD4InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvLD4MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvLD4NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvLD4RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvLD4StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvLD4StepUSCom			:= ADR(bStepMagUSCom);
	
	p_OpsMagConvLD4StepSelClampCtrl		:= ADR(eSelClampCtrl);
	
	p_OpsMagConvLD4NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvLD4MagMtyExit			:= ADR(bStepMagMtyExit);
	p_OpsMagConvLD4IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvLD4MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvLD4USSOTAct			:= ADR(eUSSOTAct);
	p_OpsMagConvLD4DSSOTAct			:= ADR(eDSSOTAct);
	
	p_OpsMagConvLD4ExitedWait			:= ADR(bMagExitedWait);
	p_OpsMagConvLD4DSCom				:= ADR(bStepDSCom);
	(* Always Change If Project Change *)
	
END_PROGRAM