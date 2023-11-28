(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 2;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvLD2AlmData	:= ADR(tyAlmData);
	p_OpsMagConvLD2AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvLD2StepTxt	:= ADR(sStepTxt);
	p_OpsMagConvLD2Paused	:= ADR(bPaused);
	
	p_OpsMagConvLD2BufferAct		:= ADR(eBufferAct);
	p_OpsMagConvLD2MagConv2ClpAct	:= ADR(eMagConv2ClpAct);
	p_OpsMagConvLD2DSSMEMAAct		:= ADR(eDSSMEMAAct);
	p_OpsMagConvLD2AGVMagAct		:= ADR(eAGVMagAct);
	p_OpsMagConvLD2SafetyBarAct			:= ADR(eSafetyBarAct);
	
	p_OpsMagConvLD2InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvLD2MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvLD2NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvLD2RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvLD2StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvLD2StepUSCom			:= ADR(bStepMagUSCom);
	
	p_OpsMagConvLD2StepSelClampCtrl		:= ADR(eSelClampCtrl);
	
	p_OpsMagConvLD2NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvLD2MagMtyExit			:= ADR(bStepMagMtyExit);
	p_OpsMagConvLD2IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvLD2MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvLD2USSOTAct			:= ADR(eUSSOTAct);
	p_OpsMagConvLD2DSSOTAct			:= ADR(eDSSOTAct);
	
	p_OpsMagConvLD2ExitedWait			:= ADR(bMagExitedWait);
	p_OpsMagConvLD2DSCom				:= ADR(bStepDSCom);
	p_OpsMagConvLD2AGVCommRdy			:= ADR(bAGVCommRdy);
	
	p_OpsMagConvLD2UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvLD2MagAllwGo			:= ADR(udiMagAllwGo);
	p_OpsMagConvLD2QueryWO 				:= ADR(bQueryWO);
	p_OpsMagConvLD2ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvLD2WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvLD2ExtDelAutoRcp		:= ADR(bExitDelAutoRcp);
	p_OpsMagConvLD2RlsMagUmask			:= ADR(bRlsMagBtnUnmask);
	p_OpsMagConvLD2ExtMes				:= ADR(bExtMesStdByChk);
	p_OpsMagConvLD2HModChgDone			:= ADR(bHCommModChgDone);
	p_OpsMagConvLD2TrolleyLck			:= ADR(eTrolleyLck);

	(* Always Change If Project Change *)
	
END_PROGRAM