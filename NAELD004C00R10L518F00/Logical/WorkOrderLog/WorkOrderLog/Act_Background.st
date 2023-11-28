(** 2021-06-20 **)
ACTION Act_Background:

	Act_Background_Log;
	
	//Reset Error
	
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
		
		fbFileAppend1(bEn := FALSE);
		i	:= 0;
		
	END_IF
	
END_ACTION
