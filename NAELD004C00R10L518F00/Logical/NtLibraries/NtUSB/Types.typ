
TYPE
	tyCloseUSBInternal : 	STRUCT 
		fbXopenUSB : FRM_xopen;
		fbSafetyRmvUSB : FRM_close; (*TCP Send*)
	END_STRUCT;
	tyDecodeStdKeyInternal : 	STRUCT 
		udiReadIdx : UDINT;
		udiReadIdxOld : UDINT;
		usiHIDCodeList : USINT;
		usiHIDCodeList2 : USINT;
		sDataBuff : STRING[10];
		sDataBuff1 : STRING[10];
		sDataBuff2 : STRING[10];
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyNodeListGetInternal : 	STRUCT 
		udiUsbNodeList : ARRAY[0..5]OF UDINT;
		usiUsbNodeIdx : USINT;
		fbUsbNodeListGet : UsbNodeListGet;
	END_STRUCT;
	tyReadUSBInternal : 	STRUCT 
		usi : USINT;
		fbXopenUSB : fbXOpenUSB;
		fbReadUSB : fbReadUSB;
		fbXCloseUSB : fbSafetyRmvUSB;
	END_STRUCT;
	tyReleaseBuffInternal : 	STRUCT 
		fbRlsBuffUSB : FRM_rbuf;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUSBInternal : 	STRUCT 
		udiReadIdx : UDINT;
		fbXopenUSB : FRM_xopen;
		fbReadUSB : FRM_read;
		fbRlsBuffUSB : FRM_rbuf;
		fbDecodeStdKey : fbDecodeStdKey;
	END_STRUCT;
	tyUsbNodeGetInternal : 	STRUCT 
		tyUSBDevice : usbNode_typ;
		fbUsbNodeGet : UsbNodeGet;
	END_STRUCT;
	tyXOpenUSBInternal : 	STRUCT 
		fbGetUSBDev : fbGetUSBDev; (*TCP Send*)
		fbXOpenUSB : FRM_xopen; (*TCP Send*)
	END_STRUCT;
END_TYPE
