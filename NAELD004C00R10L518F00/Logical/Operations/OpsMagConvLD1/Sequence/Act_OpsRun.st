(** 2019-04-16 **)
ACTION Act_OpsRun:
	Act_LogStep;
	
	IF p_bOpsTravLifErrCmdUnclmp THEN //from travLif width chk error
		eMagConv2ClpAct :=	MagConv2ClpActStopClpr;
						
		IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
							
			eMagConv2ClpAct	:= MagConv2ClpActIdle;
			bPneuUnclmpDone := TRUE; //to travlif 
		END_IF
	END_IF
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF
			MagConvLDStepSelClampCtrl:
				IF p_bMagOrientChkSenPrep THEN
					//checking orientation of mag
					IF p_bMagHeightDetEn AND p_bMagHeightDetPrep THEN
						
						IF p_bMag1OrientationChkSen1 AND p_bMagHeightDetSen1 THEN // Magazine Type Check with height Detection Sensor
							eOpsStep := eGotoOpsStep;
						ELSE
							eMagConv2ClpAct :=	MagConv2ClpActStopClpr;
							
							IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
								
								eMagConv2ClpAct	:= MagConv2ClpActIdle;
								eStatus		:= Error;
								udiStatus	:= 10008;	//'Wrong Magazine Orientation Placed Or Wrong Magazine Loaded'
							END_IF
						END_IF	
	
					ELSE
					
					IF p_bMag1OrientationChkSen1 AND NOT p_bMagHeightDetSen1 THEN //Without Check Height Detection Sensor
						eOpsStep := eGotoOpsStep;
					ELSE
						eMagConv2ClpAct :=	MagConv2ClpActStopClpr;
						eSelClampCtrl := PneuActExt; //unclmp
						IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
							
							eMagConv2ClpAct	:= MagConv2ClpActIdle;
							eStatus		:= Error;
							udiStatus	:= 10008;	//'Wrong Magazine Orientation Placed Or Wrong Magazine Loaded'
						END_IF
					END_IF	
					END_IF
				ELSIF p_bLinkTrolleyLckPrep THEN
					IF p_bSlotLckSenMag THEN
						eOpsStep := eGotoOpsStep;
						fbSltLckSenFailTmr(IN:= FALSE);
					ELSIF fbSltLckSenFailTmr.Q THEN
						eMagConv2ClpAct :=	MagConv2ClpActStopClpr;
							
						IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
							fbSltLckSenFailTmr(IN:= FALSE);

							eMagConv2ClpAct	:= MagConv2ClpActIdle;
							eStatus		:= Error;
							udiStatus	:= 10010;	//'Magazine Transport Lock Slot Is Locked.'
						END_IF
					ELSE
						fbSltLckSenFailTmr(IN:= TRUE);
					END_IF	
				ELSE
					eOpsStep	:= eGotoOpsStep;
				END_IF
				
			MagConvLDStepMagExitClampCtrl: //For Siemen
				IF p_eNtParamCustomerReq = Siemens AND (eOpsStep <> MagConvLDStepMagExtMESStdByChk ) 
					AND (p_tyLocalBufferStat.bBffrMty OR p_bDISOTAGVReady) 
					AND NOT(iMagMESAcptCond < 0) AND p_bMcParamMesRFIDEn THEN 
					eOpsStep := MagConvLDStepMagExtMESStdByChk;
					eGotoOpsStep := MagConvLDStepMagExtMESStdByChk; //exit mes
					//ePrevStepBeforeMESStdBy := MagConvLDStepMagExitClampCtrl;
				ELSE
					bExitDelAutoRcp := TRUE; 									//Clear the rcp and calc pitch
					eOpsStep	:= eGotoOpsStep;
				END_IF	
							
			MagConvLDStepMagExitMnl:
				IF p_bRlsMag AND  p_eNtParamCustomerReq = Siemens AND eOpsStep <> MagConvLDStepMagExtMESStdByChk 
					AND eOpsStep <> MagConvLDStepMagEntMESStdByChk AND p_bMcParamMesRFIDEn THEN
					eGotoOpsStep := MagConvLDStepMagExtMESStdByChk; //exit mes
				ELSE
					IF eOpsStep = MagConvLDStepMagExtMESStdByChk THEN
						ePrevStepBeforeMESStdBy := MagConvLDStepMagExitMnl;
					END_IF
					IF p_eNtParamCustomerReq = We_Fabricate  AND p_bMcParamMesRFIDEn THEN
						bExitDelAutoRcp := TRUE;
					END_IF
					eOpsStep	:= eGotoOpsStep;
				END_IF
				
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				MagSetupULStepInitPneu:
					sStepTxt	:= 'Initializing Pneumatic';
					
					p_usiMagConv := 1;
					CASE p_usiMagConv OF
						1:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat1);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen1);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent1);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm1);
						2:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat2);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen2);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent2);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm2);
						3:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat3);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen3);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent3);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm3);
						4:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat4);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen4);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent4);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm4);
					END_CASE
					IF p_bProjLifTravMnlLoad = FALSE THEN 
						eSafetyBarAct	:= PneuActExt;
					ELSE
						eGotoOpsStep := MagConvLDStepMagUSComm;
					END_IF
					IF (p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt) THEN
						eSafetyBarAct	:= PneuActIdle;
						eGotoOpsStep	:= MagConvLDStepInitMag;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvLDStepInitMag:
					sStepTxt	:= 'Initializing Magazine';
					IF p_bProjLifTravMnlLoad = TRUE THEN
						eGotoOpsStep := MagConvLDStepMagUSComm;
					ELSIF bMagExitedWait THEN
						eGotoOpsStep	:= MagConvLDStepMagExitedWait;
						//eGotoOpsStep	:= MagConvLDStepInitMagEnt;
					ELSIF (ePrevStepBeforeMESStdBy = MagConvLDStepMagExitMnl AND p_bLinkDIMagPresentSen1) OR (p_bHCommModChg AND p_bLinkDIMagPresentSen1) THEN
						eGotoOpsStep	:= MagConvLDStepMagExitMnl;
					ELSIF p_bNtParamAutoRcpPrep AND p_bHermesSvyPrep AND p_bMcParamHermesSvyEn THEN
						bHCommModChgDone := TRUE; //to UI
						eGotoOpsStep	:= MagConvLDStepInitMagConv;
					ELSE
						bHCommModChgDone := TRUE; //to UI
						eGotoOpsStep	:= MagConvLDStepInitSetMagFull;
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
				
					
				MagConvLDStepInitMagEnt:
					sStepTxt	:= 'Initializing Magazine Conveyor';
					eMagConv2ClpAct	:= MagConv2ClpActInit;
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActInit) THEN
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						IF p_bMagConv2ClpHvMag = FALSE THEN
							eGotoOpsStep	:= MagConvLDStepMagUSComm;
						ELSE
							eGotoOpsStep	:= MagConvLDStepInitMagFixClp;
						END_IF
					END_IF
				
				MagConvLDStepInitMagFixClp:
					sStepTxt	:= 'Initializing Fixed Clamp';
					eMagConv2ClpAct	:= MagConv2ClpActFixClprClamp;
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActFixClprClamp) THEN
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						IF bMagAutoEx THEN
							eDSSOTAct	:= SOTActRun;
						ELSE
							eDSSOTAct	:= SOTActIdle;
						END_IF
						
						IF p_bDIMagConvCAB717Sen THEN
							bMagSizeLarge := TRUE;
						ELSE
							bMagSizeLarge := FALSE;
						END_IF
						eGotoOpsStep	:= MagConvLDStepSelClampCtrl;
					END_IF
					
				MagConvLDStepInitSetMagFull	:
					sStepTxt	:= 'Set Magazine Full';
					IF bSetMagFull AND p_tyBufferStat1.diTtlBrdCap = 1 THEN
						eBufferAct := BufferActSetFull;
						IF p_eBufferStat = BufferActSetFull AND p_eBufferStatus = Done THEN
							bSetMagFull := FALSE;
							eBufferAct := BufferActIdle;
							eGotoOpsStep	:= MagConvLDStepInitMagConv;
						END_IF
					ELSIF bSetMagFull AND p_tyBufferStat1.diTtlBrdCap <> 1 THEN
						bSetMagFull := FALSE;
						eBufferAct := BufferActIdle;
						eGotoOpsStep	:= MagConvLDStepInitMagConv;
					ELSE
						bSetMagFull := FALSE;
						eBufferAct := BufferActIdle;
						eGotoOpsStep	:= MagConvLDStepInitMagConv;
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvLDStepInitMagConv:
					sStepTxt	:= 'Initializing Magazine Conveyor';
					
					eMagConv2ClpAct	:= MagConv2ClpActInitStopClp;
					eSelClampCtrl := PneuActExt;
							
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActInitStopClp)
						AND (p_eSelClampCtrlStat = PneuActExt AND p_eSelClampCtrlStatus = Done)
						THEN
						eSelClampCtrl	:= PneuActIdle;
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						
						IF p_bMagConv2ClpHvMag = FALSE THEN
							eGotoOpsStep	:= MagConvLDStepMagUSComm;
							bExitDelAutoRcp := TRUE; 
							usiAccWO := 0;
							ePrevStepBeforeMESStdBy := MagConvLDStepNA; //finish exit from extMes 
						ELSE
						//	eGotoOpsStep		:= MagConvLDStepBffrStatChk;
							eGotoOpsStep		:= MagConvLDStepSelClampCtrl;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
				MagConvLDStepSafetyBarExtCtrl:
					eSafetyBarAct	:= PneuActExt;
						
					IF(p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt)
						THEN
						eSafetyBarAct	:= PneuActIdle;	
						eGotoOpsStep	:= MagConvLDStepMagUSComm;
					END_IF
					
				MagConvLDStepMagUSComm:
					sStepTxt	:= 'Communicating AIV And Ready Transport In Magazine';
					
					eAGVMagAct	:= AGVMagActEnter;
					IF bMagAutoEx THEN
						eUSSOTAct	:= SOTActRun;
					ELSE
						eUSSOTAct	:= SOTActIdle;
					END_IF	
					eDSSOTAct	:= SOTActIdle;
					bMagSizeLarge := FALSE;
					bMagExitedWait	:= FALSE;
					
					IF p_bSafetyBarExtended = FALSE THEN
						eGotoOpsStep	:= MagConvLDStepSafetyBarExtCtrl;
					ELSIF p_bAGVMagMcRunRdy = TRUE OR p_bUSSOTTransporting= TRUE THEN
						eGotoOpsStep	:= MagConvLDStepMagEnt;
						
					ELSIF p_bNewMag = TRUE OR bNewMagAutoDetected = TRUE THEN
						eAGVMagAct		:= AGVMagActIdle;
						eGotoOpsStep	:= MagConvLDStepMagEntMnl;
						
					ELSE
						bPaused	:= p_bStop;
						
						IF bPaused = TRUE THEN
							eAGVMagAct	:= AGVMagActIdle;
							eUSSOTAct	:= SOTActIdle;
						END_IF
						
					END_IF
					
				MagConvLDStepMagEnt:
	
					IF p_bUSSOTConvStart THEN
						sStepTxt	:= 'Conveyor Entering Magazine To End';
						eMagConv2ClpAct	:= MagConv2ClpActEntStopClp;
					
					ELSIF bNewMagAutoDetected = TRUE THEN
						eAGVMagAct			:= AGVMagActIdle;
						eGotoOpsStep		:= MagConvLDStepMagEntMnl;
						
					ELSIF p_bUSSOTConvStop THEN
						sStepTxt	:= 'Conveyor Stopping';
						eMagConv2ClpAct	:= MagConv2ClpActStopClpr;
						IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActEntStopClp) THEN
							eMagConv2ClpAct		:= MagConv2ClpActIdle;
						
						END_IF		
					END_IF
						
				
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActEntStopClp) THEN
						eAGVMagAct			:= AGVMagActIdle;
						eMagConv2ClpAct		:= MagConv2ClpActIdle;
						eUSSOTAct			:= SOTActIdle;
						eGotoOpsStep		:= MagConvLDStepSelClampCtrl;
						bPaused	:= p_bStop OR p_bStep;
					
					ELSE
				
					
						
					END_IF
					
				MagConvLDStepMagEntMnl:
					sStepTxt	:= 'Magazine Conveyor Entering Magazine Manually';
					IF p_bProjLifTravMnlLoad = FALSE THEN 
						eMagConv2ClpAct	:= MagConv2ClpActEntStopClp;
					ELSE
						eGotoOpsStep		:= MagConvLDStepSelClampCtrl;
					END_IF
					IF p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActEntStopClp THEN
						
						eMagConv2ClpAct		:= MagConv2ClpActIdle;
						eGotoOpsStep		:= MagConvLDStepSelClampCtrl;
						eUSSOTAct			:= SOTActIdle;
						eAGVMagAct			:= AGVMagActIdle;
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
				MagConvLDStepSelClampCtrl:
					sStepTxt	:= 'Magazine Selection Control';
					bNewMagVerifyStarted := TRUE;
					bExitDelAutoRcp := FALSE;

					CASE p_bLinkMagRcpCurrRcpMagModel OF
						0: //CAB706.2
							IF p_bDIMagConvCAB717Sen = FALSE THEN
								eSelClampCtrl := PneuActRet;
							END_IF
							eGotoOpsStep	:= MagConvLDStepVerifyMag;
						
						1: //CAB716.2
							IF p_bDIMagConvCAB717Sen = FALSE THEN
								eSelClampCtrl := PneuActRet;
							END_IF
							eGotoOpsStep	:= MagConvLDStepVerifyMag;
						
						2: //CAB717.2
							eSelClampCtrl 	:= PneuActExt;	
							eGotoOpsStep	:= MagConvLDStepVerifyMag;
							
					END_CASE
					
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvLDStepVerifyMag:
					sStepTxt	:= 'Magazine Model Verification';
					
					bNewMagVerifyStarted := TRUE;
					fbWrongMagTm(IN:= bNewMagVerified = FALSE);
					IF fbWrongMagTm.Q AND NOT bMagExitedWait  THEN
						fbWrongMagTm(IN:= FALSE);
						eGotoOpsStep		:= MagConvLDStepMagExitMnl;
					ELSIF bMagExitedWait OR ePrevStepBeforeMESStdBy = MagConvLDStepMagExitMnl THEN //added extMes true
						eGotoOpsStep		:= MagConvLDStepMagExitMnl;
					ELSIF bNewMagVerified AND NOT bMagExitedWait THEN
						fbSelClmpTm(IN:= TRUE);
						IF fbSelClmpTm.Q THEN
							fbSelClmpTm(IN:= FALSE);
							eSelClampCtrl	:= PneuActIdle;
							IF (p_eNtParamCustomerReq = Siemens AND p_bMcParamHermesSvyEn AND p_bHermesSvyPrep) OR
								(p_eNtParamCustomerReq = We_Fabricate AND p_bMcParamMesRFIDEn) THEN
								IF  (iMagMESAcptCond > 0 OR usiAccWO > 0 OR bWriteRFID) AND iMagMESAcptCond <> 255 THEN
									p_bAutoRcpbMag1RcpLoaded := FALSE; //bi-dir
									eGotoOpsStep		:= MagConvLDStepBffrStatChk;
								ELSIF iMagMESAcptCond = 0 OR usiAccWO = 0 THEN
									bQueryWO := TRUE;
									eGotoOpsStep		:= MagConvLDStepMagEntMESStdByChk;
								END_IF
							ELSE
								eGotoOpsStep		:= MagConvLDStepBffrStatChk;
							END_IF
						END_IF
							
					END_IF
					
					IF p_bDIMagConvCAB717Sen THEN
						bMagSizeLarge := TRUE;
					ELSE
						bMagSizeLarge := FALSE;
					END_IF
					
