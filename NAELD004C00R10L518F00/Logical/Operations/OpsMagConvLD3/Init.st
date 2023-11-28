(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 3;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvLD3AlmData	:= ADR(tyAlmData);
	p_OpsMagConvLD3AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvLD3StepTxt				:= ADR(sStepTxt);
	p_OpsMagConvLD3Paused				:= ADR(bPaused);
	
	p_OpsMagConvLD3BufferAct			:= ADR(eBufferAct);
	p_OpsMagConvLD3MagConv2ClpAct		:= ADR(eMagConv2ClpAct);
	p_OpsMagConvLD3DSSMEMAAct			:= ADR(eDSSMEMAAct);
	p_OpsMagConvLD3AGVMagAct			:= ADR(eAGVMagAct);
	p_OpsMagConvLD3SafetyBarAct			:= ADR(eSafetyBarAct);
	
	p_OpsMagConvLD3InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvLD3MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvLD3NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvLD3RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvLD3StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvLD3StepUSCom			:= ADR(bStepMagUSCom);
	
	p_OpsMagConvLD3StepSelClampCtrl		:= ADR(eSelClampCtrl);
	
	p_OpsMagConvLD3NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvLD3MagMtyExit			:= ADR(bStepMagMtyExit);
	p_OpsMagConvLD3IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvLD3MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvLD3USSOTAct			:= ADR(eUSSOTAct);
	p_OpsMagConvLD3DSSOTAct			:= ADR(eDSSOTAct);
	
	p_OpsMagConvLD3ExitedWait			:= ADR(bMagExitedWait);
	p_OpsMagConvLD3DSCom				:= ADR(bStepDSCom);
	p_OpsMagConvLD3AGVCommRdy			:= ADR(bAGVCommRdy);

	p_OpsMagConvLD3UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvLD3MagAllwGo			:= ADR(udiMagAllwGo);
	p_OpsMagConvLD3QueryWO 				:= ADR(bQueryWO);
	p_OpsMagConvLD3ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvLD3WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvLD3ExtDelAutoRcp		:= ADR(bExitDelAutoRcp);
	p_OpsMagConvLD3RlsMagUmask			:= ADR(bRlsMagBtnUnmask);
	p_OpsMagConvLD3ExtMes				:= ADR(bExtMesStdByChk);
	p_OpsMagConvLD3HModChgDone			:= ADR(bHCommModChgDone);

	(* Always Change If Project Change *)
	
END_PROGRAM