
(* OPCUA Read *)
FUNCTION_BLOCK fbOPCUAReadList
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbReadList.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbReadList.NodeHdlCount	:= uiTagNmCnt;
		tyInternal.fbReadList.NodeHdls		:= a_dwNodeHdlList;
		tyInternal.fbReadList.Timeout		:= tTimeOut;
		tyInternal.fbReadList(Execute := TRUE , Variables := a_sClientTagNm);
			
		IF tyInternal.fbReadList.Done = TRUE THEN
			udiStatus	:= 0;
		ELSIF tyInternal.fbReadList.Error = TRUE THEN
			udiStatus	:= 1752;	//Read Tag Value Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbReadList(Execute := FALSE , Variables := a_sClientTagNm);
		
	END_IF
	
END_FUNCTION_BLOCK