//					IF bNewMagVerified AND p_eSelClampCtrlStatus = Done THEN
//						
//						eSelClampCtrl	:= PneuActIdle;
//						eGotoOpsStep	:= MagConvLDStepBffrStatChk;		
//					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvLDStepMagEntMESStdByChk:
					sStepTxt	:= 'Read RFID and Query Work Order';
					bReadRFID := TRUE;
					fbReadRFIDTO(IN:= bReadRFID);
					iMagMESAcptCond := INT_TO_USINT(p_tyResponseFromMES.iAcceptCondition);
					IF (p_tyResponseFromMES.iAcceptCondition > 0 AND p_eNtParamCustomerReq = We_Fabricate) OR p_bAutoRcpbMag1RcpLoaded THEN //Accept or rcv sendWO
						usiAccWO := 1;
						bQueryWO := FALSE;
						p_bAutoRcpbMag1RcpLoaded := FALSE; //bi-dir
						eGotoOpsStep := MagConvLDStepAutoRcpSetMagFull;
					//	eGotoOpsStep := MagConvLDStepBffrStatChk;
					ELSIF p_tyResponseFromMES.iAcceptCondition < 0  THEN						//No Accept (-1)
						eAGVMagAct	:= AGVMagActExit;
						IF p_bRlsMag THEN
							p_bRlsMag := FALSE; //bi-dir
							bQueryWO := FALSE;
							eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						ELSIF p_bAGVMagMcRunRdy = TRUE THEN
							bQueryWO := FALSE;
							eGotoOpsStep	:= MagConvLDStepMagMtyExit;
						END_IF
					ELSIF fbReadRFIDTO.Q AND p_bMcParamMesRFIDEn THEN
						sStepTxt	:= 'Wait For Read RFID';
						IF p_bRlsMag THEN
							p_bRlsMag := FALSE; //bi-dir
							bQueryWO := FALSE;
							eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						END_IF	
					END_IF
					IF eGotoOpsStep <> MagConvLDStepMagEntMESStdByChk THEN
						bReadRFID := FALSE;
						fbReadRFIDTO(IN:= bReadRFID);//false
					END_IF 
					IF p_eNtParamCustomerReq = We_Fabricate THEN
						sStepTxt	:= 'Wait For MES feedback';
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvLDStepAutoRcpSetMagFull:
					sStepTxt	:= 'Set Magazine Full';
					eBufferAct := BufferActSetFull;
					IF p_eBufferStat = BufferActSetFull AND p_eBufferStatus = Done THEN
						eBufferAct := BufferActIdle;
						IF p_ausiSvyMagAccOrder[1] = 10 OR p_ausiLCSLFMagAccOrder[1] = 10 THEN //working number 
							eGotoOpsStep := MagConvLDStepBffrStatChk;
						END_IF
					END_IF
					bPaused	:= p_bStop OR p_bStep;

				MagConvLDStepBffrStatChk:
					sStepTxt	:= 'Checking Buffer Status';
					
					IF p_eBufferStatus = Idle THEN
						
						IF (p_tyLocalBufferStat.bBffrMty = TRUE OR p_bUSAllow = FALSE) THEN
							//eGotoOpsStep	:= MagConvLDStepMagMtyDSComm;
							eGotoOpsStep	:= MagConvLDStepMagExitClampCtrl;
						ELSE
							eGotoOpsStep	:= MagConvLDStepSafetyBarRetCtrl;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
				
				MagConvLDStepSafetyBarRetCtrl:	
					eSafetyBarAct	:= PneuActRet;
					
					IF (p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActRet) THEN
						eSafetyBarAct	:= PneuActIdle;
						eGotoOpsStep	:= MagConvLDStepPreNxtUnlBffr;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
					
				MagConvLDStepPreNxtUnlBffr:
					sStepTxt	:= 'Computing Next Unload Buffer';
					
					eBufferAct	:= BufferActNxtUnload;
					
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActNxtUnload THEN
						eBufferAct		:= BufferActIdle;
						eGotoOpsStep	:= MagConvLDStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
					
				MagConvLDStepMagCmp:
					sStepTxt	:= 'Comparing Magazine';
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					a_tyMagAllwBffrStat[4]	:= p_tyBufferStat4;
					
					a_bMagAllwMagClamped[1]	:= p_bMagClampRS1;
					a_bMagAllwMagClamped[2]	:= p_bMagClampRS2;
					a_bMagAllwMagClamped[3]	:= p_bMagClampRS3;
					a_bMagAllwMagClamped[4]	:= p_bMagClampRS4;
					
					a_bMagAllwMagPresent[1]	:= p_bBufferMagPresent1 AND NOT bMagExitedWait;
					a_bMagAllwMagPresent[2]	:= p_bBufferMagPresent2 AND NOT p_bLD2ExitedWait;
					a_bMagAllwMagPresent[3]	:= p_bBufferMagPresent3 AND NOT p_bLD3ExitedWait;
					a_bMagAllwMagPresent[4]	:= p_bBufferMagPresent4 AND NOT p_bLD4ExitedWait;
					
					a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
					a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
					a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					a_udiMagAllwMagPresentTm[4]	:= DT_TO_UDINT(p_dtBufferMagPresentTm4);
					//Sorting Priority
					memset(ADR(a_udiMagAllwPriority), 0, SIZEOF(a_udiMagAllwPriority));
					
					IF (p_bMcParamHermesSvyEn AND p_bNtParamAutoRcpPrep) OR (p_bMcParamMesRFIDEn AND p_eNtParamCustomerReq = We_Fabricate) THEN
						FOR udi :=1 TO 3 DO 
							IF p_ausiSvyMagAccOrder[udi] = 10 OR p_ausiLCSLFMagAccOrder[udi] = 10 THEN
								a_udiMagAllwPriority[udi] :=  1;
							ELSE
								a_udiMagAllwPriority[udi] := 3; 
							END_IF
						END_FOR
					
					ELSE // standard
						FOR udi := 1 TO 4 DO
							udiCount	:= 4;
							udiCmpTm	:= a_udiMagAllwMagPresentTm[udi];
							
							FOR udi1 := 1 TO 4 DO
								IF a_udiMagAllwMagPresentTm[udi1] > udiCmpTm THEN
									udiCount	:= udiCount - 1;
								END_IF
							END_FOR
							
							a_udiMagAllwPriority[udi]	:= udiCount;
						END_FOR
						FOR udi := 4 TO 1 BY -1 DO
							FOR udi1 := 4 TO 1 BY -1 DO
								IF (udi <> udi1) AND (a_udiMagAllwPriority[udi] = a_udiMagAllwPriority[udi1]) THEN
									a_udiMagAllwPriority[udi1]	:= a_udiMagAllwPriority[udi1] - 1;
								END_IF
							END_FOR
						END_FOR
					END_IF
					
						
					//Checking Buffer Status
					memset(ADR(a_udiMagAllwSum), 0, SIZEOF(a_udiMagAllwSum));
					
					FOR udi := 1 TO 4 DO
						//Priority
						a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF pa_bMagDis[udi] = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Clamped
						IF a_bMagAllwMagClamped[udi] = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Present
						IF a_bMagAllwMagPresent[udi] = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Full
						IF a_tyMagAllwBffrStat[udi].bBffrFull = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 2500;
						END_IF
						//Magazine Available
						IF a_tyMagAllwBffrStat[udi].bBffrFull = FALSE AND a_tyMagAllwBffrStat[udi].bBffrMty = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 3000;
						END_IF
					END_FOR
					
					udiMagAllwGo	:= 99;
					
					FOR udi := 1 TO 4 DO
						//Enable + Magazine Clamped + Magazine Present + Magazine Available
						IF a_udiMagAllwSum[udi] >= 6000 THEN
							
							IF udiMagAllwGo <> 99 THEN
								//Priority
								IF a_udiMagAllwSum[udi] < a_udiMagAllwSum[udiMagAllwGo] THEN
									udiMagAllwGo	:= udi;
								END_IF
							ELSE
								udiMagAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiMagAllwGo = 99 THEN
						
						FOR udi := 1 TO 4 DO
							//Enable + Magazine Clamped + Magazine Present + Magazine Full
							IF a_udiMagAllwSum[udi] >= 5500 THEN
								
								IF udiMagAllwGo <> 99 THEN
									//Priority
									IF a_udiMagAllwSum[udi] < a_udiMagAllwSum[udiMagAllwGo] THEN
										udiMagAllwGo	:= udi;
									END_IF
								ELSE
									udiMagAllwGo	:= udi;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					IF p_bRlsMag = TRUE THEN
						eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						
					ELSIF p_bDISOTAGVReady AND p_eNtParamCustomerReq = Siemens THEN
						eGotoOpsStep	:= MagConvLDStepMagExitClampCtrl;
						
					ELSIF (p_tyLocalBufferStat.bBffrMty = TRUE OR p_bUSAllow = FALSE) AND p_bInShutterExtended THEN
					//	eGotoOpsStep    := MagConvLDStepMagMtyDSComm;
						eGotoOpsStep    := MagConvLDStepMagExitClampCtrl;
					ELSE
						
						IF udiMagAllwGo <> 99 THEN
							
							IF udiMagAllwGo = p_usiMagConv (*AND p_eOpsTravLifLDPosGo = TravLifLDPosUS1 *)THEN
								bMagBffrAvl		:= TRUE;
								
							
								eGotoOpsStep	:= MagConvLDStepNxtUnloadBffr;
							
								bPaused	:= p_bStop OR p_bStep;
							ELSE
								bPaused	:= p_bStop;
							END_IF
							
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
					END_IF
					
				MagConvLDStepNxtUnloadBffr:
					sStepTxt	:= 'Computing Next Unload Buffer';
					
					eBufferAct	:= BufferActNxtUnload;
					
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActNxtUnload THEN
						eBufferAct		:= BufferActIdle;
						eGotoOpsStep	:= MagConvLDStepBffrDSComm;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
				
				MagConvLDStepBffrDSComm:
					sStepTxt	:= 'Communicating Buffer Downstream';
					
