(** 2021-08-01 **)
ACTION Act_Link:
	
	//B.A Retain Data Lane 1
	p_udiRetainDataAddr1	:= ADR(a_tyHermesBrdAvlData);		
	p_udiRetainDataLen1  	:= SIZEOF(a_tyHermesBrdAvlData);	
	
	IF p_bLinkStartupRun = FALSE THEN
		
		//Passing Board Available Memory
		//Zone 1
		IF EDGEPOS(p_bLinkOpsInitGConv1StepInitDone) THEN
			
		//	IF (p_bLinkOpsInitGConv1MidHvBrd = FALSE) AND (p_bLinkOpsInitGConv1EndHvBrd = FALSE) THEN
				a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
				bHermesWriteRetainLane1					:= TRUE;
		//	END_IF
			
		END_IF
		
//		IF EDGEPOS(p_bLinkOpsGConv1HvBrd) AND (p_bLinkOpsGConv1StepEntBrd = TRUE) THEN
//			
//			IF (p_bLinkUSHermesTransporting = TRUE) THEN
//				a_tyHermesBrdAvlData[1].a_tyXMLTableDataBrdAvl		:= pa_tyLinkXMLTableDataBrdAvl1;
//				a_tyHermesBrdAvlData[1].iXMLTableDataBrdAvlTtlIdx	:= p_iLinkXMLTableDataBrdAvlTtlIdx1;
//				a_tyHermesBrdAvlData[1].bNewBrdAvl					:= FALSE;
//				bHermesWriteRetainLane1									:= TRUE;
//			ELSE
//				a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
//				bHermesWriteRetainLane1					:= TRUE;
//			END_IF
//			
//		END_IF
//		
//		IF EDGENEG(p_bLinkOpsGConv1HvBrd) AND (p_bLinkOpsInitGConv1StepInitDone = TRUE) THEN
//			a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
//			bHermesWriteRetainLane1					:= TRUE;
//		END_IF
		
//		//Zone 2 get from Zone 1
//		IF EDGEPOS(p_bLinkOpsInitGConv2StepInitDone) THEN
//			
//			IF (p_bLinkOpsInitGConv2MidHvBrd = FALSE) AND (p_bLinkOpsInitGConv2EndHvBrd = FALSE) THEN
//				a_tyHermesBrdAvlData[2].bNewBrdAvl	:= TRUE;
//				bHermesWriteRetainLane1					:= TRUE;
//			END_IF
//			
//		END_IF
//		
//		IF EDGEPOS(p_bLinkOpsGConv2HvBrd) AND (p_bLinkOpsGConv2StepEntBrd = TRUE) THEN
//			
//			IF (p_bLinkUSSMEMA2Transporting = TRUE) THEN
//				a_tyHermesBrdAvlData[2]	:= a_tyHermesBrdAvlData[1];
//				bHermesWriteRetainLane1		:= TRUE;
//			ELSE
//				a_tyHermesBrdAvlData[2].bNewBrdAvl	:= TRUE;
//				bHermesWriteRetainLane1					:= TRUE;
		//			END_IF
		
//			
//		END_IF
//		
//		IF EDGENEG(p_bLinkOpsGConv2HvBrd) AND (p_bLinkOpsInitGConv2StepInitDone = TRUE) THEN
//			a_tyHermesBrdAvlData[2].bNewBrdAvl	:= TRUE;
//			bHermesWriteRetainLane1					:= TRUE;
//		END_IF
		

		//Zone 3 get from Zone 2 and so on. Duplicate if needed.
		
	
		//Write Hermes Retain Data
		IF bHermesWriteRetainLane1 = TRUE THEN
			p_eAct	:= HermesActWriteRetainLane1;
			
			IF (eStat = HermesActWriteRetainLane1) AND (eStatus = Done) THEN
				p_eAct				:= HermesActIdle;
				bHermesWriteRetainLane1	:= FALSE;
			END_IF
			
		END_IF
		
		IF EDGEPOS(p_bLinkOpsGConv1HvBrd) THEN
			fHermesGenerateUUID(ADR(sGenBrdUUID) , p_tyDTStructure , pa_usiMacAddr);
		END_IF
		
	
	//Dupplicate Lane 2 B.A data accordingly, make sure make condition where boolean bHermesWriteRetainLane1 must be false then only change p_eAct of Lane 2.
		
		
		
	END_IF
	
END_ACTION
