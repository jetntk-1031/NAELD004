
ACTION Act_OpsInfo: 
	
	//Reset
	udiStatus1	:= 0;
	
	IF p_bInfoEn = TRUE THEN
		
		//Magazine Not Present
		a_bMagAllwMagPresent[1]	:= p_bBufferMagRemoved1 = FALSE;
		a_bMagAllwMagPresent[2]	:= p_bBufferMagRemoved2 = FALSE;
		a_bMagAllwMagPresent[3]	:= p_bBufferMagRemoved3 = FALSE;
		a_bMagAllwMagPresent[4]	:= p_bBufferMagRemoved4 = FALSE;
		
		FOR udi := 1 TO 4 DO
			IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE THEN
				EXIT;
			END_IF
		END_FOR
		
		IF udi = 5 THEN
			IF eOpsStep > MagConvLDStepInitMagConv THEN
				udiStatus1	:= 10000; //'Magazine Not Present'
			END_IF
		END_IF
		
		//Magazine Is Empty
		a_bMagAllwMagPresent[1]	:= a_bMagAllwMagPresent[1] AND p_bInfoMag1Mty;
		a_bMagAllwMagPresent[2]	:= a_bMagAllwMagPresent[2] AND p_bInfoMag2Mty;
		a_bMagAllwMagPresent[3]	:= a_bMagAllwMagPresent[3] AND p_bInfoMag3Mty;
		a_bMagAllwMagPresent[4]	:= a_bMagAllwMagPresent[4] AND p_bInfoMag4Mty;
		
		a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
		a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
		a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
		a_tyMagAllwBffrStat[4]	:= p_tyBufferStat4;
		
		
		FOR udi := 1 TO 3 DO
			IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE AND a_tyMagAllwBffrStat[udi].bBffrMty = TRUE THEN
				IF p_eNtParamCustomerReq <>  Bosch_China THEN 
					udiStatus1	:= 10001 + (udi - 1);//'Magazine 1/2/3 Is Empty'
					bTLMuteBuzzer := FALSE;
					EXIT;
				ELSIF (p_eNtParamCustomerReq = Bosch_China )  THEN
					bTLMuteBuzzer := TRUE;
					udiStatus1	:= 10001 + (udi - 1); //'Magazine 1/2/3 Is Empty'
					
					FOR udi2 := 1 TO 3 DO
						IF udi2 <> udi THEN
							IF pa_bMagDis[udi2] = FALSE AND a_bMagAllwMagPresent[udi2] = TRUE AND a_tyMagAllwBffrStat[udi2].bBffrMty = TRUE  THEN
								bTLMuteBuzzer := FALSE;
								EXIT;
							END_IF
						END_IF 
					END_FOR 						
				END_IF 		
			END_IF
		END_FOR
		//when Magazine require to check this condition
		IF udiStatus1 < 10004 AND udiStatus1<> 10000 THEN 
			bMagFullInfo := TRUE;
		ELSE
			bMagFullInfo := FALSE;
		END_IF
	END_IF	
	
	IF udiStatus1 = 10004 THEN
		udiStatus1 := udiStatus1 + 3;//'Magazine 4 Is Empty'
	END_IF
	
	//Magazine Verification Warning
	fbMagRemovedTm(IN:= p_bMagPresentSen = FALSE AND p_bLocalMagEntrySen = FALSE AND p_bBufferMagRemoved);
	IF fbMagRemovedTm.Q OR bNewMagVerified THEN
		bNewMagVerifyStarted := FALSE;
	END_IF
			
	
	fbVerifyWarningDelay(IN:= bNewMagVerifyStarted AND bNewMagVerified = FALSE AND bStepMagVerification = FALSE);
	
	IF fbVerifyWarningDelay.Q AND p_tyBufferStat1.bBffrMty = FALSE THEN
				IF bManualUnloadMag = FALSE THEN	
					CASE usiMagModel OF
						0: //CAB706.2			
							IF bWrongHeight THEN
								udiStatus1	:= 10005; //'Wrong Magazine Height On Position 1'
							ELSIF p_bDIMagConvHeightSen = FALSE THEN
								bWrongHeight := TRUE;
							
							ELSIF bWrongWidth THEN
								udiStatus1	:= 10004; //'Wrong Magazine Width On Position 1'
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
					udiStatus1	:= 10006; //'Waiting for Unload Magazine 1'
				END_IF

	
	ELSIF 	udiStatus1 <> 10004 
		AND udiStatus1 <> 10005 
		AND p_tyBufferStat1.bBffrMty = FALSE
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
	
//----------------------------Siemens MES -------------------------------------//
	IF (udiStatus1 = 0)OR (udiStatus1 = 10001) AND p_eNtParamCustomerReq = Siemens OR p_eNtParamCustomerReq = We_Fabricate THEN
		IF eOpsStep = MagConvLDStepMagExtMESStdByChk   THEN //we_fab no use	
			IF NOT(fbWriteRFIDTO.Q) THEN
				udiStatus1 := 10014;
			ELSIF fbWriteRFIDTO.Q THEN
				udiStatus1 := 10015;
			END_IF
			IF (fbMagRemovedTm.Q ) THEN
				fbWriteRFIDTO(IN:= FALSE);
			END_IF
		ELSIF eOpsStep = MagConvLDStepMagEntMESStdByChk THEN	
			IF p_tyResponseFromMES.iAcceptCondition < 0 THEN
				udiStatus1 := 10016; //wrong magazine position x.Press Release Magazine To Continue.
			END_IF
		END_IF
	END_IF
	
END_ACTION

