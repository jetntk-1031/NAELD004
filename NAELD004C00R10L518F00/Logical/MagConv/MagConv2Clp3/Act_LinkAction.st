(** 2019-10-30 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		p_eAct ACCESS p_OpsMagConvLD3MagConv2ClpAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIMagConv2Clp3Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
