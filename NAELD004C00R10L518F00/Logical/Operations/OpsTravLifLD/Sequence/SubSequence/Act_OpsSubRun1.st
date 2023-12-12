
ACTION Act_OpsSubRun1: 
	
	(*Loader's Traverser & Lifter Layout*)
	(*
		Direction: -->> LEFT TO RIGHT -->>
		
	     (Trav=PosG; Lif=PosDSlt) US4+----------+
	                          [Mag 4]|          |
	                                 |          |
	     (Trav=PosC; Lif=PosCSlt) US3|          |DS3 (Trav=PosF; Lif=PosC)
	                          [Mag 3]|          |[Lane C]
	                                 |          |
	     (Trav=PosB; Lif=PosBSlt) US2|          |DS2 (Trav=PosE; Lif=PosB)
	                          [Mag 2]|          |[Lane B]
	                                 |          |
	     (Trav=PosA; Lif=PosASlt) US1|          |DS1 (Trav=PosD; Lif=PosA)
	                          [Mag 1]|          |[Lane A]
	                                 |  Loader  |
	                                 +----------+
	
		Note: Program ACTION Called FOR Traverser & Lifter As Shown Above
		      Setup The Traverser & Lifter Program Parameters Accordingly
	*)
	Act_LogStep;
	Act_OpsCommSig;
	Act_OpsMod;
	
	IF eGotoOpsStep1 <> eOpsStep1 THEN
		
		fbWidthChkSenOnTim(IN:= FALSE);
		fbWidthChkSenOffTim(IN:= FALSE);
		tTravLiftInPos(IN:= FALSE);
		IF eGotoOpsStep1 = TravLifLDStep1EntTravLifMov OR eGotoOpsStep1 = TravLifLDStep1EntTraLifMovRotCyl 
			OR eGotoOpsStep1 = TravLifLDStep1ExitTravLifMov OR eGotoOpsStep1 = TravLifLDStep1InShutClsInt 
			OR eGotoOpsStep1 = TravLifLDStep1PreEntTravLifMov THEN
			bTravLifInDSPos := TRUE;
		ELSE
			bTravLifInDSPos := FALSE;
		END_IF
		//	bTravLifInUSPos := FALSE;
	
		CASE eGotoOpsStep1 OF
			TravLifLDStep1Standby:
				eResumeStep := eOpsStep1;
				eOpsStep1	:= eGotoOpsStep1;
			TravLifLDStep1USSigWait:
				IF p_bLinkUIBlkTravLif THEN
				ELSE
					eOpsStep1	:= eGotoOpsStep1;
				END_IF
			TravLifLDStep1InletPneuCls:
				IF p_bLinkProjLifterMagPlatform THEN
					eGotoOpsStep1 := MagPlat_Step1InletPneuCls;
				ELSE
					eOpsStep1	:= eGotoOpsStep1;
				END_IF
			TravLifLDStep1InletPneuOpn:
				IF p_bLinkProjLifterMagPlatform THEN
					eGotoOpsStep1 := MagPlat_Step1InletPneuOpn;
				ELSIF p_tyLocalBufferStat.bBffrMty THEN
					eGotoOpsStep1 := TravLifLDStep1USSigWait;
				ELSE
					eOpsStep1	:= eGotoOpsStep1;
				END_IF
			TravLifLDStep1EntBrd:
				IF p_bLinkProjLifterMagPlatform THEN
					eGotoOpsStep1 := MagPlat_Step1EntBrd;
				ELSE
					eOpsStep1	:= eGotoOpsStep1;
				END_IF
//				IF p_uiLinkUIBrdOutCntr = 0 AND p_bLinkProjWorkOrderOPCUA THEN
//					
//				ELSE
//					eOpsStep1	:= eGotoOpsStep1;
//				END_IF
			TravLifLDStep1MagWidthErr:
				IF bCmdUnclmpFlag = FALSE THEN
					bCmdUnclmpFlag := TRUE;
					IF eTravLifPosGo = TravLifLDPosUS1 THEN
						bWidthChkErrCmdUnclmp1 := TRUE;
					ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
						bWidthChkErrCmdUnclmp2 := TRUE;
					ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
						bWidthChkErrCmdUnclmp3 := TRUE;
					END_IF
				END_IF
				
				IF p_bPneuUnclmpFBDone THEN
					bCmdUnclmpFlag := FALSE;
					p_bOpsMagConvLD1UnclmpDone := FALSE; //bi-dir
					p_bOpsMagConvLD2UnclmpDone := FALSE; //bi-dir
					p_bOpsMagConvLD3UnclmpDone := FALSE; //bi-dir
					bWidthChkErrCmdUnclmp1 := FALSE;
					bWidthChkErrCmdUnclmp2 := FALSE;
					bWidthChkErrCmdUnclmp3 := FALSE;
					eOpsStep1	:= eGotoOpsStep1;
				END_IF
				
			ELSE
				eOpsStep1	:= eGotoOpsStep1;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep1 = eGotoOpsStep1 THEN
		
		IF bPaused = FALSE THEN
				
			IF bOpsInitDone AND bBypCurtainSenCtrl = FALSE AND p_bCurtainSenPrep AND p_bPullerRetSen THEN // To Save the Cycle Time For Opening Shutter
				IF eTravLifPosGo = TravLifLDPosUS1 AND NOT bInShutClo1 THEN
					eInletPneuAct	:= PneuActRet;
					eInletPneuAct2	:= PneuActExt;
					eInletPneuAct3 := PneuActExt;
					
					IF (p_eInletPneuStat = PneuActRet AND p_eInletPneuStatus = Done) AND
						(p_eInletPneuStat2 = PneuActExt AND p_eInletPneuStatus2 = Done) AND
						(p_eInletPneuStat3 = PneuActExt AND p_eInletPneuStatus3 = Done) THEN
						
						bInShutClo1 := TRUE;
						bInShutClo2 := FALSE;
						bInShutClo3 := FALSE;
						
					END_IF
						
				END_IF
					
				IF eTravLifPosGo = TravLifLDPosUS2 AND NOT bInShutClo2 AND p_bShutter2Prep THEN
					eInletPneuAct2 := PneuActRet;
					eInletPneuAct	:= PneuActExt;
					eInletPneuAct3 := PneuActExt;
					
					IF (p_eInletPneuStat2 = PneuActRet AND p_eInletPneuStatus2 = Done) AND
						(p_eInletPneuStat = PneuActExt AND p_eInletPneuStatus = Done) AND
						(p_eInletPneuStat3 = PneuActExt AND p_eInletPneuStatus3 = Done) THEN
						
						bInShutClo1 := FALSE;
						bInShutClo2 := TRUE;
						bInShutClo3 := FALSE;
						
					END_IF
					
				END_IF
					
				IF eTravLifPosGo = TravLifLDPosUS3 AND NOT bInShutClo3 AND p_bShutter3Prep THEN
					eInletPneuAct3 := PneuActRet;
					eInletPneuAct  := PneuActExt;
					eInletPneuAct2 := PneuActExt;
					
					IF (p_eInletPneuStat3 = PneuActRet AND p_eInletPneuStatus3 = Done) AND
						(p_eInletPneuStat = PneuActExt AND p_eInletPneuStatus = Done) AND
						(p_eInletPneuStat2 = PneuActExt AND p_eInletPneuStatus2 = Done) THEN
						
						bInShutClo1 := FALSE;
						bInShutClo2 := FALSE;
						bInShutClo3 := TRUE;
						
					END_IF
					
				END_IF 
			END_IF
			
			CASE eOpsStep1 OF
				
				TravLifLDStep1InitConv:
					sStepTxt	:= 'Initializing Puller Conveyor';
					IF p_bPullerRetSen AND usiInitRetExtChk = 0 THEN
						usiInitRetExtChk := 1; //Retract
					ELSIF p_bPullerRetSen = FALSE AND (((p_bInShutterOpenRS OR p_bInShutterOpenRS2 OR p_bInShutterOpenRS3) AND p_eNtParamCustomerReq <> Siemens) OR
														(p_bInShutterOpenRS AND p_eNtParamCustomerReq = Siemens)) AND usiInitRetExtChk = 0 THEN
						usiInitRetExtChk := 2; //Extend
					ELSIF usiInitRetExtChk = 0 THEN
						usiInitRetExtChk := 1; //Retract
					END_IF
					
					IF usiInitRetExtChk = 1 THEN
						eConvAct	:= ConvActInitPuller;
					ELSIF usiInitRetExtChk = 2 THEN
						eConvAct	:= ConvActInitPuller1;
					END_IF
					

//bnd					ePullerAct	:= PneuActRet;
					
					IF (p_eConvStatus = Done AND (p_eConvStat = ConvActInitPuller OR p_eConvStat = ConvActInitPuller1)) 
						//	AND (p_ePullerStatus = Done AND p_ePullerStat = PneuActRet) 
						THEN
						bBrdOnSen		:= FALSE;
						eConvAct		:= ConvActIdle;
					//	ePullerAct		:= PneuActIdle;
						eGotoOpsStep1	:= TravLifLDStep1InitInOutPneuCls;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						//Switch To Init Inlet Pnue Close
						//Inlet Sensor Clear & Puller Cylinder Retracted
//						IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN
//							IF NOT p_bConvLftSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
//								eGotoOpsStep1	:= TravLifLDStep1InitInletPneuCls;
//							END_IF
//						ELSE
//							IF NOT p_bConvRgtSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
//								eGotoOpsStep1	:= TravLifLDStep1InitInletPneuCls;
//							END_IF
//						END_IF
						
					END_IF
				
			
					
				TravLifLDStep1InitInletPneuCls:
					sStepTxt	:= 'Initializing Inlet Pneumatic Closing';
					
					eInletPneuAct	:= PneuActExt;
					eInletPneuAct2	:= PneuActExt;		//JOHN
					eInletPneuAct3	:= PneuActExt;		//JOHN
					
					IF (p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt) AND (p_eInletPneuStatus2 = Done AND p_eInletPneuStat2 = PneuActExt) AND (p_eInletPneuStatus3 = Done AND p_eInletPneuStat3 = PneuActExt) THEN
						eInletPneuAct	:= PneuActIdle;
						eInletPneuAct2	:= PneuActIdle;	//JOHN			
						eInletPneuAct3	:= PneuActIdle;	//JOHN
						eGotoOpsStep1	:= TravLifLDStep1InitConv;
					END_IF
					
				TravLifLDStep1InitInOutPneuCls:
					sStepTxt	:= 'Initializing Inlet&Outlet Pneumatic Closing';
					
					IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN //outlet sensor
						IF p_bConvRgtSen THEN
							bConvOutSenOn := TRUE;
						ELSE
							bConvOutSenOn := FALSE;
						END_IF
					ELSE
						IF p_bConvLftSen THEN
							bConvOutSenOn := TRUE;
						ELSE
							bConvOutSenOn := FALSE;
						END_IF
					END_IF
					
					IF ((p_bTravDPosDiff OR p_bLifterAPosDiff) AND (p_bTravEPosDiff OR p_bLifterBPosDiff))
						OR bConvOutSenOn = FALSE
						THEN
						bWaitForDSTxBrd := FALSE;
					END_IF
					
					IF ((bConvOutSenOn AND p_bConvHvBrd) AND ((p_bTravDPosDiff AND p_bLifterAPosDiff) AND (p_bTravEPosDiff AND p_bLifterBPosDiff))) 
						OR (bConvOutSenOn AND p_bConvHvBrd AND p_bTravDPosDiff AND p_bTravEPosDiff)
						OR (bConvOutSenOn AND p_bConvHvBrd AND p_bLifterAPosDiff AND p_bLifterBPosDiff)
						OR (bDualLaneMode AND p_bConvHvBrd = FALSE AND bConvOutSenOn = FALSE)
						OR (p_bTravIsHomed = FALSE OR p_bLifterBtmIsHomed = FALSE)
						OR bWaitForDSTxBrd = FALSE
						THEN 
						bSkipCloseOutletShutter := FALSE;
						IF p_bOutShutDis THEN
							eOutletPneuAct	:= PneuActRet;
							eOutletPneuAct2	:= PneuActRet;
						ELSIF p_bLifterAPosDiff = FALSE AND p_bOutShutterOpenRS OR (p_bOutShutter2Prep AND p_bOutShutterOpenRS2) THEN
							IF p_bConvClrSen AND bOutletSafeToClo = FALSE THEN
								eGotoOpsStep1 := TravLifLDStep1OutletShutErr;
							ELSE
								bOutletSafeToClo := TRUE;
								eOutletPneuAct	:= PneuActExt; 
								eOutletPneuAct2	:= PneuActExt; 
							END_IF
						ELSE
							eOutletPneuAct	:= PneuActExt;
							eOutletPneuAct2	:= PneuActExt;
						END_IF
					ELSE
						bSkipCloseOutletShutter := TRUE;
					END_IF
					
					eInletPneuAct	:= PneuActExt;	//JOHN - Shorten Cycle Time
					eInletPneuAct2	:= PneuActExt;	//JOHN - Shorten Cycle Time
					eInletPneuAct3	:= PneuActExt;	//JOHN - Shorten Cycle Time
					
					IF bSkipCloseOutletShutter THEN
						IF (p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt) AND (p_eInletPneuStatus2 = Done AND p_eInletPneuStat2 = PneuActExt) AND (p_eInletPneuStatus3 = Done AND p_eInletPneuStat3 = PneuActExt) THEN	//JOHN	
							eInletPneuAct	:= PneuActIdle;
							eInletPneuAct2	:= PneuActIdle;
							eInletPneuAct3	:= PneuActIdle;
							
							IF p_bConvHvBrd THEN 
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							END_IF
						ELSE  
							IF (p_eInletPneuStatus = Done OR p_eInletPneuStatus = Idle) AND (p_eInletPneuStatus2 = Done OR p_eInletPneuStatus2 = Idle) 
								AND (p_eInletPneuStatus3 = Done OR p_eInletPneuStatus3 = Idle) THEN 		//JOHN - Shorten Cycle Time
								eInletPneuAct	:= PneuActIdle;							//
								eInletPneuAct2	:= PneuActIdle;							//
								eInletPneuAct3	:= PneuActIdle;							//
								IF p_bConvHvBrd THEN 									//
									eGotoOpsStep1	:= TravLifLDStep1DSSigWait;			//
								ELSE													//
									eGotoOpsStep1	:= TravLifLDStep1USSigWait;			//
								END_IF													//
						
								bPaused	:= p_bStop OR p_bStep;
							END_IF
						END_IF
						
					ELSE
						IF (p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt) AND (p_eInletPneuStatus2 = Done AND p_eInletPneuStat2 = PneuActExt) AND (p_eInletPneuStatus3 = Done AND p_eInletPneuStat3 = PneuActExt) 	//JOHN
							AND ((p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) AND p_eOutletPneuStatus2 = Done OR bSkipCloseOutletShutter) THEN
							eInletPneuAct	:= PneuActIdle;
							eInletPneuAct2	:= PneuActIdle;	//JOHN
							eInletPneuAct3	:= PneuActIdle;	//JOHN
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							bOutletSafeToClo:= FALSE;
							
							IF p_bConvHvBrd = FALSE THEN
								bSkipCloseOutletShutter := FALSE;
								eGotoOpsStep1	:= TravLifLDStep1InitAWTravLif;
								bLocalDSRdy1Set := FALSE;
								bLocalDSRdy2Set := FALSE;
							ELSE
								bSkipCloseOutletShutter := FALSE;
								eGotoOpsStep1	:= TravLifLDStep1InitTravLif;
							END_IF
						
						ELSE 
							IF (p_eInletPneuStatus = Done) AND (p_eInletPneuStatus2 = Done) AND (p_eInletPneuStatus3 = Done) AND (p_eOutletPneuStatus = Done) AND p_eOutletPneuStatus2 = Done THEN 		//JOHN - Shorten Cycle Time
								eInletPneuAct	:= PneuActIdle;							//
								eInletPneuAct2	:= PneuActIdle;							//
								eInletPneuAct3	:= PneuActIdle;							//
								eOutletPneuAct	:= PneuActIdle;							//
								eOutletPneuAct2	:= PneuActIdle;
								IF p_bConvHvBrd = FALSE THEN 							//
									bSkipCloseOutletShutter := FALSE;					//
									eGotoOpsStep1	:= TravLifLDStep1InitAWTravLif;		//
									bLocalDSRdy1Set := FALSE;							//
									bLocalDSRdy2Set := FALSE;							//
								ELSE													//
									bSkipCloseOutletShutter := FALSE;					//
									eGotoOpsStep1	:= TravLifLDStep1InitTravLif;		//
								END_IF													//
							END_IF
						END_IF															//
																					//
					bPaused	:= p_bStop OR p_bStep;									//
							
					END_IF
					
				TravLifLDStep1InitTravLif:
					sStepTxt	:= 'Initializing Traverser And Lifter Homing';
					
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) THEN
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
					
						eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
							
							
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStep1InitAWTravLif:
					sStepTxt	:= 'Initializing Auto Width, Traverser And Lifter Homing';
					
					IF bDualLaneMode THEN
						eAWAct		:= AWActFullHm;
						eAWPushOrPullerAct := AWActFullHm;
					ELSE
						eAWAct		:= AWActGoWidthOff;
						eAWPushOrPullerAct := AWActGoWidthOff;
					END_IF
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eAWStatus = Done AND (p_eAWStat = AWActGoWidthOff OR p_eAWStat = AWActFullHm)) 
						AND(p_eAWPushOrPullerStatus = Done AND (p_eAWPushOrPullerStat = AWActGoWidthOff OR p_eAWPushOrPullerStat = AWActFullHm)) 
						AND (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) 
						AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) 
						THEN
						eAWAct		:= AWActIdle;
						eAWPushOrPullerAct := AWActIdle;
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						bBypCurtainWidthChg := TRUE;// to folloer 2
						
						IF bDualLaneMode = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							bLocalDSRdy1Set	:= FALSE;
							bLocalDSRdy2Set	:= FALSE;
							
							
						ELSIF bDualLaneMode AND p_bConvHvBrd = FALSE THEN
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
						
						END_IF
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				
				TravLifLDStep1DSSigWait100:
					
					//	IF (bLocalDSRdy1 OR (bLocalDSRdy1Set AND bLocalDSRdy2Set = FALSE))
					IF (bLocalDSRdy1 AND bLocalDSRdy2Set = FALSE)
						AND (bLocalUSRdy1Set OR bLocalUSRdy2Set) THEN
								bLocalDSRdy1Set := TRUE;
								a_bPosAllwSigOn[1]	:= bLocalUSRdy1Set;
								a_bPosAllwSigOn[2]	:= bLocalUSRdy2Set;
								
								memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
							
								FOR udi := 1 TO 2 DO
									//Priority
									a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiUSPriority[udi];
									//Enable
									IF tyParamTravLif.a_bUSDis[udi] = FALSE THEN
										a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
									END_IF
									//Signal On
									IF a_bPosAllwSigOn[udi] = TRUE THEN
										a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
									END_IF
							
								END_FOR
							
								udiPosAllwGo	:= 99;
							
								FOR udi := 1 TO 2 DO
									//Enable + Signal On
									IF a_udiPosAllwSum[udi] >= 3000 THEN
									
										IF udiPosAllwGo <> 99 THEN
											//Priority
											IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiPosAllwGo] THEN
												udiPosAllwGo	:= udi;
											END_IF
										ELSE
											udiPosAllwGo	:= udi;
										END_IF
									
									END_IF
								
								END_FOR
							
								
								IF udiPosAllwGo = 99 THEN
								
									FOR udi := 1 TO 2 DO
										//Enable (Single Input)
										IF a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 THEN
										// Test for 1100
											IF udiPosAllwGo = 99 THEN
												udiPosAllwGo	:= udi;
											ELSE
												udiPosAllwGo	:= 99;
												EXIT;
											END_IF
										
										END_IF
									
									END_FOR
								
								END_IF
							
							
						IF (p_bUSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
							
									eTravLifPosGo	:= udiPosAllwGo;
									
									eGotoOpsStep1	:= TravLifLDStep1PreEntAllServo200;
									eAWAct	:= AWActGoWidthOff;	
									eAWPushOrPullerAct	:= AWActGoWidthOff;	
							
									IF eTravLifPosGo = TravLifLDPosUS1 THEN
										p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod1);
									
										p_bLocalUSRdy ACCESS ADR(bLocalUSRdy1);
									
										p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct1);
										p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat1);
										p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus1);
										p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy1);
										p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting1);
										p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart1);
										p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop1);
									
										p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy1);
										p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting1);
										p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport1);
									
									ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
										p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod2);
									
										p_bLocalUSRdy ACCESS ADR(bLocalUSRdy2);
									
										p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct2);
										p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat2);
										p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus2);
										p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy2);
										p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting2);
										p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart2);
										p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop2);
									
										p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy2);
										p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting2);
										p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport2);
									
									
									END_IF
								
									bPaused	:= p_bStop OR p_bStep;
								ELSE
									eTravLifPosGo	:= TravLifLDPosInvalid;
								
									bPaused	:= p_bStop;
								END_IF
								
						
						//		ELSIF (bLocalDSRdy2 OR (bLocalDSRdy2Set AND bLocalDSRdy1Set = FALSE))
						ELSIF (bLocalDSRdy2 AND bLocalDSRdy1Set = FALSE)
								AND (bLocalUSRdy3Set OR bLocalUSRdy4Set) THEN
								bLocalDSRdy2Set := TRUE;
								a_bPosAllwSigOn[3]	:= bLocalUSRdy3Set;
								a_bPosAllwSigOn[4]	:= bLocalUSRdy4Set;
							
								memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
							
								FOR udi := 3 TO 4 DO
									//Priority
									a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiUSPriority[udi];
									//Enable
									IF tyParamTravLif.a_bUSDis[udi] = FALSE THEN
										a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
									END_IF
									//Signal On
									IF a_bPosAllwSigOn[udi] = TRUE THEN
										a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
									END_IF
							
								END_FOR
							
								udiPosAllwGo	:= 99;
							
								FOR udi := 3 TO 4 DO
									//Enable + Signal On
									IF a_udiPosAllwSum[udi] >= 3000 THEN
									
										IF udiPosAllwGo <> 99 THEN
											//Priority
											IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiPosAllwGo] THEN
												udiPosAllwGo	:= udi;
											END_IF
										ELSE
											udiPosAllwGo	:= udi;
										END_IF
									
									END_IF
								
								END_FOR
							
								
								IF udiPosAllwGo = 99 THEN
								
									FOR udi := 3 TO 4 DO
										//Enable (Single Input)
										IF a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 THEN
										
											IF udiPosAllwGo = 99 THEN
												udiPosAllwGo	:= udi;
											ELSE
												udiPosAllwGo	:= 99;
												EXIT;
											END_IF
										
										END_IF
									
									END_FOR
								
								END_IF
							
							
								
								IF (p_bUSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
									
									IF udiPosAllwGo = 4 THEN
										eTravLifPosGo	:= udiPosAllwGo + 3;
									ELSE
										eTravLifPosGo	:= udiPosAllwGo;
									END_IF
							
									eGotoOpsStep1	:= TravLifLDStep1PreEntAllServo200;
								
								
									IF eTravLifPosGo = TravLifLDPosUS3 THEN
										
										p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod3);
										
										p_bLocalUSRdy ACCESS ADR(bLocalUSRdy3);
										
										p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct3);
										p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat3);
										p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus3);
										p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy3);
										p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting3);
										p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart3);
										p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop3);
										
										p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy3);
										p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting3);
										p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport3);
									
									ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
										p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod4);
										
										p_bLocalUSRdy ACCESS ADR(bLocalUSRdy4);
										
										p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct4);
										p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat4);
										p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus4);
										p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy4);
										p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting4);
										p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart4);
										p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop4);
										
										p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy4);
										p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting4);
										p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport4);
									
									END_IF
								
									bPaused	:= p_bStop OR p_bStep;
								ELSE
									eTravLifPosGo	:= TravLifLDPosInvalid;
								
									bPaused	:= p_bStop;
								END_IF
					ELSIF bLocalUSRdy3Set = FALSE AND bLocalUSRdy4Set = FALSE THEN
						bLocalDSRdy2Set := FALSE;
					ELSIF bLocalUSRdy1Set = FALSE AND bLocalUSRdy2Set = FALSE THEN
						bLocalDSRdy1Set := FALSE;	
					END_IF
						
					bPaused	:= p_bStop OR p_bStep;
					
					
				TravLifLDStep1PreEntAllServo200:
					sStepTxt	:= 'Moving Traverser And Lifter And Auto Width To Pre-Enter Position';
					bSkipCloseOutletShutter := FALSE;
					IF p_bProdRcpCurrRcpTopToBtm THEN
						
						IF p_diBufferNxtUnloadSlt1 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt1 + p_diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt1	:= p_diPullerExtMaxSlt;
							ELSE
								IF p_diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 + p_diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 + 4;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt2 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt2 + p_diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt2	:= p_diPullerExtMaxSlt;
							ELSE
								IF p_diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 + p_diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 + 4;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt3 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt3 + p_diProdRcpCurrRcpPitchRear) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt3	:= p_diPullerExtMaxSlt;
							ELSE
								IF p_diProdRcpCurrRcpPitchRear <= 4 THEN
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 + p_diProdRcpCurrRcpPitchRear;
								ELSE
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 + 4;
								END_IF
								
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt4 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt4 + p_diProdRcpCurrRcpPitchRear) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt4	:= p_diPullerExtMaxSlt;
							ELSE
								IF p_diProdRcpCurrRcpPitchRear <= 4 THEN
									diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 + p_diProdRcpCurrRcpPitchRear;
								ELSE
									diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 + 4;
								END_IF
								
							END_IF
						END_IF
					ELSE
						
						IF p_diBufferNxtUnloadSlt1 <= p_diPullerExtMinSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt1 - p_diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt1	:= p_diPullerExtMinSlt;
							ELSE
								diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 - p_diProdRcpCurrRcpPitch;
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt2 <= p_diPullerExtMinSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt2 - p_diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt2	:= p_diPullerExtMinSlt;
							ELSE
								diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 - p_diProdRcpCurrRcpPitch;
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt3 <= p_diPullerExtMinSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt3 - p_diProdRcpCurrRcpPitchRear) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt3	:= p_diPullerExtMinSlt;
							ELSE
								diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 - p_diProdRcpCurrRcpPitchRear;
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt4 <= p_diPullerExtMinSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt4 - p_diProdRcpCurrRcpPitchRear) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt4	:= p_diPullerExtMinSlt;
							ELSE
								diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 - p_diProdRcpCurrRcpPitchRear;
							END_IF
						END_IF
					END_IF
					
