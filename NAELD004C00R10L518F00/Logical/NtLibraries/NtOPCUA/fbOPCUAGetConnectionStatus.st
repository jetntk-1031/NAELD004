
(* OPCUA Get Connection Status *)
FUNCTION_BLOCK fbOPCUAGetConnectionStatus
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbGetConnectionStatus.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbGetConnectionStatus.Timeout		:= tTimeOut;
		tyInternal.fbGetConnectionStatus(Execute := TRUE);
			
		IF tyInternal.fbGetConnectionStatus.Done = TRUE THEN
			eConnectionStat	:= tyInternal.fbGetConnectionStatus.ConnectionStatus;
			eServerStat		:= tyInternal.fbGetConnectionStatus.ServerState;
			udiStatus		:= 0;
		ELSIF tyInternal.fbGetConnectionStatus.Error = TRUE THEN
			eConnectionStat	:= UACS_ConnectionError;
			eServerStat		:= UASS_Unknown;
			udiStatus		:= 1756;	//Get Connection Status Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbGetConnectionStatus(Execute := FALSE);
		
		eConnectionStat	:= UACS_ConnectionError;
		eServerStat		:= UASS_Unknown;
		
	END_IF

END_FUNCTION_BLOCK