//					IF (p_tyBufferStat2.bBffrFull OR p_bBufferMagPresent2 = FALSE) 
//						AND (p_tyBufferStat3.bBffrFull OR p_bBufferMagPresent3 = FALSE)
//						THEN
//						eDSSMEMAAct	:= SMEMAActRun;
//					END_IF
					
					eDSSMEMAAct	:= SMEMAActRun;
					
					IF p_bDSSMEMAConvStart = TRUE THEN
						eGotoOpsStep	:= MagConvLDStepBffrExitBrd;
					
					ELSIF bOpsTravLifULUpdatePullSlot AND p_eOpsTravLifLDPosGo = TravLifLDPosUS1 THEN
						bMagBffrAvl		:= FALSE;
						IF p_tyLocalBufferStat.bBffrMty = FALSE AND p_bUIP800Press1 = FALSE THEN	
							eGotoOpsStep	:= MagConvLDStepUnloadBffr;
						ELSE
							eGotoOpsStep	:= MagConvLDStepBffrStatChk;
							bMagBffrAvl		:= FALSE;
						END_IF
						
					ELSIF p_bRlsMag = TRUE THEN
						bMagBffrAvl		:= FALSE;
						eDSSMEMAAct		:= SMEMAActIdle;
						eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						
					ELSIF (p_tyLocalBufferStat.bBffrMty = TRUE OR p_bUSAllow = FALSE) AND p_bInShutterExtended THEN
						bMagBffrAvl		:= FALSE;
						eDSSMEMAAct		:= SMEMAActIdle;
					//	eGotoOpsStep    := MagConvLDStepMagMtyDSComm;
						eGotoOpsStep    := MagConvLDStepMagExitClampCtrl;
					ELSE
						
						IF pa_bMagDis[usiMagConv] = TRUE THEN		//Checking Magazine Enable
							bMagBffrAvl		:= FALSE;
						//	eGotoOpsStep	:= MagConvLDStepMagCmp;
							eGotoOpsStep	:= MagConvLDStepPreNxtUnlBffr;
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
						IF bPaused = TRUE OR pa_bMagDis[usiMagConv] = TRUE THEN
							eDSSMEMAAct	:= SMEMAActIdle;
						END_IF
						
					END_IF
					
				MagConvLDStepBffrExitBrd:
					IF p_bDSSMEMAConvStart = TRUE THEN
						sStepTxt	:= 'Transferring Board Out From Magazine';
						IF p_bRlsMag = TRUE THEN
							bMagBffrAvl		:= FALSE;
							eDSSMEMAAct		:= SMEMAActIdle;
							eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						END_IF
					END_IF
					
					IF p_eDSSMEMAStatus = Done AND p_eDSSMEMAStat = SMEMAActRun THEN
						eDSSMEMAAct		:= SMEMAActIdle;
						IF p_tyLocalBufferStat.bBffrMty = FALSE THEN	
							eGotoOpsStep	:= MagConvLDStepUnloadBffr;
						ELSE
							eGotoOpsStep	:= MagConvLDStepBffrStatChk;
							bMagBffrAvl		:= FALSE;
						END_IF
					END_IF
					
				MagConvLDStepUnloadBffr:
					sStepTxt	:= 'Unloading Buffer';
				
						eBufferAct	:= BufferActUnload;
						bOpsTravLifULUpdatePullSlot := FALSE;
						bMagBffrAvl		:= FALSE;
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActUnload THEN
						eBufferAct		:= BufferActIdle;
						bMagBffrAvl		:= FALSE;
				
							eGotoOpsStep	:= MagConvLDStepBffrStatChk;
					
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvLDStepMagExtMESStdByChk:
					sStepTxt	:= 'Mag StdBy for MES response Before Exiting';
					bWriteRFID := TRUE;
					fbWriteRFIDTO(IN:= bWriteRFID ,PT:= DINT_TO_TIME(p_diRFIDTO));
					bExitDelAutoRcp := TRUE; 								//Clear the rcp and calc pitch
					IF p_tyResponseFromMES.bRFIDWriteComplete  THEN 		//Accept
