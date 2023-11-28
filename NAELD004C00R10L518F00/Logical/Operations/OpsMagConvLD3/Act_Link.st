(** 2018-12-11 **)
ACTION Act_Link:
	
	IF p_eLinkMag = LDMagQuadruple = FALSE THEN
		//Sensor
		p_bMagPresentSen1	:= p_bLinkDIMagPresentSen1 OR p_bLinkMagConv2Clp1MtrIn OR p_bLinkMagConv2Clp1MtrOut;
		p_bMagPresentSen2	:= p_bLinkDIMagPresentSen2 OR p_bLinkMagConv2Clp2MtrIn OR p_bLinkMagConv2Clp2MtrOut;
		p_bMagPresentSen3	:= p_bLinkDIMagPresentSen3 OR p_bLinkMagConv2Clp3MtrIn OR p_bLinkMagConv2Clp3MtrOut;
		p_bMagPresentSen4	:= p_bLinkDIMagPresentSen4 OR p_bLinkMagConv2Clp4MtrIn OR p_bLinkMagConv2Clp4MtrOut;
		//Clamp RS
		p_bMagClampRS1 		:= (p_bLinkFixedMagClampRS1 AND p_bLinkRmtMagClampRS1) OR p_bLinkNewMagVerified1;
		p_bMagClampRS2		:= (p_bLinkFixedMagClampRS2 AND p_bLinkRmtMagClampRS2) OR p_bLinkNewMagVerified2;
		p_bMagClampRS3		:= (p_bLinkFixedMagClampRS3 AND p_bLinkRmtMagClampRS3) OR bNewMagVerified;
		p_bMagClampRS4		:= (p_bLinkFixedMagClampRS4 AND p_bLinkRmtMagClampRS4) OR p_bLinkNewMagVerified4;
	ELSE
		IF p_eLinkMag = LDMagQuadruple THEN
			CASE p_usiLinkMod OF
				0,1:
					//Sensor
					p_bMagPresentSen1	:= p_bLinkDIMagPresentSen1 OR p_bLinkMagConv2Clp1MtrIn OR p_bLinkMagConv2Clp1MtrOut;
					p_bMagPresentSen2	:= p_bLinkDIMagPresentSen2 OR p_bLinkMagConv2Clp2MtrIn OR p_bLinkMagConv2Clp2MtrOut;
					p_bMagPresentSen3	:= p_bLinkDIMagPresentSen3 OR p_bLinkMagConv2Clp3MtrIn OR p_bLinkMagConv2Clp3MtrOut;
					p_bMagPresentSen4	:= p_bLinkDIMagPresentSen4 OR p_bLinkMagConv2Clp4MtrIn OR p_bLinkMagConv2Clp4MtrOut;
					//Clamp RS
					p_bMagClampRS1 		:= (p_bLinkFixedMagClampRS1 AND p_bLinkRmtMagClampRS1) OR p_bLinkNewMagVerified1;
					p_bMagClampRS2		:= (p_bLinkFixedMagClampRS2 AND p_bLinkRmtMagClampRS2) OR p_bLinkNewMagVerified2;
					p_bMagClampRS3		:= (p_bLinkFixedMagClampRS3 AND p_bLinkRmtMagClampRS3) OR bNewMagVerified;
					p_bMagClampRS4		:= (p_bLinkFixedMagClampRS4 AND p_bLinkRmtMagClampRS4) OR p_bLinkNewMagVerified4;
					
				2:
		
					//Sensor
					p_bMagPresentSen1	:= FALSE;
					p_bMagPresentSen2	:= FALSE;
					p_bMagPresentSen3	:= p_bLinkDIMagPresentSen3 OR p_bLinkMagConv2Clp3MtrIn OR p_bLinkMagConv2Clp3MtrOut;
					p_bMagPresentSen4	:= p_bLinkDIMagPresentSen4 OR p_bLinkMagConv2Clp4MtrIn OR p_bLinkMagConv2Clp4MtrOut;
					//Clamp RS
					p_bMagClampRS1 		:= FALSE;
					p_bMagClampRS2		:= FALSE;
					p_bMagClampRS3		:= (p_bLinkFixedMagClampRS3 AND p_bLinkRmtMagClampRS3) OR bNewMagVerified;
					p_bMagClampRS4		:= (p_bLinkFixedMagClampRS4 AND p_bLinkRmtMagClampRS4) OR p_bLinkNewMagVerified4;
					
			END_CASE
		END_IF
	END_IF	
		
	
	//Mag Exchange Mode
	CASE p_eLinkMcParamMagExMode OF
		McSetMagXcAutoManMode:
			bMagManEx := TRUE;
			bMagAutoEx := TRUE;
	
		McSetMagXcAutoMode:
			bMagManEx := FALSE;
			bMagAutoEx := TRUE;
			
		McSetMagXcManMode:
			bMagManEx := TRUE;
			bMagAutoEx := FALSE;
		
	END_CASE
	
	//New magazine auto detection at inlet sensor 
	fbMagAutoDetTm(IN := p_bLinkDIMagEntrySen  OR p_bLinkDIMagPresentSen3, PT := DINT_TO_TIME(p_bLinkMcParamMagAutoDetTm));
	IF fbMagAutoDetTm.Q AND bMagManEx THEN
		bNewMagAutoDetected := TRUE;
	ELSE 
		bNewMagAutoDetected := FALSE;
	END_IF
	
	//Front or rear lane magazine mode
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF
			0:
				usiMagModel := p_bLinkMagRcpCurrRcpMagModel;	
		
			1,2:
				usiMagModel := p_bLinkMagRcpCurrRcpMagModel1;
		END_CASE
		
	ELSE
		usiMagModel := p_bLinkMagRcpCurrRcpMagModel;
		
	END_IF
	
	IF p_bLinkNtParamMagModelAutoVerify THEN
		IF usiMagModel = 0  //CAB706.2
			AND p_bDIMagConvHeightSen = TRUE 
			AND p_bDIMagConvSelUnclampRS = FALSE
			AND p_bDIMagConvCAB717Sen = FALSE
			AND p_bDIMagConvSmallSen
			THEN
			bNewMagVerified:= TRUE;
			
		ELSIF  usiMagModel = 1 //CAB716.2
			AND p_bDIMagConvHeightSen = FALSE
			AND p_bDIMagConvSelUnclampRS = FALSE
			AND p_bDIMagConvCAB717Sen = FALSE
			AND p_bDIMagConvSmallSen 
			THEN
			bNewMagVerified:= TRUE;
		
		ELSIF  usiMagModel = 2 //CAB717.2
			AND p_bDIMagConvHeightSen = FALSE 
			AND p_bDIMagConvSelUnclampRS
			AND p_bDIMagConvCAB717Sen
			AND p_bDIMagConvLargeSen
			THEN
			bNewMagVerified:= TRUE;
		ELSE
			bNewMagVerified:= FALSE;
		END_IF
	ELSE
		bNewMagVerified:= TRUE;	
	END_IF
		
	bAIVInPos := p_tyAGVToDTMag.bVEHInPos3 OR p_bDISOTRcv;
	
	IF p_bBufferMagRemoved THEN
		bManualUnloadMag := FALSE;
	END_IF
		
	IF EDGEPOS(p_bOpsTravLifULUpdatePullSlot) THEN
		bOpsTravLifULUpdatePullSlot := TRUE;
	ELSIF p_bOpsTravLifULUpdatePullSlot = FALSE THEN
		bOpsTravLifULUpdatePullSlot := FALSE;
	END_IF

	//Auto recipe
	IF p_bNtParamAutoRcpPrep THEN 
		p_bUSAllow := NOT(p_bMagPropDiffBlk); //false
//		p_bAdaptFollowerBlk := p_sProdRcpCurrRcp1Name <>  p_sProdRcpCrZ2RcpNm;
	ELSE
		p_bUSAllow ACCESS p_Follower1USAllow;
//		p_bAdaptFollowerBlk := FALSE;
	END_IF
	
END_ACTION
