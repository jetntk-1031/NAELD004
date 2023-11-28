
ACTION Act_OpsSubRun: 
	
	(*Loader's Lifter Magazine Layout*)
	(*
		Direction: -->> LEFT TO RIGHT -->>
		
	     +----------+
	     |          |
	     |          |
	     |          |DS3 (Lif=PosCSlt)
	     |          |[Mag 3]
	     |          |
	     |          |DS2 (Lif=PosBSlt)
	     |          |[Mag 2]
	     |          |
	     |          |DS1 (Lif=PosASlt)
	     |          |[Mag 1]
	     |  Loader  |
	     +----------+
		
		Note: Program Action Called For Lifter As Shown Above
		      Setup Lifter Program Parameters Accordingly
	*)
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF
				
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				LifMagLDStepInitLif:
					sStepTxt	:= 'Initializing Lifter';
					
					IF p_bLifterSafeInitialize THEN
						eLifterAct	:= LifterActFullHm;
						
						IF p_eLifterStatus = Done AND p_eLifterStat = LifterActFullHm THEN
							eLifterAct	:= LifterActIdle;
							
							eGotoOpsStep	:= LifMagLDStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
					ELSE
						IF p_eLifterStat <> LifterActIdle THEN
							eLifterAct	:= LifterActStop;
							
							IF p_eLifterStatus = Done AND p_eLifterStat = LifterActStop THEN
								eLifterAct	:= LifterActIdle;
								
								bPaused	:= p_bStop OR p_bStep;
							END_IF
						ELSE
							bPaused	:= p_bStop OR p_bStep;
						END_IF
					END_IF
					
				LifMagLDStepMagCmp:
					sStepTxt	:= 'Comparing Magazine';
					
					a_bMagAllwMagSetupDone[1]	:= p_bMagSetupDone1;
					a_bMagAllwMagSetupDone[2]	:= p_bMagSetupDone2;
					a_bMagAllwMagSetupDone[3]	:= p_bMagSetupDone3;
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					
					a_bMagAllwMagPresent[1]	:= p_bBufferMagPresent1;
					a_bMagAllwMagPresent[2]	:= p_bBufferMagPresent2;
					a_bMagAllwMagPresent[3]	:= p_bBufferMagPresent3;
					
					a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
					a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
					a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					
					//Sorting Priority
					memset(ADR(a_udiMagAllwPriority), 0, SIZEOF(a_udiMagAllwPriority));
					
					FOR udi := 1 TO 3 DO
						udiCount	:= 3;
						udiCmpTm	:= a_udiMagAllwMagPresentTm[udi];
						
						FOR udi1 := 1 TO 3 DO
							IF a_udiMagAllwMagPresentTm[udi1] > udiCmpTm THEN
								udiCount	:= udiCount - 1;
							END_IF
						END_FOR
						
						a_udiMagAllwPriority[udi]	:= udiCount;
					END_FOR
					
					FOR udi := 3 TO 1 BY -1 DO
						FOR udi1 := 3 TO 1 BY -1 DO
							IF (udi <> udi1) AND (a_udiMagAllwPriority[udi] = a_udiMagAllwPriority[udi1]) THEN
								a_udiMagAllwPriority[udi1]	:= a_udiMagAllwPriority[udi1] - 1;
							END_IF
						END_FOR
					END_FOR
					
					//Checking Buffer Status
					memset(ADR(a_udiMagAllwSum), 0, SIZEOF(a_udiMagAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF pa_bMagDis[udi] = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Setup Complete
						IF a_bMagAllwMagSetupDone[udi] = TRUE THEN
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
					
					FOR udi := 1 TO 3 DO
						//Enable + Magazine Setup Done + Magazine Present + Magazine Available
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
						
						FOR udi := 1 TO 3 DO
							//Enable + Magazine Setup Done + Magazine Present + Magazine Full
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
					
					IF (p_bDSAllow = TRUE) AND (udiMagAllwGo <> 99) THEN
						
						eMagNxtUnload	:= udiMagAllwGo;
						eGotoOpsStep	:= LifMagLDStepNxtUnloadBffr;
						
						IF eMagNxtUnload = MagNxtUnloadMag1 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat1);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent1);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm1);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct1);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat1);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus1);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct1);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat1);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus1);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart1);
							
						ELSIF eMagNxtUnload = MagNxtUnloadMag2 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat2);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent2);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm2);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct2);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat2);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus2);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct2);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat2);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus2);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart2);
							
						ELSIF eMagNxtUnload = MagNxtUnloadMag3 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat3);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent3);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm3);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct3);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat3);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus3);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct3);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat3);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus3);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart3);
							
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						eMagNxtUnload	:= MagNxtUnloadInvalid;
						
						bPaused	:= p_bStop;
						
					END_IF
					
					//Unload Magazine
					IF p_bUnloadMag = TRUE THEN
						eMagNxtUnload	:= MagNxtUnloadInvalid;
						eGotoOpsStep	:= LifMagLDStepLifMovUnloadMag;
					END_IF
					
				LifMagLDStepNxtUnloadBffr:
					sStepTxt	:= 'Computing Next Unload Buffer';
					
					p_eLocalBufferAct	:= BufferActNxtUnload;
					
					IF p_eLocalBufferStatus = Done AND p_eLocalBufferStat = BufferActNxtUnload THEN
						p_eLocalBufferAct	:= BufferActIdle;
						eGotoOpsStep		:= LifMagLDStepLifMov;
						
						bPaused	:= p_bStop OR p_bStep;
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepLifMovUnloadMag;
						END_IF
						
					END_IF
					
				LifMagLDStepLifMov:
					sStepTxt	:= 'Moving Lifter To Next Unload Position';
					
					diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1;
					diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2;
					diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3;
					
					IF eMagNxtUnload = MagNxtUnloadMag1 THEN
						eLifterAct	:= LifterActGoASltPos;
						
					ELSIF eMagNxtUnload = MagNxtUnloadMag2 THEN
						eLifterAct	:= LifterActGoBSltPos;
						
					ELSIF eMagNxtUnload = MagNxtUnloadMag3 THEN
						eLifterAct	:= LifterActGoCSltPos;
						
					ELSIF eMagNxtUnload = MagNxtUnloadInvalid THEN
						eGotoOpsStep	:= LifMagLDStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepLifMovUnloadMag;
						END_IF
						
					END_IF
					
					IF (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoASltPos)
						OR (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoBSltPos)
						OR (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoCSltPos) THEN
						
						eLifterAct	:= LifterActIdle;
						
						eGotoOpsStep	:= LifMagLDStepBffrDSComm;
						
						bPaused	:= p_bStop OR p_bStep;
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepLifMovUnloadMag;
						END_IF
						
					END_IF
					
				LifMagLDStepBffrDSComm:
					sStepTxt	:= 'Communicating Buffer Downstream';
					
					p_eLocalDSSMEMAAct	:= SMEMAActRun;
					
					IF p_bLocalDSSMEMAConvStart = TRUE THEN
						eGotoOpsStep	:= LifMagLDStepBffrExitBrd;
						
					ELSIF p_bDSAllow = FALSE THEN
						p_eLocalDSSMEMAAct	:= SMEMAActIdle;
						eMagNxtUnload		:= MagNxtUnloadInvalid;
						eGotoOpsStep		:= LifMagLDStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						IF p_bLocalBufferMagPresent = FALSE THEN	//Checking Magazine Present
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						ELSIF pa_bMagDis[udiMagAllwGo] = TRUE THEN	//Checking Magazine Enable
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtUnload	:= MagNxtUnloadInvalid;
							eGotoOpsStep	:= LifMagLDStepLifMovUnloadMag;
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
						IF (bPaused = TRUE) OR (eGotoOpsStep = LifMagLDStepMagCmp) OR (p_bUnloadMag = TRUE) THEN
							p_eLocalDSSMEMAAct	:= SMEMAActIdle;
						END_IF
						
					END_IF
					
				LifMagLDStepBffrExitBrd:
					IF p_bLocalDSSMEMAConvStart THEN
						sStepTxt	:= 'Transferring Board Out From Magazine';
						
						//Do Nothing
					END_IF
					
					IF p_eLocalDSSMEMAStatus = Done AND p_eLocalDSSMEMAStat = SMEMAActRun THEN
						p_eLocalDSSMEMAAct	:= SMEMAActIdle;
						eGotoOpsStep		:= LifMagLDStepUnloadBffr;
					END_IF
					
				LifMagLDStepUnloadBffr:
					sStepTxt	:= 'Unloading Buffer';
					
					p_eLocalBufferAct	:= BufferActUnload;
					
					IF p_eLocalBufferStatus = Done AND p_eLocalBufferStat = BufferActUnload THEN
						p_eLocalBufferAct	:= BufferActIdle;
						eMagNxtUnload		:= MagNxtUnloadInvalid;
						eGotoOpsStep		:= LifMagLDStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				LifMagLDStepLifMovUnloadMag:
					sStepTxt	:= 'Moving Lifter To Unload Position';
					
					eLifterAct	:= LifterActGoAPos;
					
					IF p_eLifterStatus = Done AND p_eLifterStat = LifterActGoAPos THEN
						eLifterAct	:= LifterActIdle;
						
						eGotoOpsStep	:= LifMagLDStepUnloadMag;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				LifMagLDStepUnloadMag:
					sStepTxt	:= 'Unloading Magazine';
					
					IF p_bUnloadMag = FALSE THEN
						eGotoOpsStep	:= LifMagLDStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					ELSE
						bPaused	:= p_bStop;
					END_IF
				
			END_CASE
			
		END_IF
		
	END_IF
	
	Act_OpsInfo;
	
	//Step
	bBffrExitBrd	:= eOpsStep = LifMagLDStepBffrExitBrd;
	bUnloadingMov	:= eOpsStep = LifMagLDStepLifMovUnloadMag;
	bUnloading		:= eOpsStep = LifMagLDStepUnloadMag;
	
END_ACTION