//					eAWAct	:= AWActGoWidthOff;
//					IF (p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) THEN
//						eAWAct		:= AWActIdle;
//					END_IF
					
					IF eTravLifPosGo = TravLifLDPosUS1 THEN
						eTravAct	:= TravActGoAPos;
						eLifAct		:= LifterActGoASltPos;
				
					ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
						eTravAct	:= TravActGoBPos;
						eLifAct		:= LifterActGoBSltPos;
					
					ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
						eTravAct	:= TravActGoCPos;			
						eLifAct		:= LifterActGoCSltPos;
					
					ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
						eTravAct	:= TravActGoGPos;			
						eLifAct		:= LifterActGoDSltPos;
					
					ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
						eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
							
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
						
					eAWAct	:= AWActGoWidthOff;	
					eAWPushOrPullerAct	:= AWActGoWidthOff;	
					
					IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoAPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoBPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoCPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos)) 
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoGPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoDSltPos))
						AND ((p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) AND p_bAWWidthPosDiff = FALSE)
						AND ((p_eAWPushOrPullerStatus = Done AND p_eAWPushOrPullerStat = AWActGoWidthOff) AND p_bAWPushOrPullerWidthPosDiff = FALSE)
						THEN
						eAWAct		:= AWActIdle;
						eAWPushOrPullerAct	:= AWActIdle;	
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
							
						eGotoOpsStep1	:= TravLifLDStep1USSigRechk;
							
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					
				TravLifLDStep1AWMov:
					sStepTxt	:= 'Moving Auto Width';
					IF (p_eNtParamCustomerReq = Siemens OR p_eNtParamCustomerReq = We_Fabricate) AND  p_bInletPneuCls = FALSE THEN //shutter 1 only
						p_eLocalInletPneuAct	:= PneuActExt;
					ELSE
						eAWAct	:= AWActGoWidthOff;
					END_IF
					
					IF ((p_eAWStatus = Busy OR p_eAWStatus = Done) AND p_eAWStat = AWActGoWidthOff) THEN
						eAWPushOrPullerAct	:= AWActGoWidthOff;
					END_IF
					
					IF (p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) 
						AND (p_eAWPushOrPullerStatus = Done AND p_eAWPushOrPullerStat = AWActGoWidthOff)	
						THEN
						eAWAct			:= AWActIdle;
						eAWPushOrPullerAct	:= AWActIdle;
						p_eLocalInletPneuAct := PneuActIdle;
						bBypCurtainWidthChg := TRUE;
						IF bDualLaneMode = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1USSigWait;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1USSigRechk;
						END_IF
							bPaused	:= p_bStop OR p_bStep;
					END_IF
				
				TravLifLDStep1Standby:
					sStepTxt	:= 'Loader Standby';
					IF p_bGotoStandby = FALSE THEN
						eGotoOpsStep1 := eResumeStep;
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStep1USSigWait:
					sStepTxt	:= 'Waiting For Upstream Signal';
					bSkipCloseOutletShutter := FALSE;
	
