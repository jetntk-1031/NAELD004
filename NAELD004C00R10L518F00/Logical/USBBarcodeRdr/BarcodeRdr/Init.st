(** 2020-08-29 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)

	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USBRdrStat		:= ADR(eStat);
	p_USBRdrStatus		:= ADR(eMainStatus);
	p_USBRdrStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_USBRdrAlmData		:= ADR(tyAlmData);
	p_USBRdrAlmData1	:= ADR(tyAlmData1);
	p_USBRdrAlmData2	:= ADR(tyAlmData2);
	
	//Output
	p_USBRdrBarcodeOut 	:= ADR(sBarcodeOut);
	p_USBDisconnected   := ADR(bUSBDisconnected);
	(* Always Change If Project Change *)
	
END_PROGRAM