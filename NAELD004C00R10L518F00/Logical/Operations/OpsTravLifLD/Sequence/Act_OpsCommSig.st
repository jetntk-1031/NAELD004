
ACTION Act_OpsCommSig: 

	//Upstream
	IF p_eUSCommMod1 = McSetCommModHermes THEN
		bLocalUSRdy1	:= p_bUSHermesUSRdy1;
	ELSE
		bLocalUSRdy1	:= p_bUSSMEMAUSRdy1;
	END_IF
	
	IF p_eUSCommMod2 = McSetCommModHermes THEN
		bLocalUSRdy2	:= p_bUSHermesUSRdy2;
	ELSE
		bLocalUSRdy2	:= p_bUSSMEMAUSRdy2;
	END_IF
	
	IF p_eUSCommMod3 = McSetCommModHermes THEN
		bLocalUSRdy3	:= p_bUSHermesUSRdy3;
	ELSE
		bLocalUSRdy3	:= p_bUSSMEMAUSRdy3;
	END_IF
	
	IF p_eUSCommMod4 = McSetCommModHermes THEN
		bLocalUSRdy4	:= p_bUSHermesUSRdy4;
	ELSE
		bLocalUSRdy4	:= p_bUSSMEMAUSRdy4;
	END_IF
	
	
	IF bDualLaneMode = FALSE THEN
		
			IF bLocalUSRdy1 AND bLocalUSRdy2Set = FALSE AND bLocalUSRdy3Set = FALSE AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy1Set := TRUE;
			ELSIF bLocalUSRdy1 AND bLocalUSRdy2 AND bLocalUSRdy1Set AND bLocalUSRdy2Set = FALSE THEN
				bLocalUSRdy1Set := TRUE;
			ELSIF bLocalUSRdy1 AND bLocalUSRdy3 AND bLocalUSRdy1Set AND bLocalUSRdy3Set = FALSE THEN
				bLocalUSRdy1Set := TRUE;
			ELSIF bLocalUSRdy1 AND bLocalUSRdy4 AND bLocalUSRdy1Set AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy1Set := TRUE;
			ELSIF p_bBufferMagPresent1 = FALSE THEN
				bLocalUSRdy1Set := FALSE;
			END_IF
			
			IF bLocalUSRdy2 AND bLocalUSRdy1Set = FALSE AND bLocalUSRdy3Set = FALSE AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy2Set := TRUE;
			ELSIF bLocalUSRdy2 AND bLocalUSRdy1 AND bLocalUSRdy2Set AND bLocalUSRdy1Set = FALSE THEN
				bLocalUSRdy2Set := TRUE;
			ELSIF bLocalUSRdy2 AND bLocalUSRdy3 AND bLocalUSRdy2Set AND bLocalUSRdy3Set = FALSE THEN
				bLocalUSRdy2Set := TRUE;
			ELSIF bLocalUSRdy2 AND bLocalUSRdy4 AND bLocalUSRdy2Set AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy4Set := TRUE;
			ELSIF p_bBufferMagPresent2 = FALSE THEN
				bLocalUSRdy2Set := FALSE;
			END_IF
			
			IF bLocalUSRdy3 AND bLocalUSRdy1Set = FALSE AND bLocalUSRdy2Set = FALSE  AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy3Set := TRUE;
			ELSIF bLocalUSRdy3 AND bLocalUSRdy1 AND bLocalUSRdy3Set AND bLocalUSRdy1Set = FALSE THEN
				bLocalUSRdy3Set := TRUE;
			ELSIF bLocalUSRdy3 AND bLocalUSRdy2 AND bLocalUSRdy3Set AND bLocalUSRdy2Set = FALSE THEN
				bLocalUSRdy3Set := TRUE;
			ELSIF bLocalUSRdy3 AND bLocalUSRdy4 AND bLocalUSRdy3Set AND bLocalUSRdy4Set = FALSE THEN
				bLocalUSRdy3Set := TRUE;
			ELSIF p_bBufferMagPresent3 = FALSE THEN
				bLocalUSRdy3Set := FALSE;
			END_IF
			
			IF bLocalUSRdy4 AND bLocalUSRdy1Set = FALSE AND bLocalUSRdy2Set = FALSE  AND bLocalUSRdy3Set = FALSE THEN
				bLocalUSRdy4Set := TRUE;
			ELSIF bLocalUSRdy4 AND bLocalUSRdy1 AND bLocalUSRdy4Set AND bLocalUSRdy1Set = FALSE THEN
				bLocalUSRdy4Set := TRUE;
			ELSIF bLocalUSRdy4 AND bLocalUSRdy2 AND bLocalUSRdy4Set AND bLocalUSRdy2Set = FALSE THEN
				bLocalUSRdy4Set := TRUE;
			ELSIF bLocalUSRdy4 AND bLocalUSRdy3 AND bLocalUSRdy4Set AND bLocalUSRdy3Set = FALSE THEN
				bLocalUSRdy4Set := TRUE;
			ELSIF p_bBufferMagPresent4 = FALSE THEN
				bLocalUSRdy4Set := FALSE;
			END_IF
	
	ELSE
		
		IF bLocalUSRdy1 AND bLocalUSRdy2Set = FALSE THEN
			bLocalUSRdy1Set := TRUE;
		ELSIF bLocalUSRdy1 AND bLocalUSRdy2 AND bLocalUSRdy1Set AND bLocalUSRdy2Set = FALSE THEN
			bLocalUSRdy1Set := TRUE;
		ELSIF p_bBufferMagPresent1 = FALSE THEN
			bLocalUSRdy1Set := FALSE;
		END_IF
			
		IF bLocalUSRdy2 AND bLocalUSRdy1Set = FALSE THEN
			bLocalUSRdy2Set := TRUE;
		ELSIF bLocalUSRdy2 AND bLocalUSRdy1 AND bLocalUSRdy2Set AND bLocalUSRdy1Set = FALSE THEN
			bLocalUSRdy2Set := TRUE;
		ELSIF p_bBufferMagPresent2 = FALSE THEN
			bLocalUSRdy2Set := FALSE;
		END_IF
			
		IF bLocalUSRdy3 AND  bLocalUSRdy4Set = FALSE THEN
			bLocalUSRdy3Set := TRUE;
		ELSIF bLocalUSRdy3 AND bLocalUSRdy4 AND bLocalUSRdy3Set AND bLocalUSRdy4Set = FALSE THEN
			bLocalUSRdy3Set := TRUE;
		ELSIF p_bBufferMagPresent3 = FALSE THEN
			bLocalUSRdy3Set := FALSE;
		END_IF
			
		IF bLocalUSRdy4 AND bLocalUSRdy3Set = FALSE THEN
			bLocalUSRdy4Set := TRUE;
		ELSIF bLocalUSRdy4 AND bLocalUSRdy3 AND bLocalUSRdy4Set AND bLocalUSRdy3Set = FALSE THEN
			bLocalUSRdy4Set := TRUE;
		ELSIF p_bBufferMagPresent4 = FALSE THEN
			bLocalUSRdy4Set := FALSE;
		END_IF
	END_IF
		
	//Downstream
	IF p_eDSCommMod1 = McSetCommModHermes THEN
		bLocalDSRdy1	:= p_bDSHermesDSRdy1;
	ELSE
		bLocalDSRdy1	:= p_bDSSMEMADSRdy1;
	END_IF
	
	IF p_eDSCommMod2 = McSetCommModHermes THEN
		bLocalDSRdy2	:= p_bDSHermesDSRdy2;
	ELSE
		bLocalDSRdy2	:= p_bDSSMEMADSRdy2;
	END_IF
	
	IF p_eDSCommMod3 = McSetCommModHermes THEN
		bLocalDSRdy3	:= p_bDSHermesDSRdy3;
	ELSE
		bLocalDSRdy3	:= p_bDSSMEMADSRdy3;
	END_IF

END_ACTION
