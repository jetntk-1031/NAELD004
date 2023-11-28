(** 2019-03-29 **)
ACTION Act_Link:
	
	//Ready Send
	IF p_bLinkNtParamDSWidthChkPrep AND p_bLinkMcParamDSWidthChkEn THEN
		p_bRdySend	:= p_bLinkDIDSWidthChkSen AND p_bLinkConvHvBrd = TRUE AND p_eLinkOpsTravLifPosGo = TravLifLDPosDS2;
	ELSE
		p_bRdySend	:= p_bLinkConvHvBrd = TRUE AND p_eLinkOpsTravLifPosGo = TravLifLDPosDS2;
	END_IF
	
	//Send Complete
	p_bComplSigOn	:= p_bLinkConvHvBrd = FALSE;
	
	//Direction
	p_bDirLToR	:= p_eLinkConvDir = ConvDirLToR OR p_eLinkConvDir = ConvDirLToL;
	
END_ACTION