//					a_bPosAllwSigOn[1]	:= bLocalUSRdy1Set;
//					a_bPosAllwSigOn[2]	:= bLocalUSRdy2Set;
//					a_bPosAllwSigOn[3]	:= bLocalUSRdy3Set;
//					a_bPosAllwSigOn[4]	:= bLocalUSRdy4Set;
					IF p_bLinkProjLifterMagPlatform = FALSE THEN
						a_bPosAllwSigOn[1]	:= p_bMagTransferBrd1 AND p_bStepMagConvLD1DSCom;
						a_bPosAllwSigOn[2]	:= p_bMagTransferBrd2 AND p_bStepMagConvLD2DSCom;
						a_bPosAllwSigOn[3]	:= p_bMagTransferBrd3 AND p_bStepMagConvLD3DSCom;
						a_bPosAllwSigOn[4]	:= p_bMagTransferBrd4 AND p_bStepMagConvLD4DSCom;
					ELSE
						a_bPosAllwSigOn[1]	:= bLocalUSRdy1;
						a_bPosAllwSigOn[2]	:= bLocalUSRdy2;
						a_bPosAllwSigOn[3]	:= bLocalUSRdy3;
					END_IF
					
					IF bDualLaneMode THEN
						eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
						bLocalDSRdy1Set := FALSE;
						bLocalDSRdy2Set := FALSE;
					END_IF
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 4 DO
						//Priority
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiUSPriority[udi];
						//Enable
						IF tyParamTravLif.a_bUSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
						//Auto Recipe (3 mag current)
						IF p_bNtParamAutoRcpPrep THEN
							IF udi = 4 THEN
							ELSE
								a_udiPosAllwSum[udi] := a_udiPosAllwSum[udi] + p_ausiSvyMagAccOrder[udi];
							END_IF
						END_IF
						
					END_FOR
					
					udiPosAllwGo	:= 99;
					
					FOR udi := 1 TO 4 DO
						//Enable + Signal On
						IF a_udiPosAllwSum[udi] >= 3000 THEN
							
							IF udiPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiPosAllwGo] THEN
									udiPosAllwGo	:= udi;
								END_IF
							ELSE
								udiPosAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
						
					IF udiPosAllwGo = 99 THEN
						
						FOR udi := 1 TO 4 DO
							//Enable (Single Input)
							IF a_udiPosAllwSum[udi] >= 1100 AND a_udiPosAllwSum[udi] < 2000 THEN
								
								IF udiPosAllwGo = 99 THEN
									udiPosAllwGo	:= udi;
								ELSE
									udiPosAllwGo	:= 99;
									EXIT;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					IF p_bLocalInShutterExtended = FALSE AND (p_tyLocalBufferStat.bBffrMty 
						OR (p_bCurtainSenPrep AND bBypCurtainSenCtrl  )) THEN //mag empty and shutter opened
						p_eLocalInletPneuAct	:= PneuActExt;
						bMagWidthChked := FALSE;
						//eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
					ELSIF (p_bLocalInShutterExtended = FALSE AND p_tyLocalBufferStat.bBffrMty 
						AND p_bMagTransferBrd1 AND p_bMagTransferBrd2 AND p_bMagTransferBrd3 AND p_bMagTransferBrd4)  THEN
						//OR (p_bCurtainSenPrep = FALSE AND p_bLinkProjLifterMagPlatform = FALSE) THEN //curtain prep: chk 4 false, no prep :standard
						eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
						bMagWidthChked := FALSE;
					ELSIF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff AND p_bUSAllow AND p_bGotoStandby = FALSE THEN
						eGotoOpsStep1	:= TravLifLDStep1AWMov;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF p_bGotoStandby THEN
						eGotoOpsStep1	:= TravLifLDStep1Standby;
						
					ELSIF (p_bUSAllow = TRUE) AND (udiPosAllwGo <> 99) 
						AND a_bRlsMagBtn[1]=FALSE AND a_bRlsMagBtn[2]=FALSE AND a_bRlsMagBtn[3]=FALSE THEN

						IF udiPosAllwGo = 4 THEN
							eTravLifPosGo	:= udiPosAllwGo + 3;
						ELSE
							eTravLifPosGo	:= udiPosAllwGo;
						END_IF
						
						IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1PreEntTravLifMov;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1EntTraLifMovRotCyl;
						END_IF
						
						
						IF eTravLifPosGo = TravLifLDPosUS1 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod1);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy1);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct1);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat1);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus1);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy1);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting1);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart1);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop1);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy1);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting1);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport1);
							
							p_eLocalInletPneuAct ACCESS ADR(eInletPneuAct);
							p_eLocalInletPneuStat ACCESS ADR(p_eInletPneuStat);
							p_eLocalInletPneuStatus ACCESS ADR(p_eInletPneuStatus);
							p_bLocalInletPneuCls ACCESS ADR(p_bInletPneuCls);
							p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended);
							p_bLocalnShutterRetracted ACCESS ADR(p_bInShutterRetracted);
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat1);
							usiLocalAccMag := 1;
							
							p_usiLocalFlushMag ACCESS ADR(usiLocalFlushMag1);
						ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod2);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy2);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct2);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat2);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus2);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy2);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting2);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart2);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop2);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy2);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting2);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport2);
							
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat2);

							IF p_bShutter2Prep THEN 
								p_eLocalInletPneuAct ACCESS ADR(eInletPneuAct2);
								p_eLocalInletPneuStat ACCESS ADR(p_eInletPneuStat2);
								p_eLocalInletPneuStatus ACCESS ADR(p_eInletPneuStatus2);
								p_bLocalInletPneuCls ACCESS ADR(p_bInletPneuCls2);
								p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended2);
								p_bLocalnShutterRetracted ACCESS ADR(p_bInShutterRetracted2);
							ELSE //shutter1
								p_eLocalInletPneuAct ACCESS ADR(eInletPneuAct);
								p_eLocalInletPneuStat ACCESS ADR(p_eInletPneuStat);
								p_eLocalInletPneuStatus ACCESS ADR(p_eInletPneuStatus);
								p_bLocalInletPneuCls ACCESS ADR(p_bInletPneuCls);
								p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended);
								p_bLocalnShutterRetracted ACCESS ADR(p_bInShutterRetracted);
							END_IF
							
							usiLocalAccMag := 2;
							
							p_usiLocalFlushMag ACCESS ADR(usiLocalFlushMag2);
						ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod3);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy3);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct3);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat3);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus3);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy3);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting3);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart3);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop3);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy3);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting3);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport3);
						
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat3);

							IF p_bShutter3Prep THEN
								p_eLocalInletPneuAct ACCESS ADR(eInletPneuAct3);
								p_eLocalInletPneuStat ACCESS ADR(p_eInletPneuStat3);
								p_eLocalInletPneuStatus ACCESS ADR(p_eInletPneuStatus3);
								p_bLocalInletPneuCls ACCESS ADR(p_bInletPneuCls3);
								p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended3);
								p_bLocalnShutterRetracted ACCESS ADR(p_bInShutterRetracted3);
							ELSE //shutter1
								p_eLocalInletPneuAct ACCESS ADR(eInletPneuAct);
								p_eLocalInletPneuStat ACCESS ADR(p_eInletPneuStat);
								p_eLocalInletPneuStatus ACCESS ADR(p_eInletPneuStatus);
								p_bLocalInletPneuCls ACCESS ADR(p_bInletPneuCls);
								p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended);
								p_bLocalnShutterRetracted ACCESS ADR(p_bInShutterRetracted);
							END_IF
							usiLocalAccMag := 3;

							p_usiLocalFlushMag ACCESS ADR(usiLocalFlushMag3);
						ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod4);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy4);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct4);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat4);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus4);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy4);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting4);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart4);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop4);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy4);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting4);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport4);
							usiLocalAccMag := 4;

						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					ELSE
						eTravLifPosGo	:= TravLifLDPosInvalid;
						//p_bLocalInShutterExtended ACCESS ADR(p_bInShutterExtended);
						a_bRlsMagBtn[1]:=FALSE;
						a_bRlsMagBtn[2]:=FALSE;
						a_bRlsMagBtn[3]:=FALSE;
						
						bPaused	:= p_bStop;
					END_IF
					
					
				TravLifLDStep1PreEntTravLifMov:
					sStepTxt	:= 'Moving Traverser And Lifter To Pre-Enter Position';
					bSkipCloseOutletShutter := FALSE;
					IF p_bProdRcpCurrRcpTopToBtm THEN
						
						IF p_diBufferNxtUnloadSlt1 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt1 + diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt1	:= p_diPullerExtMaxSlt;
							ELSE
								IF diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 + diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 + 4;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt2 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt2 + diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt2	:= p_diPullerExtMaxSlt;
							ELSE
								IF diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 + diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 + 4;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt3 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt3 + diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt3	:= p_diPullerExtMaxSlt;
							ELSE
								IF diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 + diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 + 4;
								END_IF
								
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt4 >= p_diPullerExtMaxSlt THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt4 + diProdRcpCurrRcpPitch) > p_diPullerExtMaxSlt THEN
								diGoUnloadSlt4	:= p_diPullerExtMaxSlt;
							ELSE
								IF diProdRcpCurrRcpPitch <= 4 THEN
									diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 + diProdRcpCurrRcpPitch;
								ELSE
									diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 + 4;
								END_IF
								
							END_IF
						END_IF
					ELSE
					
						IF p_diBufferNxtUnloadSlt1 <= p_diPullerExtMinSlt AND eTravLifPosGo = TravLifLDPosUS1 THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt1 - diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt1	:= p_diPullerExtMinSlt;
							ELSE
								IF p_bNtParamAutoRcpPrep AND p_bHermesSvyPrep AND p_bMcParamHermesSvyEn THEN
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 - REAL_TO_DINT(ceil((p_tyAutoRcpMagRcp[1].rBottomClearanceHeight+3)/10));
								ELSE	
									diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1 - diProdRcpCurrRcpPitch;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt2 <= p_diPullerExtMinSlt AND eTravLifPosGo = TravLifLDPosUS2 THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt2 - diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt2	:= p_diPullerExtMinSlt;
							ELSE
								IF p_bNtParamAutoRcpPrep AND p_bHermesSvyPrep AND p_bMcParamHermesSvyEn THEN
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 - REAL_TO_DINT(ceil((p_tyAutoRcpMagRcp[2].rBottomClearanceHeight+3)/10));
								ELSE
									diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2 - diProdRcpCurrRcpPitch;
								END_IF
								
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt3 <= p_diPullerExtMinSlt AND eTravLifPosGo = TravLifLDPosUS3 THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt3 - diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt3	:= p_diPullerExtMinSlt;
							ELSE
								IF p_bNtParamAutoRcpPrep AND p_bHermesSvyPrep AND p_bMcParamHermesSvyEn THEN
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 - REAL_TO_DINT(ceil((p_tyAutoRcpMagRcp[3].rBottomClearanceHeight+3)/10));
								ELSE
									diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3 - diProdRcpCurrRcpPitch;
								END_IF
							END_IF
						END_IF
						
						IF p_diBufferNxtUnloadSlt4 <= p_diPullerExtMinSlt AND eTravLifPosGo = TravLifLDPosUS4 THEN
							eStatus		:= Error;
							udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
						ELSE
							IF (p_diBufferNxtUnloadSlt4 - diProdRcpCurrRcpPitch) < p_diPullerExtMinSlt THEN
								diGoUnloadSlt4	:= p_diPullerExtMinSlt;
							ELSE
								diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4 - diProdRcpCurrRcpPitch;
							END_IF
						END_IF
					END_IF
					
					
					IF eTravLifPosGo = TravLifLDPosUS1 THEN
						eLifAct		:= LifterActGoASltPos;
						eTravAct	:= TravActGoAPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
						eLifAct		:= LifterActGoBSltPos;
						eTravAct	:= TravActGoBPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
						eLifAct		:= LifterActGoCSltPos;
						eTravAct	:= TravActGoCPos;			
					
					ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
						eLifAct		:= LifterActGoDSltPos;
						eTravAct	:= TravActGoGPos;			
						
					ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
						eGotoOpsStep1	:= TravLifLDStep1USSigWait;
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoAPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoBPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoCPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos)) 
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoGPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoDSltPos))
						THEN
						
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						IF p_sLinkProdRcpCurrRcp0Nm = p_sLinkProdRcpCurrRcp2Nm OR (p_eNtParamCustomerReq = We_Fabricate  AND p_bMcParamMesRFIDEn) THEN
							eGotoOpsStep1	:= TravLifLDStep1USSigRechk;
						ELSE
							IF bDualLaneMode = FALSE THEN
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
								bLocalDSRdy1Set := FALSE;
								bLocalDSRdy2Set := FALSE;
							END_IF
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
				
				
				TravLifLDStep1EntTraLifMovRotCyl:
					sStepTxt	:= 'Moving Traverser And Lifter To Enter Position';
					bBypCurtainWidthChg := FALSE;
					bSkipCloseOutletShutter := FALSE;
					diPullerExtMinSlt := REAL_TO_DINT(DINT_TO_REAL(p_diNtParamPullerHeightInMM)*1000/DINT_TO_REAL(p_diSltToSltDist)-1);
					
					IF p_bProdRcpCurrRcpTopToBtm = FALSE THEN
						IF a_bPosAllwSigOn[1] THEN
							IF p_diBufferNxtUnloadSlt1 < diPullerExtMinSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1;
							END_IF
						END_IF
						
						IF a_bPosAllwSigOn[2] THEN
							IF p_diBufferNxtUnloadSlt2 < diPullerExtMinSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2;
							END_IF
						END_IF
						
						IF a_bPosAllwSigOn[3] THEN
							IF p_diBufferNxtUnloadSlt3 < diPullerExtMinSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3;
							END_IF
						END_IF
						
						IF a_bPosAllwSigOn[4] THEN
							IF p_diBufferNxtUnloadSlt4 < diPullerExtMinSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4;
							END_IF
						END_IF
					ELSE
		
							IF p_diBufferNxtUnloadSlt1 >= p_diPullerExtMaxSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1;
							END_IF
					
						
							IF p_diBufferNxtUnloadSlt2 >= p_diPullerExtMaxSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2;
							END_IF
				
						
							IF p_diBufferNxtUnloadSlt3 >= p_diPullerExtMaxSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3;
							END_IF
								
						
							IF p_diBufferNxtUnloadSlt4 >= p_diPullerExtMaxSlt THEN
								eStatus		:= Error;
								udiStatus	:= 10001;	//Traverser And Lifter Pre-Enter Position Are Invalid
							ELSE
								diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4;
							END_IF
								
					END_IF
					
					IF eTravLifPosGo = TravLifLDPosUS1 THEN
						eLifAct		:= LifterActGoASltPos;
						eTravAct	:= TravActGoAPos;
	
					ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
						eLifAct		:= LifterActGoBSltPos;
						eTravAct	:= TravActGoBPos;
	
					ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
						eLifAct		:= LifterActGoCSltPos;
						eTravAct	:= TravActGoCPos;			

					ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
						eLifAct		:= LifterActGoDSltPos;
						eTravAct	:= TravActGoGPos;			
	
					ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
						eGotoOpsStep1	:= TravLifLDStep1USSigWait;
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoAPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoBPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoCPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos)) 
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoGPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoDSltPos))
						OR tTravLiftInPos.Q
						THEN
						
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						IF p_sLinkProdRcpCurrRcp0Nm = p_sLinkProdRcpCurrRcp2Nm OR (p_eNtParamCustomerReq = We_Fabricate AND p_bMcParamMesRFIDEn) THEN
							IF p_bLinkProjLifterMagPlatform THEN
								eGotoOpsStep1	:= TravLifLDStep1USSigRechk;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1InletPneuOpn;
							END_IF
						ELSE
							IF bDualLaneMode = FALSE THEN
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
								bLocalDSRdy1Set := FALSE;
								bLocalDSRdy2Set := FALSE;
							END_IF
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
				
				
					IF eTravLifPosGo = TravLifLDPosUS1
						OR eTravLifPosGo = TravLifLDPosUS2 
						OR eTravLifPosGo = TravLifLDPosUS3
						OR eTravLifPosGo = TravLifLDPosUS4
						THEN
						tTravLiftInPos(IN:= p_bTravPosDiff = FALSE AND p_bLifterBtmPosDiff = FALSE AND p_bCurtainSenPrep);
						IF tTravLiftInPos.Q THEN
							//	eInletPneuAct	:= PneuActRet;
							p_eLocalInletPneuAct := PneuActRet;
							bTravLifInDSPos := TRUE;
						END_IF
					END_IF
					
				TravLifLDStep1USSigRechk:
					sStepTxt	:= 'Rechecking Upstream Signal';
			
					IF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff THEN
						eGotoOpsStep1	:= TravLifLDStep1AWMov;
					ELSIF p_bUSAllow = FALSE AND bDualLaneMode = FALSE THEN
						eGotoOpsStep1	:= TravLifLDStep1USSigWait;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						eGotoOpsStep1	:= TravLifLDStep1InletPneuOpn;
					ELSE
						IF p_bLocalUSRdy = TRUE THEN
							eGotoOpsStep1	:= TravLifLDStep1InletPneuOpn;
						ELSE
							IF bDualLaneMode = FALSE THEN
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
//								bLocalDSRdy1Set := FALSE;
//								bLocalDSRdy2Set := FALSE;
//								eGotoOpsStep1	:= TravLifLDStep1InletPneuOpn;
							END_IF
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStep1InletPneuOpn:
					sStepTxt	:= 'Opening Inlet Pneumatic';
					
				IF (((p_diMinSlt = p_diBufferNxtUnloadSlt1 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
					(p_diMaxSlt = p_diBufferNxtUnloadSlt1 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS1)
					OR (((p_diMinSlt = p_diBufferNxtUnloadSlt2 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
					(p_diMaxSlt = p_diBufferNxtUnloadSlt2 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS2)
					OR (((p_diMinSlt = p_diBufferNxtUnloadSlt3 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
						(p_diMaxSlt = p_diBufferNxtUnloadSlt3 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS3) THEN
						bMagWidthChked := FALSE; //mag width checking
					END_IF
					
				//	eInletPneuAct	:= PneuActRet;
					
//					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActRet THEN
//						eInletPneuAct	:= PneuActIdle;
					p_eLocalInletPneuAct := PneuActRet;	
					IF p_eLocalInletPneuStat = PneuActRet AND p_eLocalInletPneuStatus = Done THEN
						p_eLocalInletPneuAct := PneuActIdle;	
//						eGotoOpsStep1	:= TravLifLDStep1USSigRechkTwice;
						IF p_tyDISettings.diMagWidthChkSen >0 AND bMagWidthChked = FALSE AND p_bMagWidthChkDis = FALSE THEN //width check enabled
							eGotoOpsStep1	:= TravLifLDStep1USMagWidthChk;
						ELSE 
							IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
								eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1EntBrd;
							END_IF
						END_IF
						IF a_bRlsMagBtn[1] OR a_bRlsMagBtn[2] OR a_bRlsMagBtn[3] THEN
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
						END_IF
							
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagPlat_Step1InletPneuOpn:
					sStepTxt	:= 'Opening Inlet Pneumatic';
				
					eInletPneuAct	:= PneuActRet;
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActRet THEN
						eInletPneuAct	:= PneuActIdle;
						eGotoOpsStep1	:= TravLifLDStep1USSigRechkTwice;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStep1USSigRechkTwice:
					sStepTxt	:= 'Rechecking Upstream Signal Twice';
					
					IF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
						eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						
						//Non-Buffer Mode
						IF p_bNonBffrMod = TRUE THEN
							IF (NOT(tyParamTravLif.a_bDSDis[1]) AND bLocalDSRdy1) 
								OR (NOT(tyParamTravLif.a_bDSDis[2]) AND bLocalDSRdy2) 
								OR (NOT(tyParamTravLif.a_bDSDis[3]) AND bLocalDSRdy3) 
								THEN
								IF p_tyDISettings.diMagWidthChkSen = 0 THEN
									eGotoOpsStep1	:= TravLifLDStep1USComm;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1USMagWidthChk;
								END_IF
								
								bPaused	:= p_bStop OR p_bStep;
							ELSE
								bPaused	:= p_bStop;
							END_IF
						ELSE
							IF p_tyDISettings.diMagWidthChkSen = 0 THEN
								eGotoOpsStep1	:= TravLifLDStep1USComm;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1USMagWidthChk;
							END_IF
							
								
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					ELSE
						
						IF p_bLocalUSRdy = TRUE THEN
							//Non-Buffer Mode
							IF p_bNonBffrMod = TRUE THEN
								IF (NOT(tyParamTravLif.a_bDSDis[1]) AND bLocalDSRdy1) 
									OR (NOT(tyParamTravLif.a_bDSDis[2]) AND bLocalDSRdy2) 
									OR (NOT(tyParamTravLif.a_bDSDis[3]) AND bLocalDSRdy3) THEN
									IF p_tyDISettings.diMagWidthChkSen = 0 THEN
										eGotoOpsStep1	:= TravLifLDStep1USComm;
									ELSE
										eGotoOpsStep1	:= TravLifLDStep1USMagWidthChk;
									END_IF
									
									bPaused	:= p_bStop OR p_bStep;
								ELSE
									bPaused	:= p_bStop;
								END_IF
							ELSE
								IF p_tyDISettings.diMagWidthChkSen = 0 THEN
									eGotoOpsStep1	:= TravLifLDStep1USComm;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1USMagWidthChk;
								END_IF
								bPaused	:= p_bStop OR p_bStep;
							END_IF
							
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					END_IF
				
					
				TravLifLDStep1USMagWidthChk:
					sStepTxt	:= 'Checking Magazine Width';
					
//					fbWidthChkSenOnTim(IN:= p_bMagWidthChkSenOn);
//					fbWidthChkSenOffTim(IN:= p_bMagWidthChkSenOn = FALSE);
//					IF fbWidthChkSenOnTim.Q THEN
//						//eGotoOpsStep1	:= TravLifLDStep1USComm;
//						bMagWidthChked := TRUE;
//						IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
//							eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
//						ELSE
//							eGotoOpsStep1	:= TravLifLDStep1EntBrd;
//						END_IF
//					ELSIF fbWidthChkSenOffTim.Q THEN
//						eGotoOpsStep1	:= TravLifLDStep1MagWidthErr;
//					END_IF
//					bPaused	:= p_bStop OR p_bStep;
					
					IF (((p_diMinSlt = p_diBufferNxtUnloadSlt1 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
						(p_diMaxSlt = p_diBufferNxtUnloadSlt1 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS1)
						OR (((p_diMinSlt = p_diBufferNxtUnloadSlt2 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
						(p_diMaxSlt = p_diBufferNxtUnloadSlt2 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS2)
						OR (((p_diMinSlt = p_diBufferNxtUnloadSlt3 AND NOT p_bProdRcpCurrRcpTopToBtm) OR  
						(p_diMaxSlt = p_diBufferNxtUnloadSlt3 AND p_bProdRcpCurrRcpTopToBtm)) AND eTravLifPosGo = TravLifLDPosUS3) THEN
						
						bMagWidthChk := TRUE;
					END_IF
					//new design: sensor (off, on, off) -passed.
					IF bMagWidthChk THEN
					
						CASE usiMagWidthChkStep OF
							
							0: 
								IF NOT p_bMagWidthChkSenOn THEN //DI
									
									bTravGoToChkPt := TRUE; //output
									usiMagWidthChkStep := 1;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1MagWidthErr;
								END_IF
								
								bPaused		:= p_bStop OR p_bStep;
								
							1: 
								IF eTravLifPosGo = TravLifLDPosUS1 THEN // With Check Point Offset mm - The Calculated Value Can be found in Traverser Package Act_Link:
									eTravAct	:= TravActGoAPos;
								ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
									eTravAct	:= TravActGoBPos;
								ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
									eTravAct	:= TravActGoCPos;
								END_IF
								
								IF (p_eTravStat = TravActGoAPos OR p_eTravStat = TravActGoBPos OR p_eTravStat = TravActGoCPos) AND p_eTravStatus = Done THEN
									eTravAct	:= TravActIdle;
									bTravGoToChkPt := FALSE;
									
									IF p_bMagWidthChkSenOn THEN
										usiMagWidthChkStep := 2;
									ELSE
										eGotoOpsStep1	:= TravLifLDStep1MagWidthErr;
									END_IF
									
									bPaused		:= p_bStop OR p_bStep;
								END_IF
								
							2: 
								IF eTravLifPosGo = TravLifLDPosUS1 THEN //Without Check Point Offset mm - Coming Back To Original Pos
									eTravAct	:= TravActGoAPos;
								ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
									eTravAct	:= TravActGoBPos;
								ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
									eTravAct	:= TravActGoCPos;
								END_IF
								
								IF (p_eTravStat = TravActGoAPos OR p_eTravStat = TravActGoBPos OR p_eTravStat = TravActGoCPos) AND p_eTravStatus = Done THEN
									
									IF NOT p_bMagWidthChkSenOn THEN
									//	eGotoOpsStep		:= TravLifLDStepUSComm;
										bMagWidthChked := TRUE;
										eTravAct	:= TravActIdle;
										IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
											eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
										ELSE
											eGotoOpsStep1	:= TravLifLDStep1EntBrd;
										END_IF
										usiMagWidthChkStep  := 0;
										bMagWidthChk		:= FALSE;
									ELSE
										eGotoOpsStep1		:= TravLifLDStep1MagWidthErr;
									END_IF	
									
									bPaused		:= p_bStop OR p_bStep;
								END_IF
						END_CASE
					ELSE
						IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1EntBrd;
						END_IF
						bPaused		:= p_bStop OR p_bStep;
					END_IF	
					
				TravLifLDStep1USComm:
					sStepTxt	:= 'Communicating Upstream Machine';
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							p_eLocalUSSMEMAAct	:= SMEMAActRun;
							
							IF p_bLocalUSSMEMATransporting = TRUE THEN
								IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
									eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1EntBrd;
								END_IF
							ELSIF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
								p_eLocalUSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep1		:= TravLifLDStep1InletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
									bPaused	:= p_bStop;
									
									IF bPaused = TRUE THEN
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
									END_IF
									
								ELSE
									
									IF p_bLocalUSRdy = FALSE THEN
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										eGotoOpsStep1		:= TravLifLDStep1InletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
										
										IF bPaused = TRUE THEN
											p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										END_IF
									END_IF
									
								END_IF
								
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalUSHermesTransporting = TRUE THEN
								IF p_bLinkNtParamProjRotCylPrep = FALSE THEN
									eGotoOpsStep1	:= TravLifLDStep1EntPullerExt;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1EntBrd;
								END_IF
								
							ELSIF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
								eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
									bPaused	:= p_bStop;
									
								ELSE
									
									IF p_bLocalUSRdy = FALSE THEN
										eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
				
					
				TravLifLDStep1EntPullerExt:
					sStepTxt	:= 'Puller Extending';
					
				//	ePullerAct	:= PneuActExt;
					
//					IF p_ePullerStatus = Done AND p_ePullerStat = PneuActExt THEN
//							ePullerAct		:= PneuActIdle;
//							eGotoOpsStep1	:= TravLifLDStep1EntTravLifMov;
//					END_IF
					
					eConvAct := ConvActPullerExt;
					IF (p_eConvStatus = Done AND p_eConvStat = ConvActPullerExt)
						THEN
						eConvAct := ConvActIdle;
						IF p_bLinkProjLifterMagPlatform = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1EntTravLifMov;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1EntPullerRetWait;
						END_IF	
					END_IF
					
					
				TravLifLDStep1EntPullerRetWait:
					sStepTxt	:= 'Waiting For Puller Retract';
					
					IF p_bPullerNoRotCylStartPull THEN
						eGotoOpsStep1	:= TravLifLDStep1EntBrd;
					END_IF
					
					
				TravLifLDStep1EntTravLifMov:
					sStepTxt	:= 'Moving Traverser And Lifter To Enter Position';
					
					diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1;
					diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2;
					diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3;
					diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4;
					
					IF eTravLifPosGo = TravLifLDPosUS1 THEN	
						eLifAct		:= LifterActGoASltPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosUS2 THEN
						eLifAct		:= LifterActGoBSltPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosUS3 THEN
						eLifAct		:= LifterActGoCSltPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosUS4 THEN
						eLifAct		:= LifterActGoDSltPos;	
						
					ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
						eStatus		:= Error;
						udiStatus	:= 10002;	//Traverser And Lifter Enter Position Are Invalid
						
					END_IF
					

					IF (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos)
					    OR (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos)
						OR (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos)
						OR (p_eLifStatus = Done AND p_eLifStat = LifterActGoDSltPos)
						THEN					
						eLifAct		:= LifterActIdle;
						
						eGotoOpsStep1	:= TravLifLDStep1EntBrd;
					//	p_eLocalUSSMEMAAct	:= SMEMAActRun;
					END_IF
					
				TravLifLDStep1EntBrd:
					
					IF p_bPullerExtSen THEN
						bPullerHadExtended := TRUE;
					END_IF
					IF p_bMCSelfTest = FALSE THEN
						IF (p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL)
							AND p_bConvLftSen 
							THEN
							bConvInSenOnSet := TRUE;
						ELSIF (p_eConvDir = ConvDirRToL OR p_eConvDir = ConvDirRToR)
							AND p_bConvRgtSen
							THEN
							bConvInSenOnSet := TRUE;
						END_IF
					ELSE
						bConvInSenOnSet := TRUE;
					END_IF
					
					//Indivudual shutter check
					IF p_bTravAPosDiff = FALSE THEN
						bInShutterClo := p_bInletPneuCls;
					ELSIF p_bTravBPosDiff = FALSE THEN
						bInShutterClo := p_bInletPneuCls2;
					ELSIF p_bTravCPosDiff = FALSE THEN
						bInShutterClo := p_bInletPneuCls3;
					END_IF
					
					//Switch To Inlet Pneu Close
					//Inlet Sensor Clear & Puller Cylinder Retracted
					IF (p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL) AND bPullerHadExtended THEN
						IF NOT p_bConvLftSen AND p_bPullerRetSen AND NOT bInShutterClo AND (bConvInSenOnSet OR p_bPullerRetSen) THEN
							
							IF bConvInSenOnSet THEN
								bBrdOnSen		:= TRUE;
								bConvInSenOnSet := FALSE;
							END_IF
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
							//	eInletPneuAct	:= PneuActExt;
//							IF p_tyLocalBufferStat.bBffrMty THEN
//								p_eLocalInletPneuAct := PneuActExt;		//JOHN - Shorten Cycle Time
//							END_IF
							bPullerHadExtended := FALSE;
						END_IF
					ELSIF (p_eConvDir = ConvDirRToL OR p_eConvDir = ConvDirRToR) AND bPullerHadExtended THEN
						IF NOT p_bConvRgtSen AND p_bPullerRetSen AND NOT bInShutterClo AND (bConvInSenOnSet OR p_bPullerRetSen) THEN
							IF bConvInSenOnSet THEN
								bBrdOnSen		:= TRUE;
								bConvInSenOnSet := FALSE;
							END_IF
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
							//	eInletPneuAct	:= PneuActExt;
//							IF p_tyLocalBufferStat.bBffrMty THEN
//								p_eLocalInletPneuAct := PneuActExt;		//JOHN - Shorten Cycle Time
//							END_IF
							bPullerHadExtended := FALSE;
						END_IF
					END_IF
					

					sStepTxt	:= 'Puller Conveyor Entering Board';
					
					eConvAct	:= ConvActEntPuller;				
							
					IF (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) 
				
						THEN
						IF bInShutterClo = FALSE THEN
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
						ELSE
							bBrdOnSen			:= FALSE;
							eConvAct			:= ConvActIdle;
					//		ePullerAct			:= PneuActIdle;
							eGotoOpsStep1		:= TravLifLDStep1DSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
								
						
					
					//Magazine Not Present
					IF p_bMagTransferBrd1 AND NOT p_bBufferMagPresent1 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd2 AND NOT p_bBufferMagPresent2 AND NOT p_bInletPneuCls2 THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd3 AND NOT p_bBufferMagPresent3 AND NOT p_bInletPneuCls3 THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd4 AND NOT p_bBufferMagPresent4 AND NOT p_bInletPneuCls THEN //to dev
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					END_IF
					
				MagPlat_Step1EntBrd:
					
					IF p_bPullerExtSen THEN
						bPullerHadExtended := TRUE;
					END_IF
					//Switch To Inlet Pneu Close
					//Inlet Sensor Clear & Puller Cylinder Retracted
					IF (p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL) AND bPullerHadExtended THEN
						IF NOT p_bConvLftSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
							bBrdOnSen		:= TRUE;
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
							eInletPneuAct	:= PneuActExt;
							bPullerHadExtended := FALSE;
						END_IF
					ELSIF (p_eConvDir = ConvDirRToL OR p_eConvDir = ConvDirRToR) AND bPullerHadExtended THEN
						IF NOT p_bConvRgtSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
							bBrdOnSen		:= TRUE;
							eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
							eInletPneuAct	:= PneuActExt;
							bPullerHadExtended := FALSE;
						END_IF
					END_IF
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							IF p_bLocalUSSMEMATransporting = FALSE THEN
								eConvAct	:= ConvActStopPuller;
//bnd							ePullerAct	:= PneuActRet;
								
								IF (p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller)
									//	AND (p_ePullerStatus = Done AND p_ePullerStat = PneuActRet) 
									THEN
									bBrdOnSen			:= FALSE;
									eConvAct			:= ConvActIdle;
									//	ePullerAct			:= PneuActIdle;
									p_eLocalUSSMEMAAct	:= SMEMAActIdle;
									eGotoOpsStep1		:= TravLifLDStep1InletPneuCls;
									
									bPaused	:= p_bStop OR p_bStep;
								END_IF
								
							ELSE
								
								IF p_bLocalUSSMEMAConvStart THEN
									sStepTxt	:= 'Puller Conveyor Entering Board';
									
									eConvAct	:= ConvActEntPuller;
									//	ePullerAct	:= PneuActRet;
								END_IF
									
								IF p_bLocalUSSMEMAConvStop THEN
									sStepTxt	:= 'Puller Conveyor Stopping';
									
									eConvAct	:= ConvActStopPuller;
									//	ePullerAct	:= PneuActRet;
								END_IF
								
								IF (p_eLocalUSSMEMAStatus = Done AND p_eLocalUSSMEMAStat = SMEMAActRun) 
									AND (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) 
									//	AND (p_ePullerStatus = Done AND p_ePullerStat = PneuActRet) 
									THEN
									IF p_bInletPneuCls = FALSE THEN
										eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
									ELSE
										bBrdOnSen			:= FALSE;
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										eConvAct			:= ConvActIdle;
										//		ePullerAct			:= PneuActIdle;
										eGotoOpsStep1		:= TravLifLDStep1DSSigWait;
									END_IF
									
									bPaused	:= p_bStop OR p_bStep;
								END_IF
								
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalUSHermesTransporting = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Entering Board';
								eConvAct	:= ConvActEntPuller;
								//		ePullerAct	:= PneuActRet;
							END_IF
							
							IF p_bLocalUSHermesStopTransport = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Stopping';
								eConvAct	:= ConvActStopPuller;
							//	ePullerAct	:= PneuActRet;
							END_IF
							
							IF p_bLocalUSHermesTransporting = FALSE THEN
								
								IF (p_eConvStat = ConvActStopPuller) 
								//	AND (p_ePullerStat = PneuActRet) 
									THEN
									
									IF (p_eConvStatus = Done) 
								//		AND (p_ePullerStatus = Done) 
										THEN
										bBrdOnSen		:= FALSE;
										eConvAct		:= ConvActIdle;
								//		ePullerAct		:= PneuActIdle;
										eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								ELSIF (p_eConvStat = ConvActEntPuller) 
								//	AND (p_ePullerStat = PneuActRet) 
									THEN
									
									IF (p_eConvStatus = Done) 
									//	AND (p_ePullerStatus = Done) 
										THEN
										IF p_bInletPneuCls = FALSE THEN
											eGotoOpsStep1	:= TravLifLDStep1InletPneuCls;
										ELSE
											bBrdOnSen		:= FALSE;
											eConvAct		:= ConvActIdle;
								//			ePullerAct		:= PneuActIdle;
											eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
										END_IF
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
					//Magazine Not Present
					IF p_bMagTransferBrd1 AND NOT p_bBufferMagPresent1 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd2 AND NOT p_bBufferMagPresent2 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd3 AND NOT p_bBufferMagPresent3 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					ELSIF p_bMagTransferBrd4 AND NOT p_bBufferMagPresent4 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep1	:= TravLifLDStep1TranInErr;
					END_IF
					
				TravLifLDStep1InletPneuCls:
					sStepTxt	:= 'Closing Inlet Pneumatic';
					IF p_bCurtainSenPrep = FALSE OR bBypCurtainSenCtrl THEN //standard:(shutter close and move)
						p_eLocalInletPneuAct	:= PneuActExt;
					END_IF
					
					IF (p_eLocalInletPneuStatus = Done AND p_eLocalInletPneuStat = PneuActExt) AND p_bCurtainSenPrep = FALSE THEN
						p_eLocalInletPneuAct := PneuActIdle;
					ELSIF (p_eLocalInletPneuStatus = Done AND p_eLocalInletPneuStat = PneuActExt) AND bBypCurtainSenCtrl THEN	//JOHN2
						p_eLocalInletPneuAct := PneuActIdle;
					ELSIF p_tyLocalBufferStat.bBffrMty THEN //the timing of calling empty buffer shutter close can be in this step or US signal Wait
						bMagWidthChked := FALSE; 
						p_eLocalInletPneuAct := PneuActExt;		//JOHN - Shorten Cycle Time 
//						p_eLocalInletPneuAct := PneuActIdle;	//JOHN - Shorten Cycle Time									
					END_IF
					IF (p_eLocalInletPneuStat = PneuActExt AND p_eLocalInletPneuStatus = Done)
						//OR p_bLocalInShutterExtended 
						OR (p_tyLocalBufferStat.bBffrMty = FALSE AND bBypCurtainSenCtrl= FALSE AND p_bCurtainSenPrep) THEN //extended == close, NO mty w/ no byp curtain
																
						p_eLocalInletPneuAct := PneuActIdle;
					//	eInletPneuAct	:= PneuActIdle;
					//	eConvAct	:= ConvActEntPuller;				
							
						IF (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) THEN
						
							bBrdOnSen			:= FALSE;
							eConvAct			:= ConvActIdle;
					//		ePullerAct			:= PneuActIdle;
							eGotoOpsStep1		:= TravLifLDStep1DSSigWait;
							bPaused	:= p_bStop OR p_bStep;
						ELSIF bBrdOnSen AND p_bPullerRotHmRS THEN
							bBrdOnSen			:= FALSE;
							eGotoOpsStep1		:= TravLifLDStep1DSSigWait;
						ELSIF p_bConvHvBrd = FALSE THEN
							bBrdOnSen			:= FALSE;
							eConvAct			:= ConvActIdle;
						
							IF p_bMagTransferBrd1 = FALSE 
							AND p_bMagTransferBrd2 = FALSE
							AND p_bMagTransferBrd3 = FALSE
							AND p_bMagTransferBrd4 = FALSE
								THEN
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
							ELSE 
								eGotoOpsStep1	:= TravLifLDStep1USSigWait;
								
							END_IF
						END_IF	
						
						bPaused	:= p_bStop OR p_bStep;

					END_IF
					IF p_bConvHvBrd = FALSE THEN
						fbCTDPullLmt(CD:= TRUE);
						fbCTDPullLmt(CD:= FALSE);
						IF fbCTDPullLmt.Q = TRUE AND p_siCntrPullLmt <> -1 AND (p_eNtParamCustomerReq = Bosch_China OR p_eNtParamCustomerReq = Bosch_Portugal OR p_eNtParamCustomerReq = Bosch_America OR p_eNtParamCustomerReq = Bosch_Malaysia  )THEN
							IF p_eNtParamCustomerReq = Bosch_China THEN 
								eGotoOpsStep1	 :=	TravLifLDStep1ConvEntBrdLostErr;
							ELSE
								p_eLocalInletPneuAct := PneuActExt;
								p_usiLocalFlushMag := p_usiLocalFlushMag +1;
								IF p_eLocalInletPneuStatus = Done AND p_eLocalInletPneuStat = PneuActExt THEN
									p_eLocalInletPneuAct :=  PneuActIdle;
									eGotoOpsStep1	:= TravLifLDStep1USSigWait;
									fbCTDPullLmt(LOAD:= TRUE);
									fbCTDPullLmt(LOAD:= FALSE);
								END_IF
							END_IF
						ELSE
						END_IF
					END_IF
						
				MagPlat_Step1InletPneuCls:
					sStepTxt	:= 'Closing Inlet Pneumatic';
					eInletPneuAct	:= PneuActExt;
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt THEN
						eInletPneuAct	:= PneuActIdle;
						
						IF bBrdOnSen = FALSE THEN
							IF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff THEN
								eGotoOpsStep1	:= TravLifLDStep1AWMov;
							ELSE
								IF bDualLaneMode = FALSE THEN
									eGotoOpsStep1	:= TravLifLDStep1USSigWait;
								
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;

								END_IF
							END_IF
					
							bPaused	:= p_bStop OR p_bStep;
						ELSE

							eGotoOpsStep1	:= TravLifLDStep1EntBrd;
						
						END_IF
						
					END_IF
	
					
				TravLifLDStep1DSSigWait:
					sStepTxt	:= 'Waiting For Downstream Signal';
					
					
//					a_bPosAllwSigOn[1]	:= bLocalDSRdy1 AND bLocalDSRdy2Set = FALSE;
//					a_bPosAllwSigOn[2]	:= bLocalDSRdy2 AND bLocalDSRdy1Set = FALSE;
//					a_bPosAllwSigOn[3]	:= bLocalDSRdy3;
				
					IF bDualLaneMode THEN
						a_bPosAllwSigOn[1]	:= bLocalDSRdy1Set;
						a_bPosAllwSigOn[2]	:= bLocalDSRdy2Set;
					ELSE
						a_bPosAllwSigOn[1]	:= bLocalDSRdy1 AND bLocalDSRdy2Set = FALSE;
						a_bPosAllwSigOn[2]	:= bLocalDSRdy2 AND bLocalDSRdy1Set = FALSE;
						a_bPosAllwSigOn[3]	:= bLocalDSRdy3;
					END_IF
				
			
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
			
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiDSPriority[udi];
						//Enable
						IF tyParamTravLif.a_bDSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
				
					END_FOR
			
					udiPosAllwGo	:= 99;
			
					FOR udi := 1 TO 3 DO
						//Enable + Signal Allow
						IF a_udiPosAllwSum[udi] >= 3000 THEN
					
							IF udiPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiPosAllwGo] THEN
									udiPosAllwGo	:= udi;
								END_IF
							ELSE
								udiPosAllwGo	:= udi;
							END_IF
					
						END_IF
				
					END_FOR
			
					IF udiPosAllwGo = 99 THEN
				
						FOR udi := 1 TO 3 DO
							//Enable (Single Output)
							IF a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 THEN
						
								IF udiPosAllwGo = 99 THEN
									udiPosAllwGo	:= udi;
								ELSE
									udiPosAllwGo	:= 99;
									EXIT;
								END_IF
						
							END_IF
					
						END_FOR
				
					END_IF
			
					IF (p_bDSAllow = TRUE) AND (udiPosAllwGo <> 99) AND p_bGotoStandby = FALSE THEN
						eTravLifPosGo	:= udiPosAllwGo + 3;
		
						IF bSkipCloseOutletShutter THEN
							eGotoOpsStep1	:= TravLifLDStep1DSSigRechk;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1ExitTravLifMov;
						END_IF
				
						IF eTravLifPosGo = TravLifLDPosDS1 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod1);
					
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy1);
					
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct1);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat1);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus1);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy1);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart1);
					
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy1);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting1);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport1);
					
					
						ELSIF eTravLifPosGo = TravLifLDPosDS2 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod2);
					
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy2);
					
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct2);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat2);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus2);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy2);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart2);
					
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy2);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting2);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport2);
					
					
						ELSIF eTravLifPosGo = TravLifLDPosDS3 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod3);
					
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy3);
					
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct3);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat3);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus3);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy3);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart3);
					
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy3);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting3);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport3);
					
			
						END_IF
				
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF p_bGotoStandby THEN
						eGotoOpsStep1	:= TravLifLDStep1Standby;
						
					ELSE
						eTravLifPosGo	:= TravLifLDPosInvalid;
				
						bPaused	:= p_bStop;
					END_IF
					

				TravLifLDStep1ExitTravLifMov:
					sStepTxt	:= 'Moving Traverser And Lifter To Exit Position';
					//safety check
					IF p_bPullerRetSen = FALSE OR p_bPullerRotHmRS = FALSE THEN
						eStatus		:= Error;
						udiStatus	:= 10006; //'Traverser And Lifter Moving Invalid.'
					ELSIF  bBypCurtainSenCtrl AND NOT p_bLocalInShutterExtended THEN
						eGotoOpsStep1 := TravLifLDStep1InShutClsInt;
					ELSIF (p_bLocalInShutterExtended AND bBypCurtainSenCtrl) OR bBypCurtainSenCtrl = FALSE THEN
						IF eTravLifPosGo = TravLifLDPosDS1 THEN
							eTravAct	:= TravActGoDPos;
							eLifAct		:= LifterActGoAPos;
							
						ELSIF eTravLifPosGo = TravLifLDPosDS2 THEN
							eTravAct	:= TravActGoEPos;
							eLifAct		:= LifterActGoBPos;
							
						ELSIF eTravLifPosGo = TravLifLDPosDS3 THEN
							eTravAct	:= TravActGoFPos;
							eLifAct		:= LifterActGoCPos;
							
						ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
							eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
							
							bPaused	:= p_bStop OR p_bStep;
							
						END_IF
						
						IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoDPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoAPos))
							OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoEPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBPos))
							OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoFPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCPos))
							OR tTravLiftInPos.Q
							THEN
							eTravAct	:= TravActIdle;
							eLifAct		:= LifterActIdle;
							
							eGotoOpsStep1	:= TravLifLDStep1DSSigRechk;
							
							bPaused	:= p_bStop OR p_bStep;
							
						END_IF
						
						IF eTravLifPosGo = TravLifLDPosDS1
							OR eTravLifPosGo = TravLifLDPosDS2 
							OR eTravLifPosGo = TravLifLDPosDS3
							
							THEN
							tTravLiftInPos(IN:= p_bTravPosDiff = FALSE AND p_bLifterBtmPosDiff = FALSE);
							IF tTravLiftInPos.Q THEN
								eOutletPneuAct	:= PneuActRet;
								bTravLifInDSPos := TRUE;
							END_IF
						END_IF
					END_IF
					
				TravLifLDStep1InShutClsInt:
					p_eLocalInletPneuAct 		:= PneuActExt;
					IF p_eLocalInletPneuStat = PneuActExt AND p_eLocalInletPneuStatus = Done THEN
						p_eLocalInletPneuAct 	:= PneuActIdle;
						eGotoOpsStep1 			:= TravLifLDStep1ExitTravLifMov;
					END_IF
					
						
				TravLifLDStep1DSSigRechk:
					sStepTxt	:= 'Rechecking Downstream Signal';
					IF NOT (p_bConvHvBrd) THEN //IF HvBrd Reset mean conveyor run completed and outlet sensor not sensing
						eGotoOpsStep1	:= TravLifLDStep1ConvEntBrdLostErr;
					ELSIF p_bDSAllow = FALSE THEN
						eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
						eGotoOpsStep1	:= TravLifLDStep1OutletPneuOpn;
					ELSE
						IF bDualLaneMode THEN
							eGotoOpsStep1	:= TravLifLDStep1OutletPneuOpn;
						ELSE
							IF p_bLocalDSRdy = TRUE AND p_bOutletShutPrep THEN
								eGotoOpsStep1	:= TravLifLDStep1OutletPneuOpn;
							ELSIF p_bLocalDSRdy = TRUE AND p_bOutletShutPrep = FALSE THEN //skip 3 steps 
								eGotoOpsStep1 	:= TravLifLDStep1DSComm;
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
							END_IF
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStep1OutletPneuOpn:
					sStepTxt	:= 'Opening Outlet Pneumatic';
					IF p_bOutShutter2Prep AND eTravLifPosGo = TravLifLDPosDS2 THEN
						eOutletPneuAct2	:= PneuActRet;
					ELSE
						eOutletPneuAct	:= PneuActRet;
					END_IF
					
					
					IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActRet) OR
						(p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActRet) THEN
						eOutletPneuAct	:= PneuActIdle;
						eOutletPneuAct2	:= PneuActIdle;

						IF bDualLaneMode THEN
							IF p_bDSAllow THEN
								eGotoOpsStep1	:= TravLifLDStep1DSComm;
							END_IF
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1DSSigRechkTwice;
						END_IF
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStep1DSSigRechkTwice:
					sStepTxt	:= 'Rechecking Downstream Signal Twice';
					
					IF p_bDSAllow = FALSE THEN
						eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
					//	eGotoOpsStep1	:= TravLifLDStep1DSComm;
						eGotoOpsStep1	:= TravLifLDStep1ChkRgtSenForDBAOn;
					ELSE
						IF p_bLocalDSRdy = TRUE THEN
							//	eGotoOpsStep1	:= TravLifLDStep1DSComm;
							eGotoOpsStep1	:= TravLifLDStep1ChkRgtSenForDBAOn;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStep1ChkRgtSenForDBAOn:
					sStepTxt	:= 'Board Trnsfer To Conveyor Outlet Sensor';
					IF (p_eConvDirection = ConvDirLToL OR p_eConvDirection = ConvDirRToL) THEN
						bReachedEnd	:= p_bLeftSen;
					ELSE
						bReachedEnd	:= p_bRightSen;
					END_IF
					
					
					IF p_bDBAOnRgtSen THEN 
						
						IF bReachedEnd = TRUE THEN
							bReachedEnd		:= FALSE;
							eGotoOpsStep1	:= TravLifLDStep1DSComm;
						END_IF
					
					ELSE			
							bReachedEnd		:= FALSE;
							eGotoOpsStep1	:= TravLifLDStep1DSComm;
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;

					
				TravLifLDStep1DSComm:
					sStepTxt	:= 'Communicating Downstream Machine';
					
					bWaitForDSTxBrd := TRUE;

					CASE p_eLocalDSCommMod OF
						McSetCommModSMEMA:
							p_eLocalDSSMEMAAct	:= SMEMAActRun;
									
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								eGotoOpsStep1	:= TravLifLDStep1ExitBrd;
								
							ELSIF p_bDSAllow = FALSE OR p_bConvHvBrd = FALSE THEN//bnd
								IF  (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) THEN //manually rmv brd
									eConvAct := ConvActIdle;
								END_IF
								p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep1		:= TravLifLDStep1OutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
									bPaused	:= p_bStop;
									
									IF bPaused = TRUE THEN
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
									END_IF
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE AND p_bConvHvBrd = FALSE 
										OR (p_bTravDPosDiff AND p_bTravEPosDiff)
										THEN //bnd
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
										eGotoOpsStep1		:= TravLifLDStep1OutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
										
										IF bPaused = TRUE THEN
											p_eLocalDSSMEMAAct	:= SMEMAActIdle;
										END_IF
									END_IF
									
								END_IF
								
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalDSHermesTransporting = TRUE THEN
								eGotoOpsStep1	:= TravLifLDStep1ExitBrd;
							ELSIF p_bGotoStandby THEN
								eGotoOpsStep1	:= TravLifLDStep1Standby;
							ELSIF p_bDSAllow = FALSE  OR p_bConvHvBrd = FALSE THEN//bnd
								eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
									
									bPaused	:= p_bStop;
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE AND p_bConvHvBrd = FALSE 
										OR (p_bTravDPosDiff AND p_bTravEPosDiff)
										THEN
										eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
	
				TravLifLDStep1ExitBrd:
					CASE p_eLocalDSCommMod OF
						McSetCommModSMEMA:
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Exiting Board';
							
								eConvAct	:= ConvActExit;
							END_IF
					
							IF (p_eLocalDSSMEMAStatus = Done AND p_eLocalDSSMEMAStat = SMEMAActRun) AND (p_eConvStatus = Done AND p_eConvStat = ConvActExit) THEN
								p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								eConvAct			:= ConvActIdle;
								eGotoOpsStep1		:= TravLifLDStep1OutletPneuCls;
						
								bPaused	:= p_bStop OR p_bStep;
							END_IF
					
						McSetCommModHermes:
							IF p_bLocalDSHermesTransporting = TRUE THEN
						
								IF p_bLocalDSHermesStopTransport = TRUE THEN
									sStepTxt	:= 'Puller Conveyor Stopping';
									eConvAct	:= ConvActStopPuller;
								ELSE
									sStepTxt	:= 'Pusher Conveyor Exiting Board';
									eConvAct	:= ConvActExit;
								END_IF
						
							ELSE
						
							IF p_bLocalDSHermesStopTransport = TRUE THEN
							
								eConvAct	:= ConvActStopPuller;
							
								IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller THEN
									eConvAct		:= ConvActIdle;
									eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
								
									bPaused	:= p_bStop OR p_bStep;
								END_IF
							
							ELSE
							
								eConvAct	:= ConvActExit;
							
								IF p_eConvStatus = Done AND p_eConvStat = ConvActExit THEN
									eConvAct		:= ConvActIdle;
									eGotoOpsStep1	:= TravLifLDStep1OutletPneuCls;
								
									bPaused	:= p_bStop OR p_bStep;
								END_IF
							
							END_IF
						
						END_IF
					
					END_CASE
			
				TravLifLDStep1OutletPneuCls:
					sStepTxt	:= 'Closing Outlet Pneumatic';
					IF p_bLifterAPosDiff = FALSE AND p_bOutShutterOpenRS OR (p_bOutShutterOpenRS2 AND p_tyDISettings.diOutShutterOpenRS2 <>0 )THEN
						IF p_bConvClrSen AND bOutletSafeToClo = FALSE THEN
							eGotoOpsStep1 := TravLifLDStep1OutletShutErr;
						ELSE
							bOutletSafeToClo := TRUE;
							eOutletPneuAct	:= PneuActExt;
							eOutletPneuAct2	:= PneuActExt;
						END_IF
					ELSIF bOutletSafeToClo THEN
						eOutletPneuAct	:= PneuActExt;
						eOutletPneuAct2	:= PneuActExt;
					ELSIF p_bOutletShutPrep AND p_bConvClrSen THEN
						eGotoOpsStep1 := TravLifLDStep1OutletShutErr;
					END_IF
					
					bWaitForDSTxBrd := FALSE;
					
					IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt AND 
						p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) OR (p_bOutletShutPrep = FALSE) THEN
						eOutletPneuAct	:= PneuActIdle;
						eOutletPneuAct2	:= PneuActIdle;
						bOutletSafeToClo := FALSE;
						IF p_bConvHvBrd = FALSE THEN
							IF bDualLaneMode = FALSE THEN
								IF p_bDSAllow = FALSE 
									OR p_bAWWidthPosDiff 
									OR p_bAWPushOrPullerWidthPosDiff 
								THEN
									eGotoOpsStep1	:= TravLifLDStep1AWMov;
								ELSE
									eGotoOpsStep1	:= TravLifLDStep1USSigWait;
								END_IF
							ELSE
								eGotoOpsStep1	:= TravLifLDStep1DSSigWait100;
							END_IF
								
							IF bLocalDSRdy1Set AND bLocalDSRdy2 THEN
								bLocalDSRdy1Set := FALSE;
								bLocalDSRdy2Set := TRUE;
							ELSIF bLocalDSRdy2Set AND bLocalDSRdy1 THEN
								bLocalDSRdy1Set := TRUE;
								bLocalDSRdy2Set := FALSE;
							ELSE
								bLocalDSRdy1Set := FALSE;
								bLocalDSRdy2Set := FALSE;
							END_IF
							//	eGotoOpsStep1	:= TravLifLDStep1AWMov;
							//bLocalDSRdy1Set := FALSE;
							//bLocalDSRdy2Set := FALSE;
						ELSE
							eGotoOpsStep1	:= TravLifLDStep1DSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStep1TranInErr:
					sStepTxt	:= 'Stopping Puller Conveyor';
					
					eConvAct	:= ConvActStopPuller;
				//	ePullerAct	:= PneuActRet;
					
					IF (p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller) 
				//		AND (p_ePullerStatus = Done AND p_ePullerStat = PneuActRet)
						THEN
						eConvAct	:= ConvActIdle;
				//		ePullerAct	:= PneuActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10000;	//Magazine Not Present While Pulling Board Out From Magazine
					END_IF
				
						
				TravLifLDStep1TranOutBrdStuckErr:
					sStepTxt	:= 'Stopping Puller Conveyor';
					tExitBoardTimoutErr(IN:= FALSE);
					eConvAct	:= ConvActStopPuller;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller THEN
						eConvAct	:= ConvActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10003;
					END_IF
						
				TravLifLDStep1MagWidthErr:
					bMagWidthChked := FALSE;
					sStepTxt	:= 'Magazine Width Detection Failed';
					eStatus		:= Error;
					udiStatus	:= 10004; //'Magazine Width Detection Failed'
				
				TravLifLDStep1OutletShutErr:
					eStatus		:= Error;
					udiStatus	:= 10007; //clear sensor interrupt Outlet shutter close
				TravLifLDStep1ConvEntBrdLostErr:
					eStatus		:= Error;
					udiStatus	:= 10008; //Board lost After Conveyor Run Completed 				
			END_CASE
			
		END_IF
		
	END_IF
	
	bInitConv		:= eOpsStep1 = TravLifLDStep1InitConv;
	bOpsInitDone	:= eOpsStep1 > TravLifLDStep1InitAWTravLif;
	bUSComm			:= eOpsStep1 = TravLifLDStep1USComm;
	bEntBrd			:= eOpsStep1 = TravLifLDStep1EntPullerExt OR eOpsStep1 = TravLifLDStep1EntTravLifMov OR eOpsStep1 = TravLifLDStep1EntBrd;
	bUpdatePullSlot	:= (eOpsStep1 = TravLifLDStep1InletPneuCls AND fbCTDPullLmt.Q <> TRUE) OR (eOpsStep1 = TravLifLDStep1InletPneuCls AND p_siCntrPullLmt = -1) ;
	bDSComm			:= eOpsStep1 = TravLifLDStep1DSComm;
	bExitBrd		:= eOpsStep1 = TravLifLDStep1ExitBrd;
	bStepAWPosDiff	:= eOpsStep1 = TravLifLDStep1DSSigWait AND p_bDSAllow = FALSE; 
	
	bUSMagWidthChk	:= eOpsStep1 = TravLifLDStep1USMagWidthChk;
	bTraLifMoving 	:= eOpsStep1 = TravLifLDStep1EntTraLifMovRotCyl OR eOpsStep1 = TravLifLDStep1EntTravLifMov OR eOpsStep1 = TravLifLDStep1ExitTravLifMov
						OR eOpsStep1 = TravLifLDStep1USMagWidthChk;
	bStandby		:= eOpsStep1 = TravLifLDStep1Standby;

END_ACTION
