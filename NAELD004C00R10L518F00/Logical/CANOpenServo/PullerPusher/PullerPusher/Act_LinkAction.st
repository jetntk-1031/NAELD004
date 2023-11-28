(** 2019-10-21 **)
ACTION Act_LinkAction:
	
	IF bModuleNotOK THEN
		p_eAct ACCESS ADR(eAct);
	ELSE
		IF p_bLinkStartupRun = TRUE THEN
			p_eAct ACCESS p_StartupServoPPAct;
		ELSIF p_bLinkOpsRun = TRUE OR p_bManual = TRUE THEN
			IF p_bLinkPullConvPullerExtCtrl AND NOT bJogFwdDone 
				//AND NOT p_bLinkDIPullerExtRS 
				THEN
				bJogStopDone := FALSE;
			
				CASE usiJogFwdStep OF
		
					0:
						memcpy(ADR(fbSDOWriteTorque.data0),ADR(udiMaxTorque),1);
						memcpy(ADR(fbSDOWriteTorque.data1),ADR(udiMaxTorque)+1,1);
						IF eStat <> PPActIdle THEN
							p_eAct := PPActIdle;
							usiJogFwdStep := 20;
						ELSE
							usiJogFwdStep := 20;
						END_IF
				
					20:	
						fbSDOWriteTorque(enable := TRUE);
						IF fbSDOWriteTorque.status = 65535 THEN
							usiJogFwdStep := 22;
						END_IF
									
					22:
						fbSDOWriteTorque(enable := TRUE);
						IF fbSDOWriteTorque.status = 0 THEN
							fbSDOWriteTorque(enable := FALSE);
							usiJogFwdStep := 30;
						END_IF
						
					30: 
						IF tyParamOut.bPwrOn = FALSE THEN
							p_eAct := PPActPwrOn;
				
							IF tyParamOut.bPwrOn THEN
								p_eAct := PPActIdle;
								usiJogFwdStep := 40;
							END_IF
						ELSE
							p_eAct := PPActIdle;
							usiJogFwdStep := 40;
					
						END_IF
					
					40:
						p_eAct := PPActJogOpen;
		
						IF EDGEPOS(p_bLinkDIPullerExtSlwRS) THEN
							bExtSlowSpd := TRUE;
							p_eAct := PPActIdle;
						END_IF
					
						IF p_bLinkDIPullerExtSlwRS OR p_bLinkDIPullerExtRS  THEN
							p_diJogVelInUMPS := diSlowSpeed;
						
						ELSE
							IF p_bManual THEN
								p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
							ELSE
									p_diJogVelInUMPS := udiJogSpdAuto; //325000;//290000;
							END_IF
						END_IF
		
				
					//	IF (eStat = PPActJogOpen AND eMainStatus = Done)
					//		OR p_bLinkDIPullerExtRS
						IF p_bLinkDIPullerExtRS
							THEN
							p_eAct := PPActIdle;
							p_diJogVelInUMPS := 0;
							usiJogFwdStep := 50;
			
						END_IF
						
					50:
						p_eAct := PPActJogStop;
						p_diJogVelInUMPS := 0;			
						IF (eStat = PPActJogStop AND eMainStatus = Done)
							THEN
							p_eAct := PPActIdle;
							usiJogFwdStep := 0;
							bJogFwdDone := TRUE;	
						END_IF	
				
				
				END_CASE	
	
			ELSIF p_bLinkPullConvPullerRetCtrl AND NOT bJogRevDone
				//AND NOT p_bLinkDIPullerRetRS 
				THEN
				bJogStopDone := FALSE;	
				CASE usiJogRevStep OF
					
					0:
						IF p_bManual THEN
							memcpy(ADR(fbSDOWriteTorque.data0),p_UIMnlMtrPshrRetTorq,1);
							memcpy(ADR(fbSDOWriteTorque.data1),p_UIMnlMtrPshrRetTorq+1,1);
						ELSE
							memcpy(ADR(fbSDOWriteTorque.data0),ADR(diRcp1MtrPshrExtTorq),1);
							memcpy(ADR(fbSDOWriteTorque.data1),ADR(diRcp1MtrPshrExtTorq)+1,1);
						END_IF
						IF eStat <> PPActIdle THEN
							p_eAct := PPActIdle;
							usiJogRevStep := 20;
						ELSE
							usiJogRevStep := 20;
						END_IF
				
					20:	
						fbSDOWriteTorque(enable := TRUE);
						IF fbSDOWriteTorque.status = 65535 THEN
							usiJogRevStep := 22;
						END_IF
									
					22:
						fbSDOWriteTorque(enable := TRUE);
						IF fbSDOWriteTorque.status = 0 THEN
							fbSDOWriteTorque(enable := FALSE);
							usiJogRevStep := 30;
						END_IF
						
					30: 
						IF tyParamOut.bPwrOn = FALSE THEN
							p_eAct := PPActPwrOn;
							IF tyParamOut.bPwrOn THEN
								p_eAct := PPActIdle;
								usiJogRevStep := 40;
							END_IF
						ELSE
							p_eAct := PPActIdle;
							usiJogRevStep := 40;
					
						END_IF
					
					40:
						p_eAct := PPActJogClose;
					
						IF EDGEPOS(p_bLinkDIPullerRetSlwRS) THEN
							p_eAct := PPActIdle;
						END_IF
					
						IF p_bLinkDIPullerRetSlwRS OR p_bLinkDIPullerRetRS THEN
							p_diJogVelInUMPS := diSlowSpeed;
						ELSE
							IF p_bManual THEN
								p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
							ELSE
								p_diJogVelInUMPS := p_dintLinkPullerRetSpd * uiJogSpdRatio; //40625//36250
							END_IF
							
						END_IF
								
					//	IF (eStat = PPActJogClose AND eMainStatus = Done)
					//		OR p_bLinkDIPullerRetRS
						IF p_bLinkDIPullerRetRS 
							THEN
							p_eAct := PPActIdle;
							p_diJogVelInUMPS := 0;
							usiJogRevStep := 50;
						
						END_IF
				
					50:
						p_eAct := PPActJogStop;
						p_diJogVelInUMPS := 0;			
						IF (eStat = PPActJogStop AND eMainStatus = Done)
						THEN
							p_eAct := PPActIdle;
							usiJogRevStep := 0;
							bJogRevDone := TRUE;
						END_IF	
					
					
								
				END_CASE	
			ELSE
				
				IF bJogStopDone = FALSE THEN
					p_eAct := PPActJogStop;
				END_IF
			
				usiJogFwdStep := 0;
				usiJogRevStep := 0;
				p_diJogVelInUMPS := 0;
			
				IF eStat = PPActJogStop AND eMainStatus = Done THEN
					p_eAct := PPActIdle;
					bJogStopDone := TRUE;
				END_IF
				
				IF tyParamInDriver.uiErrCode_603F <> 0 THEN //error 12592
					tyParamOutDriver.uiCtrlword_6040 := 0; //0111 (7)> 1111 (15)
				END_IF
				
					
			END_IF
			
		ELSE
			IF bRstAndExt = FALSE THEN
				p_eAct ACCESS ADR(eAct);
				usiJogFwdStep := 0;
				usiJogRevStep := 0;
				usiRstJogStep := 0;
				p_diJogVelInUMPS := 0;
				IF bModuleNotOK = FALSE THEN 
					IF eStatus <> Idle THEN 
						p_eAct := PPActIdle;
						IF eStat = PPActIdle AND eMainStatus = Done THEN
							p_eAct := PPActIdle;
						END_IF
					END_IF
				END_IF
			ELSIF p_bLinkDIPullerRetRS OR p_bLinkDIPullerRotHmRS THEN
				bRstAndExt := FALSE;
				
			ELSE //reset do extend
				p_eAct ACCESS ADR(eAct);
				CASE usiRstJogStep OF
					0:
						fbPwrOnDlyTmr(IN:=tyParamOut.bPwrOn = FALSE);
						IF tyParamOut.bPwrOn = FALSE AND fbPwrOnDlyTmr.Q THEN
							p_eAct := PPActPwrOn;
					
							IF tyParamOut.bPwrOn THEN
								fbPwrOnDlyTmr(IN:=FALSE);
								p_eAct := PPActIdle;
								usiRstJogStep := 1;
							END_IF
						ELSE
							fbPwrOnDlyTmr(IN:=FALSE);
							p_eAct := PPActIdle;
							usiRstJogStep := 1;
						
						END_IF
					1:
						p_eAct := PPActJogOpen;
			
						IF EDGEPOS(p_bLinkDIPullerExtSlwRS) THEN
							p_eAct := PPActIdle;
						END_IF
						
						IF p_bLinkDIPullerExtSlwRS OR p_bLinkDIPullerExtRS OR bExtSlowSpd THEN
							p_diJogVelInUMPS := diSlowSpeed;
							
						ELSE
							p_diJogVelInUMPS := 12000; //50%

						END_IF
			
	
						IF p_bLinkDIPullerExtRS	THEN
							p_eAct := PPActIdle;
							p_diJogVelInUMPS := 0;
							usiRstJogStep := 2;
							bTurnToHm	:= TRUE; // output
							bExtSlowSpd := FALSE;
				
						END_IF
						
					2:
						p_eAct := PPActJogStop;
						p_diJogVelInUMPS := 0;			
						IF (eStat = PPActJogStop AND eMainStatus = Done)
							THEN
							p_eAct := PPActIdle;
							bRstAndExt := FALSE;	
						END_IF	
				END_CASE

			END_IF
		END_IF //end run/manual
	END_IF
	
	
	IF EDGENEG(p_bManual) OR EDGENEG(p_bLinkOpsRun) OR EDGENEG(p_bLinkStartupRun) THEN
		tyParamOutDriver.uiCtrlword_6040	:= 0;
	END_IF

	IF (eStat = PPActJogClose AND p_bLinkDIPullerRetRS)
		OR (eStat = PPActJogOpen AND p_bLinkDIPullerExtRS)
		THEN
		p_diJogVelInUMPS := 0;
	END_IF

	IF p_bLinkDIPullerRetRS = FALSE THEN
		bJogRevDone := FALSE;
	END_IF

	IF p_bLinkDIPullerExtRS = FALSE THEN
		bJogFwdDone := FALSE;
	END_IF
	
END_ACTION
