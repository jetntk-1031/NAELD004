(** 2020-12-31 **)
ACTION Act_Link:
	
	//Default
	p_tyXOpenConfig.idle	:= 10;
	p_tyXOpenConfig.tx_cnt	:= 2;
	p_tyXOpenConfig.rx_cnt	:= 2;
	p_tyXOpenConfig.tx_len	:= 256;
	p_tyXOpenConfig.rx_len	:= 256;
	
	//End Code
	IF p_diEndCode1 <> -1 AND p_diEndCode2 <> -1 THEN
		
		p_tyXOpenConfig.delimc		:= 2;
		p_tyXOpenConfig.delim[0]	:= DINT_TO_USINT(p_diEndCode1);
		p_tyXOpenConfig.delim[1]	:= DINT_TO_USINT(p_diEndCode2);
		
	ELSIF p_diEndCode1 <> -1 AND p_diEndCode2 = -1 THEN
		
		p_tyXOpenConfig.delimc		:= 1;
		p_tyXOpenConfig.delim[0]	:= DINT_TO_USINT(p_diEndCode1);
		
	ELSIF p_diEndCode1 = -1 AND p_diEndCode2 <> -1 THEN
		
		p_tyXOpenConfig.delimc		:= 1;
		p_tyXOpenConfig.delim[0]	:= DINT_TO_USINT(p_diEndCode2);
		
	ELSIF p_diEndCode1 = -1 AND p_diEndCode2 = -1 THEN
		
		p_tyXOpenConfig.delimc		:= 0;
		
	END_IF
	
END_ACTION