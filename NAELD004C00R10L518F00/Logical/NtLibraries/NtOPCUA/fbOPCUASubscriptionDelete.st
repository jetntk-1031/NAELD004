
(* //OPCUA Method Call *)
FUNCTION_BLOCK fbOPCUASubscriptionDelete
			   
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbSubDelete.SubscriptionHdl	:= dwSubHdl;
		
		tyInternal.fbSubDelete.Timeout			:= tTimeOut;
					
		tyInternal.fbSubDelete(Execute := TRUE);

		IF tyInternal.fbSubDelete.Done = TRUE THEN
			udiStatus	:= 0;
			//dwSubHdl := 0;
		ELSIF tyInternal.fbSubDelete.Error = TRUE THEN
			udiStatus	:= 1755; //Method Get Handle Error

		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbSubDelete(Execute := FALSE);
		//dwSubHdl := 0;

	END_IF
END_FUNCTION_BLOCK
