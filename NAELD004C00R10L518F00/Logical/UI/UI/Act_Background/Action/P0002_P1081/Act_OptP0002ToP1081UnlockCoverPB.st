
ACTION Act_OptP0002ToP1081UnlockCoverPB: 
	
	IF p_tyDI.bDSUnlockCoverSig AND (p_bOpsTravLifStandby OR p_bOpsRun = FALSE) AND p_ePullConvStatus <> Busy THEN
		bMachineSafetySigToDS := TRUE;																						//
	ELSE
		bMachineSafetySigToDS := FALSE;																						//
	END_IF	
		
END_ACTION
