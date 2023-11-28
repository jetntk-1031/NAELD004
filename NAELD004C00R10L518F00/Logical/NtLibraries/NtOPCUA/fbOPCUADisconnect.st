
(* OPCUA Disconnect *)
FUNCTION_BLOCK fbOPCUADisconnect
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbDisconnect.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbDisconnect.Timeout			:= tTimeOut;
		tyInternal.fbDisconnect(Execute := TRUE);
			
		IF tyInternal.fbDisconnect.Done = TRUE THEN
			udiStatus	:= 0;
		ELSIF tyInternal.fbDisconnect.Error = TRUE THEN
			udiStatus	:= 1755;	//Disconnect Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbDisconnect(Execute := FALSE);
		
	END_IF

END_FUNCTION_BLOCK
