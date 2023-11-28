
(* //OPCUA Method Call *)
FUNCTION_BLOCK fbOPCUASubscriptionCreate
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbSubCreate.ConnectionHdl	:= dwConnectionHdl;
		
		tyInternal.fbSubCreate.PublishingEnable		:= bPublishingEn;
	
		tyInternal.fbSubCreate.Priority		:= bytePriority;
		
		tyInternal.fbSubCreate.Timeout			:= tTimeOut;
		
		tyInternal.fbSubCreate(Execute := TRUE,PublishingInterval := tPublishingInterval);

		IF tyInternal.fbSubCreate.Done = TRUE THEN
			udiStatus	:= 0;
			dwSubHdl := tyInternal.fbSubCreate.SubscriptionHdl;
		ELSIF tyInternal.fbSubCreate.Error = TRUE THEN
			udiStatus	:= 1752; //Subcrition Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbSubCreate(Execute := FALSE,PublishingInterval := tPublishingInterval);
		//dwSubHdl := 0	;
	END_IF
END_FUNCTION_BLOCK
