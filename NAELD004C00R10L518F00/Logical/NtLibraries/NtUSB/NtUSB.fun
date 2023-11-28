
FUNCTION_BLOCK fbGetUSBDev
	VAR_INPUT
		bEn : BOOL;
		uiFilterInterfaceClass : UINT;
		uiFilterInterfaceSubClass : UINT;
		uiVendorID : UINT;
		uiProductID : UINT;
	END_VAR
	VAR_OUTPUT
		asDeviceNm : ARRAY[0..5] OF STRING[80];
		udiStatus : UDINT;
		udiNodeId : UDINT;
	END_VAR
	VAR
		usi : USINT;
		tyInternal : tyNodeListGetInternal;
		tyInternal1 : tyUsbNodeGetInternal;
	END_VAR
END_FUNCTION_BLOCK
(**)

FUNCTION_BLOCK fbReadUSBDev
	VAR_INPUT
		bEn : BOOL;
		udiDevice : UDINT;
	END_VAR
	VAR_OUTPUT
		udiUSBIdent : UDINT;
		bNewBarcode : BOOL;
		sBarcodeOut : STRING[255];
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyReadUSBInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbDecodeStdKey
	VAR_INPUT
		bEn : BOOL;
		usiReadData : ARRAY[0..1024] OF USINT;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
		sDecodeData : STRING[255];
	END_VAR
	VAR
		tyInternal : tyDecodeStdKeyInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbSafetyRmvUSB
	VAR_INPUT
		bEn : BOOL;
		udiUSBIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyCloseUSBInternal;
	END_VAR
END_FUNCTION_BLOCK
(**)

FUNCTION_BLOCK fbRlsBuffUSB
	VAR_INPUT
		bEn : BOOL;
		udiUSBIdent : UDINT;
		udiUSBBuffer : UDINT;
		udiUSBBuflng : UDINT;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyUSBInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbXOpenUSB
	VAR_INPUT
		bEn : BOOL;
		udiDevice : UDINT;
		udiMode : UDINT := 0;
		udiConfig : UDINT := 0;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT;
		udiUSBIdent : UDINT;
	END_VAR
	VAR
		tyInternal : tyUSBInternal;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbReadUSB
	VAR_INPUT
		bEn : BOOL;
		udiUSBIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		sBarcodeOut : STRING[255];
		udiStatus : UDINT;
	END_VAR
	VAR
		tyInternal : tyUSBInternal;
	END_VAR
END_FUNCTION_BLOCK
