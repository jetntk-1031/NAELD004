
ACTION Act_OptP0200BarCodeScannerAndOthers:
	
	//Mask
	
	IF p_bBuffer1MagPresent = FALSE 
		AND p_bBuffer2MagPresent = FALSE 
		AND  p_bBuffer3MagPresent = FALSE 
		AND p_bBuffer4MagPresent = FALSE  
		THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBtnBarCodeScan.uiMaskRtStat));
		fbLMCfbTm(IN:= FALSE); //Reset LMC feedback timer
	ELSE
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBtnBarCodeScan.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));
	END_IF
	
	//BarCode Scanner Pressed
	IF tyP0200OpsGen.tyOps.tyBtnBarCodeScan.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyBtnBarCodeScan.bRtCompl := FALSE;
		
		tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue := '';
		tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));		
	END_IF
	
	//String Check
	IF LEN(tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue) > 15 THEN
		p_tyC0008MsgBox ACCESS (ADR(tyP0200OpsGen.tyMsgBoxBarCode));
	END_IF
	
	IF tyP0200OpsGen.tyMsgBoxBarCode.tyBtnNo.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyMsgBoxBarCode.tyBtnNo.bRtCompl 	:= FALSE;
		tyP0200OpsGen.tyMsgBoxBarCode.tyBtnNo.bValue	:= FALSE;
				
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
		tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue	:= '';		
		tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
	END_IF	
		
	//Trolley Unlock
	//ops control
END_ACTION