//						IF ePrevStepBeforeMESStdBy = MagConvULStepMagExitMnl THEN
							eGotoOpsStep := MagConvLDStepMagExitMnl;//MagConvLDStepMagExitClampCtrl;
//						ELSIF ePrevStepBeforeMESStdBy = MagConvULStepMagExitClampCtrl THEN
//							eGotoOpsStep := MagConvLDStepMagExitClampCtrl;
//						END_IF
					ELSIF fbWriteRFIDTO.Q  THEN
						sStepTxt	:= 'MES response to Write RFID Timeout, Press Rls Mag to Manual Exit ';
						IF p_bEjectMag THEN
							eGotoOpsStep := MagConvLDStepMagExitMnl;
						END_IF
					END_IF
					IF eGotoOpsStep <> MagConvLDStepMagExtMESStdByChk THEN
						bWriteRFID := FALSE;
						fbWriteRFIDTO(IN:= bWriteRFID);
						
					END_IF 
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvLDStepMagExitClampCtrl:
					sStepTxt	:= 'Extending Selection Clamp';
					eSelClampCtrl := PneuActExt;
					eSafetyBarAct	:= PneuActExt;
						
					IF (p_eSelClampCtrlStat = PneuActExt AND p_eSelClampCtrlStatus = Done)
						AND(p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt)
						THEN
							eSelClampCtrl	:= PneuActIdle;
							eSafetyBarAct	:= PneuActIdle;
							eGotoOpsStep    := MagConvLDStepMagMtyDSComm;
							bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvLDStepMagMtyDSComm:
					sStepTxt	:= 'Communicating AGV Machine And Ready Exit';
				
					eAGVMagAct	:= AGVMagActExit;
					IF bMagAutoEx THEN
						eDSSOTAct	:= SOTActRun;
					ELSE
						eDSSOTAct	:= SOTActIdle;
					END_IF
					
					IF p_bAGVMagMcRunRdy = TRUE THEN
						eGotoOpsStep	:= MagConvLDStepMagMtyExit;
						
					ELSIF p_bRlsMag = TRUE OR ((p_tyLocalBufferStat.bBffrMty OR p_bUSAllow = FALSE) AND p_bInShutterExtended) THEN
						eAGVMagAct		:= AGVMagActIdle;
						eGotoOpsStep	:= MagConvLDStepMagExitMnl;
						
					ELSE
						bPaused	:= p_bStop;
						
						IF bPaused = TRUE THEN
							eAGVMagAct	:= AGVMagActIdle;
							eDSSOTAct	:= SOTActIdle;
						END_IF
						
					END_IF
					
				MagConvLDStepMagMtyExit:
					sStepTxt	:= 'Magazine Conveyor Exiting Magazine';
					
					eMagConv2ClpAct	:= MagConv2ClpActExitClpr;
					eSelClampCtrl	:= PneuActExt;
					
					IF ((p_eAGVMagStatus = Done AND p_eAGVMagStat = AGVMagActExit)
						OR (p_eDSSOTStatus = Done AND p_eDSSOTStat = SOTActRun))
						AND (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActExitClpr) 
						AND (p_eSelClampCtrlStatus = Done AND p_eSelClampCtrlStat = PneuActExt) 
						THEN
						
						eDSSOTAct	:= SOTActIdle;
						eAGVMagAct		:= AGVMagActIdle;
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						eSelClampCtrl	:= PneuActIdle;
						eGotoOpsStep	:= MagConvLDStepMagExitedAGVWait;
						bMagSizeLarge	:= FALSE;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
				MagConvLDStepMagExitedAGVWait:	
					sStepTxt	:= 'Magazine Exited and Wait for AGV Leave';
					
					IF bAIVInPos = FALSE OR p_bBufferMagRemoved THEN
						usiAccWO := 0;
						bExitDelAutoRcp := FALSE;
						eGotoOpsStep	:= MagConvLDStepMagUSComm;
						eDSSOTAct	:= SOTActIdle;
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
			
	
					
				MagConvLDStepMagExitMnl:
					sStepTxt	:= 'Magazine Conveyor Exiting Magazine Manually';
					IF p_bProjLifTravMnlLoad = FALSE THEN
						eMagConv2ClpAct	:= MagConv2ClpActPreExitClpr;
						eSelClampCtrl	:= PneuActExt;
						eSafetyBarAct	:= PneuActExt;
					ELSE
						eGotoOpsStep    := MagConvLDStepMagExitedWait;
					END_IF
					IF ((p_eMagConv2ClpStatus = Done OR EDGENEG(p_bFixedSideDetect)) AND p_eMagConv2ClpStat = MagConv2ClpActPreExitClpr) 
						AND (p_eSelClampCtrlStatus = Done AND p_eSelClampCtrlStat = PneuActExt)
						AND (p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt)
						THEN
						eSelClampCtrl	:= PneuActIdle;
						eSafetyBarAct	:= PneuActIdle;
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						
						eGotoOpsStep	:= MagConvLDStepMagExitedWait;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
							
				MagConvLDStepMagExitedWait:
					sStepTxt	:= 'Magazine Exited And Waiting For Remove';
					eAGVMagAct	:= AGVMagActExit;
					IF bMagAutoEx THEN
						eDSSOTAct	:= SOTActRun;
					ELSE
						eDSSOTAct	:= SOTActIdle;
					END_IF	
					bMagExitedWait	:= TRUE;
					bHCommModChgDone := TRUE; //to UI
					fbEntSenOff(IN:= p_bLocalMagEntrySen = FALSE);
					ePrevStepBeforeMESStdBy := MagConvLDStepNA; //finish exit from extMes 
					iMagMESAcptCond := 0 ; //reset if 255 (-1)
					
					IF fbMagRemovedTm.Q OR fbEntSenOff.Q THEN
						usiAccWO := 0;
						bExitDelAutoRcp := FALSE;
						bMagExitedWait	:= FALSE;
						eGotoOpsStep	:= MagConvLDStepMagUSComm;
						eDSSOTAct	:= SOTActIdle;
						
					ELSIF p_bNewMag = TRUE THEN
						bMagExitedWait	:= FALSE;
						eAGVMagAct	:= AGVMagActIdle;
						eGotoOpsStep	:= MagConvLDStepMagEntMnl;
						eDSSOTAct	:= SOTActIdle;
					END_IF
					
