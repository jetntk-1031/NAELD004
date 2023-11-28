
(* //OPCUA Method Call *)
FUNCTION_BLOCK fbOPCUAMoniteredItemAddList
	IF (bEn = TRUE) AND (udiStatus >= 65534) THEN
		
		udiStatus := 65535;
		
		tyInternal.fbMointerItemAddList.SubscriptionHdl	:= dwSubHdl;
		
		tyInternal.fbMointerItemAddList.NodeHdlCount	:= uiTagNmCount;
		
		tyInternal.fbMointerItemAddList.NodeHdls		:= a_dwNodeHdlList;
	
		//tyInternal.fbMointerItemAddList.NodeAddInfos		:= a_eNodeAdditionalInfoList;
		
		tyInternal.fbMointerItemAddList.Timeout			:= tTimeOut;
				

		
		tyInternal.fbMointerItemAddList(Execute := TRUE,
			Variables := a_sClientTagNm,
			MonitoringSettings:= a_eMonitoringSetting,
			ValuesChanged := a_bValueChanged,
			RemainingValueCount := a_uiRemainingValueCount,
			TimeStamps := a_dtTimeStamps,
			NodeQualityIDs := a_dwNodeQualityIDs 
			);

		IF tyInternal.fbMointerItemAddList.Done = TRUE THEN
			udiStatus	:= 0;
			a_dwMonitorHdl := tyInternal.fbMointerItemAddList.MonitoredItemHdls;
		ELSIF tyInternal.fbMointerItemAddList.Error = TRUE THEN
			udiStatus	:= 1753; //Method Get Handle Error

		END_IF
		
	ELSIF (bEn = FALSE) AND (udiStatus <> 65534) THEN
		
		udiStatus	:= 65534;
		tyInternal.fbMointerItemAddList(Execute := FALSE,
			Variables := a_sClientTagNm,
			MonitoringSettings:= a_eMonitoringSetting,
			ValuesChanged := a_bValueChanged,
			RemainingValueCount := a_uiRemainingValueCount,
			TimeStamps := a_dtTimeStamps,
			NodeQualityIDs := a_dwNodeQualityIDs 
			);

		//memset(ADR(a_dwMonitorHdl),0,SIZEOF(a_dwMonitorHdl));
	END_IF
END_FUNCTION_BLOCK
