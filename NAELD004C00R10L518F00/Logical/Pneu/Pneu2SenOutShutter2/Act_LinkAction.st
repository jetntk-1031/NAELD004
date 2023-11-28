(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		p_eAct ACCESS p_OpsTravLifLDOutletPneuAct2;
	ELSIF p_bManual = TRUE OR p_bSimu THEN
		p_eAct ACCESS p_UIOutShutterAct2;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
