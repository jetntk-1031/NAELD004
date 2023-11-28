
ACTION Act_OpsInfo: 
	
	//Reset
	udiStatus1	:= 0;
	

	//Magazine Verification Warning
	fbMagRemovedTm(IN:= p_bMagPresentSen = FALSE AND p_bLocalMagEntrySen = FALSE AND p_bBufferMagRemoved);
	IF fbMagRemovedTm.Q OR bNewMagVerified THEN
		bNewMagVerifyStarted := FALSE;
	END_IF
			
	
	fbVerifyWarningDelay(IN:= bNewMagVerifyStarted AND bNewMagVerified = FALSE AND bStepMagVerification = FALSE);
	
	IF fbVerifyWarningDelay.Q AND p_tyBufferStat4.bBffrMty = FALSE THEN
		IF bManualUnloadMag = FALSE THEN	
			CASE usiMagModel OF
				0: //CAB706.2			
					IF bWrongHeight THEN
						udiStatus1	:= 10005;
					ELSIF p_bDIMagConvHeightSen = FALSE THEN
						bWrongHeight := TRUE;
							
					ELSIF bWrongWidth THEN
						udiStatus1	:= 10004;
					ELSIF p_bDIMagConvSelUnclampRS 
						OR p_bDIMagConvCAB717Sen 
						OR p_bDIMagConvSmallSen = FALSE
						THEN
						bWrongWidth := TRUE;
					END_IF
						
				1: //CAB716.2
					IF bWrongHeight THEN
						udiStatus1	:= 10005;
					ELSIF p_bDIMagConvHeightSen = TRUE THEN
						bWrongHeight := TRUE;
							
					ELSIF bWrongWidth THEN
						udiStatus1	:= 10004;
					ELSIF p_bDIMagConvSelUnclampRS 
						OR p_bDIMagConvCAB717Sen 
						OR p_bDIMagConvSmallSen = FALSE
						THEN
						bWrongWidth := TRUE;
					END_IF
						
				2: //CAB717.2
					IF bWrongHeight THEN
						udiStatus1	:= 10005;
					ELSIF p_bDIMagConvHeightSen THEN
						bWrongHeight := TRUE;
							
					ELSIF bWrongWidth THEN
						udiStatus1	:= 10004;
					ELSIF p_bDIMagConvSelUnclampRS = FALSE
						OR p_bDIMagConvCAB717Sen = FALSE 
						OR p_bDIMagConvLargeSen
						THEN
						bWrongWidth := TRUE;
								
					END_IF
						
			END_CASE
		ELSIF bManualUnloadMag THEN
			udiStatus1	:= 10006;
		END_IF

	
	ELSIF 	udiStatus1 <> 10004 
		AND udiStatus1 <> 10005 
		AND p_tyBufferStat4.bBffrMty = FALSE
		AND bStepMagExitedWait 
		AND p_bLocalMagEntrySen 
		THEN
		udiStatus1	:= 10006;
		bManualUnloadMag := TRUE;
	ELSE
		bWrongHeight := FALSE;
		bWrongWidth	:= FALSE;
	END_IF	
		

	bIncorrectMagazineModel := udiStatus1 = 10004 OR udiStatus1 = 10005;
	
END_ACTION
