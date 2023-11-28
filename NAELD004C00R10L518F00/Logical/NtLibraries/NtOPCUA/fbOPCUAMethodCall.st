
(* //OPCUA Method Call *)
FUNCTION_BLOCK fbOPCUAMethodCall
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbMethodCall.ConnectionHdl	:= dwConnectionHdl;
		
		tyInternal.fbMethodCall.MethodHdl		:= dwMethodHdl;
	
		tyInternal.fbMethodCall.Timeout			:= tTimeOut;
		
		tyInternal.fbMethodCall(Execute := TRUE, InputArguments := a_uamaInputArguments, OutputArguments := a_uamaOutputArguments);

		IF tyInternal.fbMethodCall.Done = TRUE THEN
			udiStatus	:= 0;
		ELSIF tyInternal.fbMethodCall.Error = TRUE THEN
			udiStatus	:= 1751; //Method Get Handle Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbMethodCall(Execute := FALSE, InputArguments := a_uamaInputArguments, OutputArguments := a_uamaOutputArguments);
			
	END_IF
END_FUNCTION_BLOCK
