
(* //OPCUA Method Call *)
FUNCTION_BLOCK fbOPCUAMoniteredItemRemoveList
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbMoniterItemRemoveList.SubscriptionHdl	:= dwSubHdl;
		
		tyInternal.fbMoniterItemRemoveList.MonitoredItemHdlCount	:= uiTagNmCount;
		
		tyInternal.fbMoniterItemRemoveList.MonitoredItemHdls		:= a_dwMonitorHld;
		
		tyInternal.fbMoniterItemRemoveList.Timeout			:= tTimeOut;
					
		tyInternal.fbMoniterItemRemoveList(Execute := TRUE);

		IF tyInternal.fbMoniterItemRemoveList.Done = TRUE THEN
			udiStatus	:= 0;
			//memset(ADR(a_dwMonitorHld),0,SIZEOF(a_dwMonitorHld));
		ELSIF tyInternal.fbMoniterItemRemoveList.Error = TRUE THEN
			udiStatus	:= 1754; //Method Get Handle Error

		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbMoniterItemRemoveList(Execute := FALSE);
		
		//memset(ADR(a_dwMonitorHld),0,SIZEOF(a_dwMonitorHld));
	END_IF
END_FUNCTION_BLOCK
