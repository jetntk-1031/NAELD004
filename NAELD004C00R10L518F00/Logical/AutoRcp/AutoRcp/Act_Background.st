(** 2021-05-18 **)
ACTION Act_Background:
	
	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfBackground1;
		PrecededByF1:
			PrecededByF1Background1;
	END_CASE

	//if different, write one time
	IF usiPrevChg <> usiChg
		AND (eStatus = Idle AND eStat = AutoRcpActIdle)  THEN	
		IF p_eNtParamAutoRcpPrecededBy = 0 THEN
			a_tyZ2RcpWr := a_tyCurrZ2Rcp; 
		ELSIF p_eNtParamAutoRcpPrecededBy = 1 THEN
			a_tyAutoRcpInternalWr := a_tyAutoRcpInternal;
		END_IF
		p_eAct := AutoRcpActWriteRetain;
	END_IF
	IF eStatus = Done AND eStat = AutoRcpActWriteRetain THEN
		usiPrevChg :=  usiChg;
		p_eAct := AutoRcpActIdle;
	END_IF 

	
END_ACTION