//					IF p_bLinkProjCurtainSenPrep THEN
//						IF p_bAGVMagMcRunRdy = TRUE AND p_bLinkBypCurtainSenCtrl THEN
//							eGotoOpsStep	:= MagConvLDStepMagMtyExit;
//						END_IF
//					ELSE // standard
						IF p_bAGVMagMcRunRdy = TRUE THEN
							eGotoOpsStep	:= MagConvLDStepMagMtyExit;
						ELSIF p_bDSSOTConvStart = TRUE THEN
							eGotoOpsStep	:= MagConvLDStepMagMtyExit;
						END_IF
//					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
				
			END_CASE
			
		END_IF
		
	END_IF
	
	bNewMagAllw	:= eOpsStep = MagConvLDStepMagUSComm;
	bRlsMagAllw	:= (eOpsStep = MagConvLDStepMagCmp 
					OR eOpsStep = MagConvLDStepBffrDSComm 
					OR eOpsStep = MagConvLDStepMagMtyDSComm 
					OR eOpsStep = MagConvLDStepBffrExitBrd
					OR eOpsStep = MagConvLDStepMagEntMESStdByChk AND (p_tyResponseFromMES.iAcceptCondition < 0 OR fbReadRFIDTO.Q))
					AND NOT(p_bOpsTravLifLDEntBrd OR p_bOpsTravLifLDUSMagWidthChk OR p_bOpsTravLifMove) 
					AND (p_bDIInShutterClosedRS OR p_bLinkProjCurtainSenPrep);
	
	Act_OpsInfo;
	
	//Operation State
	bOpsInitDone		:= eOpsStep > MagConvLDStepInitMagConv;
	bStepMagExitedWait	:= eOpsStep = MagConvLDStepMagExitedWait;
	bStepMagVerification:= eOpsStep = MagConvLDStepVerifyMag;
	bStepMagMtyExit		:= eOpsStep = MagConvLDStepMagMtyExit;
	bStepMagUSCom 		:= eOpsStep = MagConvLDStepMagUSComm;
	bStepMagEnt 		:= eOpsStep = MagConvLDStepMagEnt;	
	bStepDSCom 			:= eOpsStep = MagConvLDStepBffrDSComm;
	bAGVCommRdy			:= (eOpsStep = MagConvLDStepMagUSComm OR eOpsStep = MagConvLDStepMagMtyDSComm OR eOpsStep = MagConvLDStepMagExitedWait
							OR eOpsStep = MagConvLDStepMagEnt OR eOpsStep = MagConvLDStepMagMtyExit) AND p_bAGVMagMcRunRdy;
	bRlsMagBtnUnmask	:= eOpsStep = MagConvLDStepMagEntMESStdByChk AND (p_tyResponseFromMES.iAcceptCondition < 0 OR fbReadRFIDTO.Q) OR fbWriteRFIDTO.Q;
	bExtMesStdByChk		:= eOpsStep = MagConvLDStepMagExtMESStdByChk;

END_ACTION
