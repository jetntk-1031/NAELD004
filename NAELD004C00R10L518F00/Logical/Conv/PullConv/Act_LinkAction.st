(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		p_eAct ACCESS p_OpsTravLifLDConvAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIPullConvAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
		IF p_bLinkPPTurnToHm THEN
			p_eAct := ConvActRotHome;
		END_IF
		IF eStat = ConvActRotHome AND eStatus = Done THEN
			p_eAct := ConvActIdle;
			p_bLinkPPTurnToHm := FALSE ; //bi-dir
		END_IF
			
		
	END_IF
	
END_ACTION
