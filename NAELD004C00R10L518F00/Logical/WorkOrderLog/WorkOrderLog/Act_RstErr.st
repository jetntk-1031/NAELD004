(** 2021-06-20 **)
ACTION Act_RstErr:
	
	IF p_udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= p_udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
END_ACTION