
(* OPCUA Connect *)
FUNCTION_BLOCK fbOPCUAConnect
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbConnect.ServerEndpointUrl	:= CONCAT(CONCAT('opc.tcp://' , tyOPCUAParam.sIPAddr) , CONCAT(':' , tyOPCUAParam.sPort));
		tyInternal.fbConnect.Timeout			:= tTimeOut;
		tyInternal.fbConnect(Execute := TRUE);
			
		IF tyInternal.fbConnect.Done = TRUE THEN
			dwConnectionHdl	:= tyInternal.fbConnect.ConnectionHdl;
			udiStatus		:= 0;
		ELSIF tyInternal.fbConnect.Error = TRUE THEN
			dwConnectionHdl	:= 0;
			udiStatus		:= 1750;	//Connection Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbConnect(Execute := FALSE);
		
	END_IF

END_FUNCTION_BLOCK
