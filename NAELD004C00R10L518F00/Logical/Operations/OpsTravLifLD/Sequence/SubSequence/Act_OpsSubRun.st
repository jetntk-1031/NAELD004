
ACTION Act_OpsSubRun: 
	
	(*Loader's Traverser & Lifter Layout*)
	(*
		Direction: -->> LEFT TO RIGHT -->>
		
	                                 +----------+
	                                 |          |
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
	
	Act_OpsCommSig;
	Act_OpsMod;
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF
				
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				TravLifLDStepInitConv:
					sStepTxt	:= 'Initializing Puller Conveyor';
					
					eConvAct	:= ConvActInitPuller;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActInitPuller THEN
						bBrdOnSen		:= FALSE;
						eConvAct		:= ConvActIdle;
						eGotoOpsStep	:= TravLifLDStepInitInOutPneuCls;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						//Switch To Init Inlet Pnue Close
						//Inlet Sensor Clear & Puller Cylinder Retracted
						IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN
							IF NOT p_bConvLftSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
								eGotoOpsStep1	:= TravLifLDStep1InitInletPneuCls;
							END_IF
						ELSE
							IF NOT p_bConvRgtSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
								eGotoOpsStep1	:= TravLifLDStep1InitInletPneuCls;
							END_IF
						END_IF
						
					END_IF
					
				TravLifLDStepInitInletPneuCls:
					sStepTxt	:= 'Initializing Inlet Pneumatic Closing';
					
					eInletPneuAct	:= PneuActExt;
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt THEN
						eInletPneuAct	:= PneuActIdle;
						eGotoOpsStep	:= TravLifLDStepInitConv;
					END_IF
					
				TravLifLDStepInitInOutPneuCls:
					sStepTxt	:= 'Initializing Inlet&Outlet Pneumatic Closing';
					
					eInletPneuAct	:= PneuActExt;
					eOutletPneuAct	:= PneuActExt;
					
					IF (p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt) AND (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) THEN
						eInletPneuAct	:= PneuActIdle;
						eOutletPneuAct	:= PneuActIdle;
						
						IF p_bConvHvBrd = FALSE THEN
							eGotoOpsStep	:= TravLifLDStepInitAWTravLif;
						ELSE
							eGotoOpsStep	:= TravLifLDStepInitTravLif;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepInitTravLif:
					sStepTxt	:= 'Initializing Traverser And Lifter Homing';
					
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) THEN
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
						eGotoOpsStep	:= TravLifLDStepDSSigWait;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepInitAWTravLif:
					sStepTxt	:= 'Initializing Auto Width, Traverser And Lifter Homing';
					
					eAWAct		:= AWActGoWidthOff;
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) AND (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) THEN
						eAWAct		:= AWActIdle;
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
						eGotoOpsStep	:= TravLifLDStepUSSigWait;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepAWMov:
					sStepTxt	:= 'Moving Auto Width';
					
					eAWAct	:= AWActGoWidthOff;
					
					IF p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff THEN
						eAWAct			:= AWActIdle;
						eGotoOpsStep	:= TravLifLDStepUSSigWait;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepTravLifMov:
					sStepTxt	:= 'Moving Traverser And Lifter';
					
					diGoUnloadSlt1	:= p_diBufferNxtUnloadSlt1;
					diGoUnloadSlt2	:= p_diBufferNxtUnloadSlt2;
					diGoUnloadSlt3	:= p_diBufferNxtUnloadSlt3;
					diGoUnloadSlt4	:= p_diBufferNxtUnloadSlt4;
					
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
						
					ELSIF eTravLifPosGo = TravLifLDPosDS1 THEN
						eTravAct	:= TravActGoDPos;
						eLifAct		:= LifterActGoAPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosDS2 THEN
						eTravAct	:= TravActGoEPos;
						eLifAct		:= LifterActGoBPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosDS3 THEN
						eTravAct	:= TravActGoFPos;
						eLifAct		:= LifterActGoCPos;
						
					ELSIF eTravLifPosGo = TravLifLDPosInvalid THEN
						IF p_bConvHvBrd = FALSE THEN
							eGotoOpsStep	:= TravLifLDStepUSSigWait;
						ELSE
							eGotoOpsStep	:= TravLifLDStepDSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoAPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoBPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoCPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoDPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoAPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoEPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoFPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCPos)) THEN
						
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
						IF p_bConvHvBrd = FALSE THEN
							eGotoOpsStep	:= TravLifLDStepUSSigRechk;
						ELSE
							eGotoOpsStep	:= TravLifLDStepDSSigRechk;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
				TravLifLDStepUSSigWait:
					sStepTxt	:= 'Waiting For Upstream Signal';
					
					a_bPosAllwSigOn[1]	:= bLocalUSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalUSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalUSRdy3;
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 3 DO
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
					
					FOR udi := 1 TO 3 DO
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
						
						FOR udi := 1 TO 3 DO
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
					
					IF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff THEN
						eGotoOpsStep	:= TravLifLDStepAWMov;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF (p_bUSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
						eTravLifPosGo	:= udiPosAllwGo;
						eGotoOpsStep	:= TravLifLDStepTravLifMov;
						
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
							
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					ELSE
						eTravLifPosGo	:= TravLifLDPosInvalid;
						
						bPaused	:= p_bStop;
					END_IF
					
				TravLifLDStepUSSigRechk:
					sStepTxt	:= 'Rechecking Upstream Signal';
					
					IF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff THEN
						eGotoOpsStep	:= TravLifLDStepAWMov;
					ELSIF p_bUSAllow = FALSE THEN
						eGotoOpsStep	:= TravLifLDStepUSSigWait;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						eGotoOpsStep	:= TravLifLDStepInletPneuOpn;
					ELSE
						IF p_bLocalUSRdy = TRUE THEN
							eGotoOpsStep	:= TravLifLDStepInletPneuOpn;
						ELSE
							eGotoOpsStep	:= TravLifLDStepUSSigWait;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStepInletPneuOpn:
					sStepTxt	:= 'Opening Inlet Pneumatic';
					
					eInletPneuAct	:= PneuActRet;
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActRet THEN
						eInletPneuAct	:= PneuActIdle;
						eGotoOpsStep	:= TravLifLDStepUSSigRechkTwice;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepUSSigRechkTwice:
					sStepTxt	:= 'Rechecking Upstream Signal Twice';
					
					IF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
						eGotoOpsStep	:= TravLifLDStepInletPneuCls;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						
						//Non-Buffer Mode
						IF p_bNonBffrMod = TRUE THEN
							IF (NOT(tyParamTravLif.a_bDSDis[1]) AND bLocalDSRdy1) OR (NOT(tyParamTravLif.a_bDSDis[2]) AND bLocalDSRdy2) OR (NOT(tyParamTravLif.a_bDSDis[3]) AND bLocalDSRdy3) THEN
								eGotoOpsStep	:= TravLifLDStepUSComm;
									
								bPaused	:= p_bStop OR p_bStep;
							ELSE
								bPaused	:= p_bStop;
							END_IF
						ELSE
							eGotoOpsStep	:= TravLifLDStepUSComm;
								
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					ELSE
						
						IF p_bLocalUSRdy = TRUE THEN
							//Non-Buffer Mode
							IF p_bNonBffrMod = TRUE THEN
								IF (NOT(tyParamTravLif.a_bDSDis[1]) AND bLocalDSRdy1) OR (NOT(tyParamTravLif.a_bDSDis[2]) AND bLocalDSRdy2) OR (NOT(tyParamTravLif.a_bDSDis[3]) AND bLocalDSRdy3) THEN
									eGotoOpsStep	:= TravLifLDStepUSComm;
									
									bPaused	:= p_bStop OR p_bStep;
								ELSE
									bPaused	:= p_bStop;
								END_IF
							ELSE
								eGotoOpsStep	:= TravLifLDStepUSComm;
								
								bPaused	:= p_bStop OR p_bStep;
							END_IF
							
						ELSE
							eGotoOpsStep	:= TravLifLDStepInletPneuCls;
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					END_IF
					
				TravLifLDStepUSComm:
					sStepTxt	:= 'Communicating Upstream Machine';
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							p_eLocalUSSMEMAAct	:= SMEMAActRun;
							
							IF p_bLocalUSSMEMATransporting = TRUE THEN
								eGotoOpsStep	:= TravLifLDStepEntBrd;
								
							ELSIF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
								p_eLocalUSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep		:= TravLifLDStepInletPneuCls;
								
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
										eGotoOpsStep		:= TravLifLDStepInletPneuCls;
										
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
								eGotoOpsStep	:= TravLifLDStepEntBrd;
								
							ELSIF (p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bAWPushOrPullerWidthPosDiff THEN
								eGotoOpsStep	:= TravLifLDStepInletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
									bPaused	:= p_bStop;
									
								ELSE
									
									IF p_bLocalUSRdy = FALSE THEN
										eGotoOpsStep	:= TravLifLDStepInletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
				TravLifLDStepEntBrd:
					//Switch To Inlet Pneu Close
					//Inlet Sensor Clear & Puller Cylinder Retracted
					IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN
						
						IF p_bPullerExtSen THEN
							bBrdOnSen	:= TRUE;
						END_IF
							
						IF bBrdOnSen THEN
							IF NOT p_bConvLftSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
								eGotoOpsStep	:= TravLifLDStepInletPneuCls;
							END_IF
						END_IF
						
					ELSE
						
						IF p_bPullerExtSen THEN
							bBrdOnSen	:= TRUE;
						END_IF
							
						IF bBrdOnSen THEN
							IF NOT p_bConvRgtSen AND p_bPullerRetSen AND NOT p_bInletPneuCls THEN
								eGotoOpsStep	:= TravLifLDStepInletPneuCls;
							END_IF
						END_IF
						
					END_IF
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							IF p_bLocalUSSMEMATransporting = FALSE THEN
								eConvAct	:= ConvActStopPuller;
								
								IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller THEN
									bBrdOnSen			:= FALSE;
									eConvAct			:= ConvActIdle;
									p_eLocalUSSMEMAAct	:= SMEMAActIdle;
									eGotoOpsStep		:= TravLifLDStepInletPneuCls;
									
									bPaused	:= p_bStop OR p_bStep;
								END_IF
								
							ELSE
								
								IF p_bLocalUSSMEMAConvStart THEN
									sStepTxt	:= 'Puller Conveyor Entering Board';
									
									eConvAct	:= ConvActEntPuller;
								END_IF
									
								IF p_bLocalUSSMEMAConvStop THEN
									sStepTxt	:= 'Puller Conveyor Stopping';
									
									eConvAct	:= ConvActStopPuller;
								END_IF
								
								IF (p_eLocalUSSMEMAStatus = Done AND p_eLocalUSSMEMAStat = SMEMAActRun) AND (p_eConvStatus = Done AND p_eConvStat = ConvActEntPuller) THEN
									IF p_bInletPneuCls = FALSE THEN
										eGotoOpsStep	:= TravLifLDStepInletPneuCls;
									ELSE
										bBrdOnSen			:= FALSE;
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										eConvAct			:= ConvActIdle;
										eGotoOpsStep		:= TravLifLDStepDSSigWait;
									END_IF
									
									bPaused	:= p_bStop OR p_bStep;
								END_IF
								
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalUSHermesTransporting = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Entering Board';
								eConvAct	:= ConvActEntPuller;
							END_IF
							
							IF p_bLocalUSHermesStopTransport = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Stopping';
								eConvAct	:= ConvActStopPuller;
							END_IF
							
							IF p_bLocalUSHermesTransporting = FALSE THEN
								
								IF p_eConvStat = ConvActStopPuller THEN
									
									IF p_eConvStatus = Done THEN
										bBrdOnSen		:= FALSE;
										eConvAct		:= ConvActIdle;
										eGotoOpsStep	:= TravLifLDStepInletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								ELSIF p_eConvStat = ConvActEntPuller THEN
									
									IF p_eConvStatus = Done THEN
										IF p_bInletPneuCls = FALSE THEN
											eGotoOpsStep	:= TravLifLDStepInletPneuCls;
										ELSE
											bBrdOnSen		:= FALSE;
											eConvAct		:= ConvActIdle;
											eGotoOpsStep	:= TravLifLDStepDSSigWait;
										END_IF
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
					//Magazine Not Present
					IF p_bMagTransferBrd1 AND NOT p_bBufferMagPresent1 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep	:= TravLifLDStepTranInErr;
					ELSIF p_bMagTransferBrd2 AND NOT p_bBufferMagPresent2 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep	:= TravLifLDStepTranInErr;
					ELSIF p_bMagTransferBrd3 AND NOT p_bBufferMagPresent3 AND NOT p_bInletPneuCls THEN
						eGotoOpsStep	:= TravLifLDStepTranInErr;
					END_IF
					
				TravLifLDStepInletPneuCls:
					sStepTxt	:= 'Closing Inlet Pneumatic';
					
					fbWaitTimer(IN:= TRUE, PT:= p_tShutterWaitTmr);
					IF fbWaitTimer.Q THEN
						eInletPneuAct	:= PneuActExt;
					END_IF
					
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt THEN
						eInletPneuAct	:= PneuActIdle;
						fbWaitTimer(IN:=FALSE);
						IF bBrdOnSen = FALSE THEN
							IF p_bAWWidthPosDiff = TRUE OR p_bAWPushOrPullerWidthPosDiff THEN
								eGotoOpsStep	:= TravLifLDStepAWMov;
							ELSE
								eGotoOpsStep	:= TravLifLDStepUSSigWait;
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							eGotoOpsStep	:= TravLifLDStepEntBrd;
						END_IF
						
					END_IF
					
				TravLifLDStepDSSigWait:
					sStepTxt	:= 'Waiting For Downstream Signal';
					
					a_bPosAllwSigOn[1]	:= bLocalDSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalDSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalDSRdy3;
					
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
					
					IF (p_bDSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
						eTravLifPosGo	:= udiPosAllwGo + 3;
						eGotoOpsStep	:= TravLifLDStepTravLifMov;
						
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
					ELSE
						eTravLifPosGo	:= TravLifLDPosInvalid;
						
						bPaused	:= p_bStop;
					END_IF
					
				TravLifLDStepDSSigRechk:
					sStepTxt	:= 'Rechecking Downstream Signal';
					
					IF p_bDSAllow = FALSE THEN
						eGotoOpsStep	:= TravLifLDStepDSSigWait;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
						eGotoOpsStep	:= TravLifLDStepOutletPneuOpn;
					ELSE
						IF p_bLocalDSRdy = TRUE THEN
							eGotoOpsStep	:= TravLifLDStepOutletPneuOpn;
						ELSE
							eGotoOpsStep	:= TravLifLDStepDSSigWait;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifLDStepOutletPneuOpn:
					sStepTxt	:= 'Opening Outlet Pneumatic';
					
					eOutletPneuAct	:= PneuActRet;
					
					IF p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActRet THEN
						eOutletPneuAct	:= PneuActIdle;
						eGotoOpsStep	:= TravLifLDStepDSSigRechkTwice;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepDSSigRechkTwice:
					sStepTxt	:= 'Rechecking Downstream Signal Twice';
					
					IF p_bDSAllow = FALSE THEN
						eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
						//	eGotoOpsStep	:= TravLifLDStepDSComm;
						eGotoOpsStep1	:= TravLifLDStep1ChkRgtSenForDBAOn;
					ELSE
						IF p_bLocalDSRdy = TRUE THEN
						//	eGotoOpsStep	:= TravLifLDStepDSComm;
							eGotoOpsStep1	:= TravLifLDStep1ChkRgtSenForDBAOn;
						ELSE
							eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
				
					
				TravLifLDStepChkRgtSenForDBAOn:
					sStepTxt	:= 'Board Trnsfer To Conveyor Outlet Sensor';
					IF (p_eConvDirection = ConvDirLToL OR p_eConvDirection = ConvDirRToL) THEN
						bReachedEnd	:= p_bLeftSen;
					ELSE
						bReachedEnd	:= p_bRightSen;
					END_IF
					
					
					IF p_bDBAOnRgtSen THEN 
						
						IF bReachedEnd = TRUE THEN
							bReachedEnd		:= FALSE;
							eGotoOpsStep	:= TravLifLDStepDSComm;
						END_IF
					
					ELSE			
						bReachedEnd		:= FALSE;
						eGotoOpsStep	:= TravLifLDStepDSComm;
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;

						
				TravLifLDStepDSComm:
					sStepTxt	:= 'Communicating Downstream Machine';
					
					CASE p_eLocalDSCommMod OF
						McSetCommModSMEMA:
							p_eLocalDSSMEMAAct	:= SMEMAActRun;
							
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								eGotoOpsStep	:= TravLifLDStepExitBrd;
								
							ELSIF p_bDSAllow = FALSE THEN
								p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep		:= TravLifLDStepOutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
									bPaused	:= p_bStop;
									
									IF bPaused = TRUE THEN
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
									END_IF
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE THEN
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
										eGotoOpsStep		:= TravLifLDStepOutletPneuCls;
										
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
								eGotoOpsStep	:= TravLifLDStepExitBrd;
								
							ELSIF p_bDSAllow = FALSE THEN
								eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Output)
									
									bPaused	:= p_bStop;
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE THEN
										eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									ELSE
										bPaused	:= p_bStop;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
				TravLifLDStepExitBrd:
					CASE p_eLocalDSCommMod OF
						McSetCommModSMEMA:
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								sStepTxt	:= 'Puller Conveyor Exiting Board';
								
								eConvAct	:= ConvActExit;
							END_IF
							
							IF (p_eLocalDSSMEMAStatus = Done AND p_eLocalDSSMEMAStat = SMEMAActRun) AND (p_eConvStatus = Done AND p_eConvStat = ConvActExit) THEN
								p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								eConvAct			:= ConvActIdle;
								eGotoOpsStep		:= TravLifLDStepOutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep;
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalDSHermesTransporting = TRUE THEN
								
								IF p_bLocalDSHermesStopTransport = TRUE THEN
									sStepTxt	:= 'Puller Conveyor Stopping';
									eConvAct	:= ConvActStop;
								ELSE
									sStepTxt	:= 'Pusher Conveyor Exiting Board';
									eConvAct	:= ConvActExit;
								END_IF
								
							ELSE
								
								IF p_bLocalDSHermesStopTransport = TRUE THEN
									
									eConvAct	:= ConvActStop;
									
									IF p_eConvStatus = Done AND p_eConvStat = ConvActStop THEN
										eConvAct		:= ConvActIdle;
										eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								ELSE
									
									eConvAct	:= ConvActExit;
									
									IF p_eConvStatus = Done AND p_eConvStat = ConvActExit THEN
										eConvAct		:= ConvActIdle;
										eGotoOpsStep	:= TravLifLDStepOutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
				TravLifLDStepOutletPneuCls:
					sStepTxt	:= 'Closing Outlet Pneumatic';
					
					eOutletPneuAct	:= PneuActExt;
					
					IF p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt THEN
						eOutletPneuAct	:= PneuActIdle;
						
						IF p_bConvHvBrd = FALSE THEN
							eGotoOpsStep	:= TravLifLDStepAWMov;
						ELSE
							eGotoOpsStep	:= TravLifLDStepDSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifLDStepTranInErr:
					sStepTxt	:= 'Stopping Puller Conveyor';
					
					eConvAct	:= ConvActStopPuller;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPuller THEN
						eConvAct	:= ConvActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10000;
					END_IF
				
			END_CASE
			
		END_IF
		
	END_IF
	
	bInitConv		:= eOpsStep = TravLifLDStepInitConv;
	bOpsInitDone	:= eOpsStep > TravLifLDStepInitAWTravLif;
	bUSComm			:= eOpsStep = TravLifLDStepUSComm;
	bEntBrd			:= eOpsStep = TravLifLDStepEntBrd;
	bDSComm			:= eOpsStep = TravLifLDStepDSComm;
	bExitBrd		:= eOpsStep = TravLifLDStepExitBrd;
	
END_ACTION
