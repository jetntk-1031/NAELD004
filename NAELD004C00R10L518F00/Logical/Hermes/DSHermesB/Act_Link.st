(** 2021-08-01 **)
ACTION Act_Link:
	
	//Receive Alive Time
	p_tyParam.tRcvAlive	:= p_tyParam.tSndAlive * 2;
	
	//Ready Send
	//Transfer Finished
//	IF (p_eLinkConvDir = ConvDirLToR) OR (p_eLinkConvDir = ConvDirRToR) THEN
		IF EDGENEG(p_bFirstZoneEndSen) THEN
			p_bSndCompl	:= TRUE;
		END_IF
//	ELSE
//		IF EDGENEG(p_bLinkDILeftSen) THEN
//			p_bSndCompl	:= TRUE;
//		END_IF
//	END_IF
	
	//Good Bad Board
//	IF p_bLinkOpsConvGdBrd = TRUE THEN
		p_eFailedBoard	:= HermesGoodBoard;
//	ELSE
//		p_eFailedBoard	:= HermesFailedBoard;
//	END_IF
	
	//New Product for Board Forecast(Id)
	//p_bNewProduct will be True only when machine accepted new recipe, can perform ChangeOver, i.e Machine Free (all zones).
//	p_bNewProduct := ((EDGEPOS(p_bLinkProdRcpCurrAll[0].sRcpNm = p_bLinkProdRcpCurrAll[1].sRcpNm)) AND (p_bLinkStartupRun = FALSE)); 
	
	//p_bNewWidth will be True only when machine accepted new width, can perform ChangeOver, i.e Machine Free (all zones).
//	p_bNewWidth := ((EDGEPOS(p_bLinkProdRcpCurrAll[0].diWidthInUM = p_bLinkProdRcpCurrAll[1].diWidthInUM)) AND (p_bLinkStartupRun = FALSE)); 
	
	p_bRdySnd	:= p_bLinkOpsTravLifLDDSComm AND p_eLinkTravLifLDPosGo = TravLifLDPosDS2; 
	
	//Machine Cycle Time
	p_rMcCycleTm ACCESS p_NtParamDSHermesMcCycleTm; //Change this if machine got Worst/Least/Different Cycle Time accordingly
	
	//Flipped Board
	p_eFlippedBoard	:= USINT_TO_UDINT(p_usiLinkProdRcpCurrRcpFlipBrd);
	
	//Machine All Empty(for ChangeOver), adjust accordingly                                                            //Add
	bAllZonesEmpty := p_bOpsGConv1HvBrd = FALSE AND p_bFirstZoneEndSen = FALSE;// AND p_bLinkDIPresentSen = FALSE (*AND p_tyDI.bTopCoverSWSig = TRUE*); 

	//Machine First Zone have board
	p_bFirstZoneHaveBoard := (p_bUSHermesStopTransport AND p_bOpsGConv1HvBrd) OR (p_bOpsGConv1HvBrd AND p_bUSHermesTransporting = FALSE); //Zone 1 have board, either PCB_In from upstream Or Manually load PCB at Zone 1


END_ACTION
