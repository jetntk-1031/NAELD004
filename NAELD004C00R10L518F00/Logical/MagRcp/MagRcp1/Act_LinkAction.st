(** 2019-03-29 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupMagRcpAct1;
	ELSE
		p_eAct ACCESS p_UIMagRcpAct1;
	END_IF
	
END_ACTION
