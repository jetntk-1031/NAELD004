(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diGoWidth ACCESS p_UIMnlAWGoWidth;
		p_diMoveVelInUMPS ACCESS p_UIMnlAWNomSpd;
	ELSE
//		p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
		p_diMoveVelInUMPS ACCESS p_NtParamAWAutoSpd;
		
		IF p_eLinkMag = LDMagQuadruple THEN
			CASE p_usiLinkMod OF 
				0: //LDModLoadLnA:
					p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
					
				1: //LDModLoadLnB:
					p_diGoWidth ACCESS p_ProdRcpCurrRcp2WidthRear;
					
					
				2: //LDModLoadLnAB:
//					IF p_eLinkTravAct = TravActGoAPos THEN
//						p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
//					ELSIF p_eLinkTravAct = TravActGoBPos THEN
//						p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
//					ELSIF p_eLinkTravAct = TravActGoCPos THEN
//						p_diGoWidth ACCESS p_ProdRcpCurrRcp2WidthRear;
//					ELSIF p_eLinkTravAct = TravActGoGPos THEN
//						p_diGoWidth ACCESS p_ProdRcpCurrRcp2WidthRear;	
//					END_IF
				
					IF p_eTravLifPosGo = TravLifLDPosUS1 THEN
						p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
					ELSIF p_eTravLifPosGo = TravLifLDPosUS2 THEN
						p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
					ELSIF p_eTravLifPosGo = TravLifLDPosUS3 THEN
						p_diGoWidth ACCESS p_ProdRcpCurrRcp2WidthRear;
					ELSIF p_eTravLifPosGo = TravLifLDPosUS4 THEN
						p_diGoWidth ACCESS p_ProdRcpCurrRcp2WidthRear;	
					END_IF
			END_CASE
		ELSE
			IF p_bNtParamAutoRcpPrep AND ((p_bHermesSvyPrep  AND p_bMcParamHermesSvyEn) OR (p_eNtParamCustomerReq = We_Fabricate AND p_bMcParamMesRFIDEn)) THEN
				p_diGoWidth ACCESS p_AutoRcpTravLifWidth;
			ELSE
				p_diGoWidth ACCESS p_ProdRcpCurrRcp2Width;
				//p_diGoWidth ACCESS ADR(diGoWidth);
			END_IF
			
		END_IF
	END_IF
	
	IF p_bProjInletShutPrep = TRUE THEN
	
		IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
			THEN
			bInterruptSensor1 := TRUE;
		ELSE
			bInterruptSensor1 := FALSE;	
		END_IF
	ELSE
		bInterruptSensor1 := FALSE;	
	END_IF
	

	IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE THEN
		IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE OR p_bPullerExtSen
			THEN
			bInterruptSensor2 := TRUE;
		ELSE
			bInterruptSensor2 := FALSE;	
		END_IF
	ELSE
		bInterruptSensor2 := FALSE;	
	END_IF
		
	
	p_bInterruptSensor := bInterruptSensor2 OR bInterruptSensor1;// OR p_bLinkSafetyRelay = FALSE;
	
	
END_ACTION
