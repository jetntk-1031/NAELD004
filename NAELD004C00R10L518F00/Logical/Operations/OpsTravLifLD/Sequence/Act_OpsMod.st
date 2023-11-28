(** 2019-01-20 **)
ACTION Act_OpsMod: 
	
	CASE p_eLDMag OF
		
		LDMagDual:
			
			bDualLaneMode := FALSE;
			bRearLaneMode := FALSE;
			
			CASE p_eLDMod OF
				LDModLoadLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_bUSDis[4]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[3]	:= 4;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= TRUE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
				LDModLoadLnB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
					
					tyParamTravLif.a_bDSDis[1]			:= TRUE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
				LDModLoadLnAB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_bUSDis[4]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					//Downstream Priority Based On Incoming Signal
					IF bLocalDSRdy1 = TRUE AND tyParamTravLif.a_usiDSPriority[1] = 3 THEN
						tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						IF tyParamTravLif.a_usiDSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						END_IF
					ELSIF bLocalDSRdy1 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[2] < 2 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalDSRdy2 = TRUE AND tyParamTravLif.a_usiDSPriority[2] = 3 THEN
						tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						IF tyParamTravLif.a_usiDSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						END_IF
					ELSIF bLocalDSRdy2 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[1] < 2 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] + 1;
						END_IF
					END_IF
				
			END_CASE
			
		LDMagTriple:
			bDualLaneMode := FALSE;
			CASE p_eLDMod OF
				LDModLoadLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_bUSDis[4]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= TRUE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
				LDModLoadLnB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_bUSDis[4]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 3;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 1;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
					
					tyParamTravLif.a_bDSDis[1]			:= TRUE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
				LDModLoadLnAB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					//Downstream Priority Based On Incoming Signal
					IF bLocalDSRdy1 = TRUE AND tyParamTravLif.a_usiDSPriority[1] = 3 THEN
						tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						IF tyParamTravLif.a_usiDSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						END_IF
					ELSIF bLocalDSRdy1 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[2] < 2 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalDSRdy2 = TRUE AND tyParamTravLif.a_usiDSPriority[2] = 3 THEN
						tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						IF tyParamTravLif.a_usiDSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						END_IF
					ELSIF bLocalDSRdy2 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[1] < 2 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] + 1;
						END_IF
					END_IF
				
			END_CASE
		
		LDMagQuadruple:
			CASE p_eLDMod OF
				LDModLoadLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_bUSDis[4]			:= FALSE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
				
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= TRUE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
				
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					bDualLaneMode := FALSE;
					bRearLaneMode := FALSE;
					
				LDModLoadLnB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_bUSDis[4]			:= FALSE;
					tyParamTravLif.a_usiUSPriority[1]	:= 4;
					tyParamTravLif.a_usiUSPriority[2]	:= 3;
					tyParamTravLif.a_usiUSPriority[3]	:= 2;
					tyParamTravLif.a_usiUSPriority[4]	:= 1;
				
					tyParamTravLif.a_bDSDis[1]			:= TRUE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
				
					bDualLaneMode := FALSE;
					bRearLaneMode := TRUE;
					
				LDModLoadLnAB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= FALSE;
					tyParamTravLif.a_bUSDis[4]			:= FALSE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					tyParamTravLif.a_usiUSPriority[4]	:= 4;
				
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
				
					//Downstream Priority Based On Incoming Signal
					IF bLocalDSRdy1 = TRUE AND tyParamTravLif.a_usiDSPriority[1] = 3 THEN
						tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						IF tyParamTravLif.a_usiDSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						END_IF
					ELSIF bLocalDSRdy1 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[2] < 2 THEN
							tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] + 1;
						END_IF
					END_IF
							
					IF bLocalDSRdy2 = TRUE AND tyParamTravLif.a_usiDSPriority[2] = 3 THEN
						tyParamTravLif.a_usiDSPriority[2]	:= tyParamTravLif.a_usiDSPriority[2] - 1;
						IF tyParamTravLif.a_usiDSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] - 1;
						END_IF
					ELSIF bLocalDSRdy2 = FALSE THEN
						tyParamTravLif.a_usiDSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiDSPriority[1] < 2 THEN
							tyParamTravLif.a_usiDSPriority[1]	:= tyParamTravLif.a_usiDSPriority[1] + 1;
						END_IF
					END_IF
				
					bDualLaneMode := TRUE;
					bRearLaneMode := FALSE;
			END_CASE
	END_CASE
	
	a_bMagDis	:= tyParamTravLif.a_bUSDis;
	
END_ACTION
