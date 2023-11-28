(** 2019-07-04 **)
ACTION Act_Link:
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	p_sInfoMsg	:= '';
	
	//Accept New Recipe Condition (Before Loaded New Recipe)
	IF p_bLinkProjCurtainSenPrep = FALSE THEN
		p_bAccNewRcpCond	:= (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifLDInitDone = TRUE) AND (p_bLinkPullConvHvBrd = FALSE);
	ELSE
		IF p_bLinkBypCurtainSenCtrl THEN
			p_bAccNewRcpCond	:= (p_bLinkOpsRun = TRUE) AND (p_bLinkBypCurtainWidthChg = TRUE) AND (p_bLinkPullConvHvBrd = FALSE);
		ELSE 
			p_bAccNewRcpCond	:= (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifLDInitDone = TRUE) AND (p_bLinkPullConvHvBrd = FALSE);
		END_IF
	END_IF
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;
	
	//Recipe Different
	p_bInternalReqProdRcpDiff	:= memcmp(ADR(p_tyCurrProdRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	
END_ACTION
