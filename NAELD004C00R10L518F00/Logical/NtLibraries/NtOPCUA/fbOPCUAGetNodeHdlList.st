
(* OPCUA Get Node Handle List *)
FUNCTION_BLOCK fbOPCUAGetNodeHdlList
	
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus	:= 65535;
		
		tyInternal.fbGetNodeHdlList.ConnectionHdl	:= dwConnectionHdl;
		tyInternal.fbGetNodeHdlList.NodeIDCount		:= uiTagNmCnt;
		tyInternal.fbGetNodeHdlList.Timeout			:= tTimeOut;
		
		IF usiNSIdx = 6 THEN
			FOR tyInternal.ui := 0 TO MAX_INDEX_NODELIST DO
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].NamespaceIndex	:= usiNSIdx;
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].Identifier		:= a_sServerTagNm[tyInternal.ui];
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].IdentifierType	:= UAIdentifierType_String;
			END_FOR
		ELSE
			FOR tyInternal.ui := 0 TO MAX_INDEX_NODELIST DO
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].NamespaceIndex	:= usiNSIdx;
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].Identifier		:= a_sServerTagNm[tyInternal.ui];
				tyInternal.fbGetNodeHdlList.NodeIDs[tyInternal.ui].IdentifierType	:= UAIdentifierType_Numeric;
			END_FOR
		END_IF
		
		

		tyInternal.fbGetNodeHdlList(Execute := TRUE);
				
		IF tyInternal.fbGetNodeHdlList.Done = TRUE THEN
			a_dwNodeHdlList	:= tyInternal.fbGetNodeHdlList.NodeHdls;
			udiStatus		:= 0;
		ELSIF tyInternal.fbGetNodeHdlList.Error = TRUE THEN
			udiStatus		:= 1751;	//Get Node Handle Error
		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		
		tyInternal.fbGetNodeHdlList(Execute := FALSE);
		
	END_IF
	
END_FUNCTION_BLOCK
