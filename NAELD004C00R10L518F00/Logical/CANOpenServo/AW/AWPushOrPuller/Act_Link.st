(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diMoveVelInUMPS ACCESS p_UIMnlAWPushOrPullerNomSpd;
		IF p_diLinkMnlGoWidth < p_diWidthAtHmPos THEN
			p_diGoWidth := p_diWidthAtHmPos;
		ELSE
			p_diGoWidth	:= p_diLinkMnlGoWidth;
		END_IF
			
	ELSE
		
		p_diMoveVelInUMPS ACCESS p_NtParamAWPushPulAutoSpd;
		IF ((p_diLinkProdSelWidth/2) + p_diLinkPshrOffset) < p_diWidthAtHmPos THEN
			p_diGoWidth := p_diWidthAtHmPos+3000;
		ELSE
			//	p_diGoWidth := ((p_diLinkProdSelWidth/2) + p_diLinkPshrOffset)/2;
			IF p_diLinkPshrOffset = 0 THEN
				p_diGoWidth := (p_diLinkProdSelWidth/2) - 50000;
			ELSE
				p_diGoWidth := (p_diLinkProdSelWidth/2) + p_diLinkPshrOffset;
			END_IF
		END_IF
		
	END_IF
	
	
		
	IF p_bProjInletShutPrep = TRUE THEN
		IF p_bInletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE
			THEN
			bInterruptSensor1 := TRUE;
		ELSE
			bInterruptSensor1 := FALSE;	
		END_IF
	ELSE
		bInterruptSensor1 := FALSE;	
	END_IF
	
	IF p_bProjOutletShutPrep = TRUE AND p_bOutShutterDis = FALSE THEN
		IF p_bOutletShutterCloseRS = FALSE OR p_bPullerRetSen = FALSE
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
