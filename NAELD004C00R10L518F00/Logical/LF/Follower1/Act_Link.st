(** 2019-07-04 **)
ACTION Act_Link:
	IF  p_eNtParamCustomerReq = We_Fabricate AND p_bNtParamAutoRcpPrep  AND p_bMcParamMesRFIDEn THEN
		p_tyInternalReqProdRcp ACCESS p_AutoRcpFollower1;
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	ELSE
		p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;
	END_IF
	
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	IF p_eLinkNtParamProjMag = LDMagDual THEN
		bBffrMagRemoved		:= (p_bLinkBffr1MagRemoved = TRUE) AND (p_bLinkBffr2MagRemoved = TRUE);
//		bOpsInitDone		:= ((p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagConvLD1InitDone) OR (NOT p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagLD1InitDone))
//								AND ((p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagConvLD2InitDone) OR (NOT p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagLD2InitDone));
		bOpsInitDone		:= (p_bLinkOpsMagConvLD1InitDone AND p_bLinkOpsMagConvLD2InitDone);
	ELSIF p_eLinkNtParamProjMag = LDMagTriple THEN
		bBffrMagRemoved		:= (p_bLinkBffr1MagRemoved = TRUE) AND (p_bLinkBffr2MagRemoved = TRUE) AND (p_bLinkBffr3MagRemoved = TRUE);
//		bOpsInitDone		:= ((p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagConvLD1InitDone) OR (NOT p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagLD1InitDone))
//								AND ((p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagConvLD2InitDone) OR (NOT p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagLD2InitDone))
//								AND ((p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagConvLD3InitDone) OR (NOT p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagLD3InitDone));
		bOpsInitDone		:= (p_bLinkOpsMagConvLD1InitDone AND p_bLinkOpsMagConvLD2InitDone AND p_bLinkOpsMagConvLD3InitDone);
	ELSIF p_eLinkNtParamProjMag = LDMagQuadruple THEN
		bBffrMagRemoved		:= (p_bLinkBffr1MagRemoved = TRUE) AND (p_bLinkBffr2MagRemoved = TRUE) AND (p_bLinkBffr3MagRemoved = TRUE) AND (p_bLinkBffr4MagRemoved = TRUE);
//		bOpsInitDone		:= ((p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagConvLD1InitDone) OR (NOT p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagLD1InitDone))
//								AND ((p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagConvLD2InitDone) OR (NOT p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagLD2InitDone))
//								AND ((p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagConvLD3InitDone) OR (NOT p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagLD3InitDone))
//								AND ((p_bLinkNtParamProjMagConv4Prep AND p_bLinkOpsMagConvLD4InitDone) OR (NOT p_bLinkNtParamProjMagConv4Prep AND p_bLinkOpsMagLD4InitDone));
		bOpsInitDone		:= p_bLinkOpsMagConvLD1InitDone AND p_bLinkOpsMagConvLD2InitDone AND p_bLinkOpsMagConvLD3InitDone AND p_bLinkOpsMagConvLD4InitDone;
	END_IF
	
	IF bBffrMagRemoved = FALSE AND p_bNtParamAutoRcpPrep = FALSE THEN
		p_sInfoMsg		:= 'New Recipe Loaded';
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Please Remove All Magazines.');
	ELSE
		p_sInfoMsg		:= '';
	END_IF
	
	//Accept New Recipe Condition (Before Loaded New Recipe)
	p_bAccNewRcpCond	:= bBffrMagRemoved = TRUE;
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;
	
	//Recipe Different
	p_bInternalReqProdRcpDiff	:= memcmp(ADR(p_tyCurrProdRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	
	
END_ACTION
