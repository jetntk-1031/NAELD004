
ACTION PrecededByF1Link: 

	//Z1 Accepting Condition
	p_bZ1AccNewRcpCondition := (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifLDInitDone = TRUE) AND (p_bLinkPshrConvHvBrd = FALSE);
	
	//Z2 Accepting Condition
	p_bZ2AccNewRcpCondition := (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsMagConvLD1InitDone AND p_bLinkOpsMagConvLD2InitDone AND p_bLinkOpsMagConvLD3InitDone);
	
END_ACTION
