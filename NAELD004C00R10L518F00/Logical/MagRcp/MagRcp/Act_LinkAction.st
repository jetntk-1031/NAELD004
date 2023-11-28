(** 2019-03-29 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupMagRcpAct;
	ELSE
		p_eAct ACCESS p_UIMagRcpAct;
	END_IF
	
END_ACTION
