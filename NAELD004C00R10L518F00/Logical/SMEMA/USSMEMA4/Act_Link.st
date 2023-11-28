(** 2019-03-29 **)
ACTION Act_Link:
	
	//Ready Receive
	p_bRdyRcv	:= p_bLinkConvHvBrd = FALSE AND p_eLinkOpsTravLifPosGo = TravLifLDPosUS4;
	
	//Receive Complete
	IF eStat <> SMEMAActIdle THEN
		IF p_bLinkDIPullExtRS THEN
			bPulled	:= TRUE;
		END_IF
		
		p_bComplSigOn	:= NOT p_bLeftSen AND bPulled AND p_bLinkDIPullRetRS;
	ELSE
		bPulled			:= FALSE;
		p_bComplSigOn	:= FALSE;
	END_IF
	
	//Direction
	p_bDirLToR	:= p_eLinkConvDir = ConvDirLToR OR p_eLinkConvDir = ConvDirLToL;
	
	//Transfer In Timeout (Smaller Than Conveyor Transfer In Timeout)
	IF p_bLinkNtParamProjPullerRotPrep THEN
		diTransferInTO		:= 12000;
	ELSE
		diTransferInTO		:= 20000 + (p_diLinkProdRcpCurrRcpPitch * 125);
	END_IF
	
END_ACTION
