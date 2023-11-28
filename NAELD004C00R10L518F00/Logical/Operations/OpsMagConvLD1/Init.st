(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 1;
	bInfoEn		:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvLD1AlmData	:= ADR(tyAlmData);
	p_OpsMagConvLD1AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvLD1StepTxt	:= ADR(sStepTxt);
	p_OpsMagConvLD1Paused	:= ADR(bPaused);
	
	p_OpsMagConvLD1BufferAct			:= ADR(eBufferAct);
	p_OpsMagConvLD1MagConv2ClpAct		:= ADR(eMagConv2ClpAct);
	p_OpsMagConvLD1DSSMEMAAct			:= ADR(eDSSMEMAAct);
	p_OpsMagConvLD1AGVMagAct			:= ADR(eAGVMagAct);
	p_OpsMagConvLD1SafetyBarAct			:= ADR(eSafetyBarAct);
	
	p_OpsMagConvLD1InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvLD1MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvLD1NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvLD1RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvLD1StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvLD1StepUSCom			:= ADR(bStepMagUSCom);
	p_OpsMagConvLD1StepEnt				:= ADR(bStepMagEnt);
	
	p_OpsMagConvLD1StepSelClampCtrl		:= ADR(eSelClampCtrl);
	
	p_OpsMagConvLD1NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvLD1MagMtyExit			:= ADR(bStepMagMtyExit);
	p_OpsMagConvLD1IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvLD1MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvLD1USSOTAct			:= ADR(eUSSOTAct);
	p_OpsMagConvLD1DSSOTAct			:= ADR(eDSSOTAct);
	
	p_OpsMagConvLD1ExitedWait			:= ADR(bMagExitedWait);
	p_OpsMagConvLD1DSCom				:= ADR(bStepDSCom);
	
	p_OpsMagConvLD1AGVCommRdy			:= ADR(bAGVCommRdy);
	
	p_OpsMagConvLD1UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvUL1TLMuteBuzz			:= ADR(bTLMuteBuzzer);
	p_OpsMagConvUL1MagFullInfo			:= ADR(bMagFullInfo);
	
	p_OpsMagConvLD1MagAllwGo			:= ADR(udiMagAllwGo);
	
	p_OpsMagConvLD1QueryWO 				:= ADR(bQueryWO);
	p_OpsMagConvLD1ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvLD1WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvLD1ExtDelAutoRcp		:= ADR(bExitDelAutoRcp);
	p_OpsMagConvLD1RlsMagUmask			:= ADR(bRlsMagBtnUnmask);
	p_OpsMagConvLD1ExtMes				:= ADR(bExtMesStdByChk);
	p_OpsMagConvLD1HModChgDone			:= ADR(bHCommModChgDone);
	p_OpsMagConvLD1TrolleyLck			:= ADR(eTrolleyLck);
	

	(* Always Change If Project Change *)
	
END_PROGRAM