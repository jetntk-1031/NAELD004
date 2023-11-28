
(* OPCUA Release Node Handle List *)
FUNCTION_BLOCK fbOPCUARlsNodeHdlList
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbRlsNodeHdlList.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbRlsNodeHdlList.NodeHdlCount	:= uiTagNmCnt;
		tyInternal.fbRlsNodeHdlList.NodeHdls		:= a_dwNodeHdlList;
		tyInternal.fbRlsNodeHdlList.Timeout			:= tTimeOut;
		tyInternal.fbRlsNodeHdlList(Execute := TRUE);
			
		IF tyInternal.fbRlsNodeHdlList.Done = TRUE THEN
			udiStatus	:= 0;
		ELSIF tyInternal.fbRlsNodeHdlList.Error = TRUE THEN
			udiStatus	:= 1754;	//Release Node Handle Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbRlsNodeHdlList(Execute := FALSE);
		
	END_IF
	
END_FUNCTION_BLOCK
