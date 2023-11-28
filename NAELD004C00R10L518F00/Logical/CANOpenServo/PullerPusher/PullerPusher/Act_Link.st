(** 2019-03-29 **)
ACTION Act_Link:
	diRcp1MtrPshrExtTorq	 := p_tyLinkTorqParam.usiStartTorque + (((p_diRcp1MtrPshrExtTorq -10)/10)*p_tyLinkTorqParam.uiRatio/100);//15~30N , Rcp1 torque

	IF p_bProjInletShutPrep = TRUE THEN

		IF p_bProjCurtainSenPrep = FALSE THEN //standard
			IF p_bInletShutterCloseRS
				THEN
				bInterruptSensor1 := TRUE;
			ELSE
				bInterruptSensor1 := FALSE;	
			END_IF
		ELSE
			IF eStat <> PPActJogClose THEN
				IF ABS(p_diLinkMag1TravPos - p_diLinkTravActualPos) < 500 THEN 
					bInterruptSensor1 := p_bInletShutterCloseRS;
				ELSIF ABS(p_diLinkMag2TravPos - p_diLinkTravActualPos) < 500 THEN 
					bInterruptSensor1 := p_bInletShutterCloseRS2;
				ELSIF ABS(p_diLinkMag3TravPos - p_diLinkTravActualPos) < 500 THEN 
					bInterruptSensor1 := p_bInletShutterCloseRS3;
				END_IF
			END_IF
		END_IF
	ELSE
		bInterruptSensor1 := FALSE;	
	END_IF


//	IF p_bProjOutletShutPrep = TRUE THEN
//		IF p_bOutletShutterCloseRS
//			THEN
//			bInterruptSensor2 := TRUE;
//		ELSE
//			bInterruptSensor2 := FALSE;	
//		END_IF
//	ELSE
//		bInterruptSensor2 := FALSE;	
//	END_IF
		
//	IF (usiJogFwdStep = 40 AND p_eAct = PPActJogOpen) OR (usiJogRevStep = 40 AND p_eAct = PPActJogClose) THEN
//		bInterruptSensor3	:= NOT p_bMagWidthChkSen;
//	END_IF
//	IF p_eAct = PPActIdle OR p_eAct = PPActStop THEN
//		bInterruptSensor3  := FALSE;
//	END_IF


	p_bInterruptSensor := bInterruptSensor3 OR bInterruptSensor2 OR bInterruptSensor1;// OR p_bLinkSafetyRelay = FALSE;
	
	
END_ACTION
