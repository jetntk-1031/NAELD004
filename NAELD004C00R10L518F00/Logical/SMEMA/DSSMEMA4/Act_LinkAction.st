(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
//		IF p_bLinkNtParamProjMagConvPrep = TRUE THEN
			p_eAct ACCESS p_OpsMagConvLD4DSSMEMAAct;
//		ELSE
//			p_eAct ACCESS p_OpsMagLD4DSSMEMAAct;
//		END_IF
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
