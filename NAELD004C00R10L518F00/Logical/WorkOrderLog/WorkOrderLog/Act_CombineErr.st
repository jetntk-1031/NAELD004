(** 2021-06-20 **)
ACTION Act_CombineErr:
	
	//Combine Error
	IF eStatus = Error OR eStatus1 = Error THEN
		eMainStatus	:= Error;
	ELSE
		eMainStatus	:= eStatus;
	END_IF
	
END_ACTION
