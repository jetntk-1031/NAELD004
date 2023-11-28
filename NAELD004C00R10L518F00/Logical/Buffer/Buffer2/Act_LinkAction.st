(** 2019-05-10 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupBuffer2Act;
	ELSE
		IF eStatus = Idle THEN
			IF p_bLinkProjLifterMagPlatform = FALSE THEN
				IF p_eLinkOpsMagConvLDBufferAct <> BufferActIdle THEN
					p_eAct ACCESS p_OpsMagConvLD2BufferAct;
				ELSE
					p_eAct ACCESS p_UIBuffer2Act;
				END_IF
			ELSE
				IF p_eLinkOpsLifMagLDBufferAct <> BufferActIdle THEN
					p_eAct ACCESS p_OpsLifMagLDBufferAct2;
				ELSE
					p_eAct ACCESS p_UIBuffer2Act;
				END_IF
			END_IF
		END_IF
	END_IF

END_ACTION
