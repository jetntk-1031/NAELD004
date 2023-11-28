(** 2019-05-10 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupFrmAct;
	ELSE
		p_eAct ACCESS p_UIFrmAct; //Recipe Change by Barcode;
	
	END_IF
	
END_ACTION
