
FUNCTION_BLOCK fbOPCUAConnect (*OPCUA Connect*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		tyOPCUAParam : tyOPCUAParam; (*OPCUA Parameter*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
	END_VAR
	VAR_OUTPUT
		dwConnectionHdl : DWORD; (*Connection Handle*)
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUADisconnect (*OPCUA Disconnect*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAGetConnectionStatus (*OPCUA Get Connection Status*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
	END_VAR
	VAR_OUTPUT
		eConnectionStat : UAConnectionStatus; (*OPCUA Connection Status*)
		eServerStat : UAServerState; (*OPCUA Server State*)
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAGetNodeHdlList (*OPCUA Get Node Handle List*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		uiTagNmCnt : UINT; (*Tag Name Counter*)
		a_sServerTagNm : ARRAY[0..MAX_INDEX_NODELIST] OF STRING[255]; (*Server Tag Name List*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
		usiNSIdx : UINT; (*Namespace Index*)
	END_VAR
	VAR_OUTPUT
		a_dwNodeHdlList : ARRAY[0..MAX_INDEX_NODELIST] OF DWORD; (*Node Handle List*)
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUARlsNodeHdlList (*OPCUA Release Node Handle List*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		uiTagNmCnt : UINT; (*Tag Name Counter*)
		a_dwNodeHdlList : ARRAY[0..MAX_INDEX_NODELIST] OF DWORD; (*Node Handle List*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAReadList (*OPCUA Read*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		uiTagNmCnt : UINT; (*Tag Name Counter*)
		a_dwNodeHdlList : ARRAY[0..MAX_INDEX_NODELIST] OF DWORD; (*Node Handle List*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
		a_sClientTagNm : ARRAY[0..MAX_INDEX_NODELIST] OF STRING[255]; (*Client Tag Name List*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAWriteList (*OPCUA Write*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL; (*Enable*)
		dwConnectionHdl : DWORD; (*Connection Handle*)
		uiTagNmCnt : UINT; (*Tag Name Counter*)
		a_dwNodeHdlList : ARRAY[0..MAX_INDEX_NODELIST] OF DWORD; (*Node Handle List*)
		tTimeOut : TIME := T#10s; (*OPCUA Time Out*)
		a_sClientTagNm : ARRAY[0..MAX_INDEX_NODELIST] OF STRING[255]; (*Client Tag Name List*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK fbOPCUAMethodGetHandle (*OPCUA Method Get Handle*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL;
		dwConnectionHdl : DWORD;
		tTimeOut : TIME := T#10s;
		uiNSIdx : UINT;
		sObjectIdentifier : STRING[15];
		sMethodIdentifier : STRING[15];
	END_VAR
	VAR_OUTPUT
		dwMethodHdl : DWORD;
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_OK} FUNCTION_BLOCK fbOPCUAMethodCall (*//OPCUA Method Call*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : BOOL;
		dwConnectionHdl : DWORD;
		dwMethodHdl : DWORD;
		tTimeOut : TIME := T#10s;
		a_uamaInputArguments : ARRAY[0..MAX_INDEX_ARGUMENTS] OF UAMethodArgument;
		a_uamaOutputArguments : ARRAY[0..MAX_INDEX_ARGUMENTS] OF UAMethodArgument;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUASubscriptionCreate
	VAR_INPUT
		bEn : BOOL;
		dwConnectionHdl : DWORD;
		bPublishingEn : BOOL;
		bytePriority : BYTE;
		tTimeOut : TIME := T#10s;
		tPublishingInterval : TIME;
	END_VAR
	VAR_OUTPUT
		dwSubHdl : DWORD;
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAMoniteredItemAddList
	VAR_INPUT
		bEn : BOOL;
		dwSubHdl : DWORD;
		uiTagNmCount : UINT;
		a_dwNodeHdlList : ARRAY[0..MAX_INDEX_MONITORLIST] OF DWORD;
		a_eNodeAdditionalInfoList : ARRAY[0..MAX_INDEX_MONITORLIST] OF UANodeAdditionalInfo;
		tTimeOut : TIME := T#10s;
		a_sClientTagNm : ARRAY[0..MAX_INDEX_MONITORLIST] OF STRING[255];
		a_eMonitoringSetting : ARRAY[0..MAX_INDEX_MONITORLIST] OF UAMonitoringParameters;
	END_VAR
	VAR_OUTPUT
		a_bValueChanged : ARRAY[0..MAX_INDEX_MONITORLIST] OF BOOL;
		a_uiRemainingValueCount : ARRAY[0..MAX_INDEX_MONITORLIST] OF UINT;
		a_dtTimeStamps : ARRAY[0..MAX_INDEX_MONITORLIST] OF DATE_AND_TIME;
		a_dwNodeQualityIDs : ARRAY[0..MAX_INDEX_MONITORLIST] OF DWORD;
		a_dwMonitorHdl : ARRAY[0..MAX_INDEX_MONITORLIST] OF DWORD;
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUAMoniteredItemRemoveList
	VAR_INPUT
		bEn : BOOL;
		dwSubHdl : DWORD;
		uiTagNmCount : UINT;
		a_dwMonitorHld : ARRAY[0..MAX_INDEX_MONITORLIST] OF DWORD;
		tTimeOut : TIME := T#10s;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbOPCUASubscriptionDelete
	VAR_INPUT
		bEn : BOOL;
		dwSubHdl : DWORD;
		tTimeOut : TIME := T#10s;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyOPCUAInternal;
	END_VAR
END_FUNCTION_BLOCK
