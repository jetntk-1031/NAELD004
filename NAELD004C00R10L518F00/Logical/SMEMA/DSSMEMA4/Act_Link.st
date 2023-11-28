(** 2019-03-29 **)
ACTION Act_Link:
	
	//Ready Send
	IF p_bLinkProjLifterMagPlatform = FALSE THEN
		p_bRdySend	:= (*p_bLinkOpsMagMagBffrAvl = TRUE OR*) p_bLinkOpsMagConvMagBffrAvl = TRUE;
	ELSE
//		p_bRdySend	:= p_eLinkOpsLifMagLDMagNxtUnload = MagNxtUnloadMag4;
	END_IF
	
	//Send Complete
	IF eStat <> SMEMAActIdle THEN
		IF p_bLinkDIPullExtRS THEN
			bPulled	:= TRUE;
		END_IF
		
		p_bComplSigOn	:= bPulled AND p_bLinkDIPullRetRS;
	ELSE
		bPulled			:= FALSE;
		p_bComplSigOn	:= FALSE;
	END_IF
	
	//Direction
	p_bDirLToR	:= p_eLinkConvDir = ConvDirLToR OR p_eLinkConvDir = ConvDirLToL;
	
	//Transfer Out Timeout (Same As Upstream SMEMA Transfer In Timeout)
	IF p_bLinkNtParamProjPullerRotPrep THEN
		diTransferOutTO		:= 12000;
	ELSE
		diTransferOutTO		:= 20000 + (p_diLinkProdRcpCurrRcpPitch * 125);
	END_IF
	
END_ACTION
