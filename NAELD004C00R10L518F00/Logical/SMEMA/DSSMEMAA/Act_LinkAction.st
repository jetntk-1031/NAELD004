(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		p_eAct ACCESS p_OpsTravLifLDDSSMEMAAct1;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIDSSMEMAAAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
