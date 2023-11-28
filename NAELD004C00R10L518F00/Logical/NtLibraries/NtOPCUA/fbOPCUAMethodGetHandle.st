
(* OPCUA Method Get Handle *)
FUNCTION_BLOCK fbOPCUAMethodGetHandle
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbMethodGetHdl.ConnectionHdl	:= dwConnectionHdl;
		
		tyInternal.fbMethodGetHdl.ObjectNodeID.NamespaceIndex	:= uiNSIdx;
		tyInternal.fbMethodGetHdl.ObjectNodeID.Identifier		:= sObjectIdentifier;
		tyInternal.fbMethodGetHdl.ObjectNodeID.IdentifierType	:= UAIdentifierType_Numeric;
		
		tyInternal.fbMethodGetHdl.MethodNodeID.NamespaceIndex	:= uiNSIdx;
		tyInternal.fbMethodGetHdl.MethodNodeID.Identifier		:= sMethodIdentifier;
		tyInternal.fbMethodGetHdl.MethodNodeID.IdentifierType	:= UAIdentifierType_Numeric;
	
		tyInternal.fbMethodGetHdl.Timeout		:= tTimeOut;
		
		tyInternal.fbMethodGetHdl(Execute := TRUE);

		IF tyInternal.fbMethodGetHdl.Done = TRUE THEN
			dwMethodHdl	:= tyInternal.fbMethodGetHdl.MethodHdl;
			udiStatus	:= 0;
		ELSIF tyInternal.fbMethodGetHdl.Error = TRUE THEN
			udiStatus	:= 1751; //Method Get Handle Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbMethodGetHdl(Execute := FALSE);
			
	END_IF
	
END_FUNCTION_BLOCK
