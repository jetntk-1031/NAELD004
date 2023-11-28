(** 2020-08-29 **)
ACTION Act_LinkAction:

	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupUSBAct;
	ELSE
		p_eAct ACCESS p_UIUSBRdrAct;
	END_IF
	
END_ACTION
