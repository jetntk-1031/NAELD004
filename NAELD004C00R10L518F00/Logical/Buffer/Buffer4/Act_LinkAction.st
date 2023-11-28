(** 2019-05-10 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupBuffer4Act;
	ELSE
		IF eStatus = Idle THEN

			IF p_eLinkOpsMagConvLDBufferAct <> BufferActIdle THEN
				p_eAct ACCESS p_OpsMagConvLD4BufferAct;
			ELSE
				p_eAct ACCESS p_UIBuffer4Act;
			END_IF

		END_IF
	END_IF
	
END_ACTION
