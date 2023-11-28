
(* OPCUA Write *)
FUNCTION_BLOCK fbOPCUAWriteList
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbWriteList.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbWriteList.NodeHdlCount		:= uiTagNmCnt;
		tyInternal.fbWriteList.NodeHdls			:= a_dwNodeHdlList;
		tyInternal.fbWriteList.Timeout			:= tTimeOut;
		tyInternal.fbWriteList(Execute := TRUE , Variables := a_sClientTagNm);
			
		IF tyInternal.fbWriteList.Done = TRUE THEN
			udiStatus	:= 0;
		ELSIF tyInternal.fbWriteList.Error = TRUE THEN
			udiStatus	:= 1753;	//Write Tag Value Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbWriteList(Execute := FALSE , Variables := a_sClientTagNm);
		
	END_IF
	
END_FUNCTION_BLOCK
