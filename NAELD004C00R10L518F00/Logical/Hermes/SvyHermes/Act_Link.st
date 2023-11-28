(** 2021-08-01 **)
ACTION Act_Link:
	
	//Board Arrived
	p_bUSHermesStopTransport1 := p_bConvHvBrd AND p_bPullerRetRS;
	IF p_eOpsTravLifLDPosGo = 1 AND p_bConvHvBrd THEN
		sMagPos := '1';
		iSlotId := DINT_TO_INT(p_diBuffer1Slt);
	ELSIF p_eOpsTravLifLDPosGo = 2 AND p_bConvHvBrd THEN
		sMagPos := '2';
		iSlotId := DINT_TO_INT(p_diBuffer2Slt);
	ELSIF p_eOpsTravLifLDPosGo = 3 AND p_bConvHvBrd THEN
		sMagPos := '3';
		iSlotId := DINT_TO_INT(p_diBuffer3Slt);
	END_IF
	
	//Receive Alive Time
	p_tyParam.tRcvAlive	:= p_tyParam.tSndAlive * 2;
	
	// For BoardDeparted's BoardTransfer Parameter
	IF p_bFirstMcIntheLine = TRUE AND p_bNewBrdAvlLastZone THEN
		p_eBoardTransfer1 := HermesLoaded;
	ELSIF p_bFirstMcIntheLine = TRUE AND p_bNewBrdAvlLastZone = FALSE THEN
		p_eBoardTransfer1 := HermesLoaded;
	ELSIF p_bFirstMcIntheLine = FALSE AND p_bNewBrdAvlLastZone THEN
		p_eBoardTransfer1 := HermesLoaded;
	ELSIF p_bFirstMcIntheLine = FALSE AND p_bNewBrdAvlLastZone = FALSE THEN
		p_eBoardTransfer1 := HermesLoaded;
	END_IF
	
	//update magazine mmy
	IF a_MagAccOrder[1]<>0 AND a_MagAccOrder[2]<>0 AND a_MagAccOrder[3]<>0 THEN
	ELSIF a_MagAccOrder[1]<>10 AND a_MagAccOrder[2]<>10 AND a_MagAccOrder[3]<>10 THEN
		FOR i := 1 TO 3 DO
			IF a_MagAccOrder[i] <> 0 THEN
				a_MagAccOrder[i] := a_MagAccOrder[i] -10;
			END_IF
		END_FOR
	END_IF
	
	//Delete WO
	p_bDeleteWorkOrder := p_bUIDeleteWorkOrder OR p_bAutoRcpCurrDeleteSendWO;
	
	
	//Info Message
	p_sInfoMsg		:= 'Hermes Configuration Received From Supervisory System';
	
	//Info Message 1
	p_sInfoMsg1     := 'Work Order Info Received From Supervisory System';
	
	//Info Message 2
//	p_sInfoMsg2     := 'Work Order Info Not Found From Supervisory System';
	p_sInfoMsg2     := 'Work Order Or Data Info Invalid From Supervisory System';
	p_sInfoMsg2		:= CONCAT(p_sInfoMsg2 , '$r$n');
	p_sInfoMsg2  	:= CONCAT(p_sInfoMsg2 , 'Please Try Again');
	
	//Info Message 3
	p_sInfoMsg3     := 'Query Work Order Not Possible';
	p_sInfoMsg3		:= CONCAT(p_sInfoMsg3 , '$r$n');
	p_sInfoMsg3  	:= CONCAT(p_sInfoMsg3 , 'Please Empty the Machines');
	p_sInfoMsg3		:= CONCAT(p_sInfoMsg3 , '$r$n');
	p_sInfoMsg3  	:= CONCAT(p_sInfoMsg3 , 'and Try Again');
	
	//Info Message 4
	p_sInfoMsg4     := 'Work Order Info Received From Supervisory System';
	p_sInfoMsg4		:= CONCAT(p_sInfoMsg4 , '$r$n');
	p_sInfoMsg4  	:= CONCAT(p_sInfoMsg4 , 'PCB Work Order Info Will Be Queue for next Batch');

	
	//Accept WorkOrderId from Supervisory System, adjust accordingly 
	//(Loader Machine: Magazine area empty, Lifter area empty)
	//(Destacker Machine: load pcb stack area empty and conveyor empty)
	
	p_bAcceptCondition := p_bAllZonesEmpty; (*AND p_bUITopUpBrdRdy =FALSE*);
	
//	IF 	p_tyUSBoardAvailableRcv.tyData.sWorkOrderId = '' OR p_tyUSBoardAvailableRcv.tyData.sWorkOrderId <> tySendBypassWorkOrderInfoAcc.tyData.sWorkOrderId OR p_tyUSBoardAvailableRcv.tyData.sBatchId = '' OR  p_tyUSBoardAvailableRcv.tyData.sBatchId <> tySendBypassWorkOrderInfoAcc.tyData.sBatchId OR 
//		p_tyUSBoardAvailableRcv.tyData.rWidth = 0 OR p_tyUSBoardAvailableRcv.tyData.rWidth <> tySendBypassWorkOrderInfoAcc.tyData.rWidth THEN
//		IF p_tyUSBoardAvailableRcv.tyData.sTopBarcode <> '' OR p_tyUSBoardAvailableRcv.tyData.sBottomBarcode <> '' THEN 
//			sUSBarcode := p_tyUSBoardAvailableRcv.tyData.sTopBarcode; 
//			bNewIncomingBoard := TRUE;
//		ELSIF p_tyUSBoardAvailableRcv.tyAvl.bTopBarcode = FALSE OR p_tyUSBoardAvailableRcv.tyAvl.bBottomBarcode THEN
//			sUSBarcode := p_tyUSBoardAvailableRcv.tyData.sBottomBarcode; 
//			bNewIncomingBoard := TRUE;
//		ELSE
//			bNewIncomingBoard := FALSE;	
//		END_IF	
//	ELSIF p_tyUSBoardForecastRcv.tyAvl.bWorkOrderId OR p_tyUSBoardForecastRcv.tyAvl.bBatchId OR p_tyUSBoardForecastRcv.tyAvl.bWeight THEN
//		
//		IF p_tyUSBoardForecastRcv.tyData.sWorkOrderId = '' OR p_tyUSBoardForecastRcv.tyData.sWorkOrderId <> tySendBypassWorkOrderInfoAcc.tyData.sWorkOrderId OR p_tyUSBoardForecastRcv.tyData.sBatchId = '' OR  p_tyUSBoardForecastRcv.tyData.sBatchId <> tySendBypassWorkOrderInfoAcc.tyData.sBatchId OR 
//			p_tyUSBoardForecastRcv.tyData.rWidth = 0 OR p_tyUSBoardForecastRcv.tyData.rWidth <> tySendBypassWorkOrderInfoAcc.tyData.rWidth THEN	
//			
//			IF p_tyUSBoardForecastRcv.tyData.sTopBarcode <> '' OR p_tyUSBoardForecastRcv.tyData.sBottomBarcode <> '' THEN 
//				
//			sUSBarcode := p_tyUSBoardForecastRcv.tyData.sTopBarcode; 
//			bNewIncomingBoard := TRUE;
//			ELSIF p_tyUSBoardForecastRcv.tyAvl.bTopBarcode = FALSE OR p_tyUSBoardForecastRcv.tyAvl.bBottomBarcode THEN
//			sUSBarcode := p_tyUSBoardForecastRcv.tyData.sBottomBarcode; 
//			bNewIncomingBoard := TRUE;
//			ELSE
//				bNewIncomingBoard := FALSE;	
//			END_IF
//		ELSE
//			bNewIncomingBoard := FALSE;	
//		END_IF
//	ELSE
//		bNewIncomingBoard := FALSE;	
//	END_IF
	
	
//	IF EDGENEG (p_bQueryWorkOrderInfo)  THEN 
//		IF p_bOpsConvWaitForTopUpBrd THEN
//			bManualQueryWO := TRUE;
//		ELSIF p_bOpsConvWaitForTopUpBrd = FALSE THEN
//			bManualQueryWO := FALSE;
//		END_IF
//	END_IF
//	
//	IF p_bOpsConvWaitForTopUpBrd = FALSE THEN 
//		bManualQueryWO := FALSE; 
//	END_IF
	
	IF diReqLoaderWidthInUM = 0 THEN                           //Load Data during bootup
		diReqLoaderWidthInUM := REAL_TO_DINT(tySendWorkOrderInfoAcc.tyData.rWidth * 1000);
	END_IF
		
	IF EDGENEG (p_bLinkStartupRun) THEN 
		sWorkOrderId := tySendWorkOrderInfoNewAcc.tyData.sWorkOrderId;
	END_IF
	
	//	phase 2
//	bChangeOverLifter := lifterEmpty + no UBA + waitTimeOut; 
//	bChangeOverLoader := lifterEmpty + UBA + waitTimeOut; 
//	IF  p_bAcceptConditionLifter  THEN 
//		tySendWorkOrderInfoAccPublish := tySendWorkOrderInfoAcc;
//	ELSIF  p_bAcceptConditionLoader  THEN 
//		tySendWorkOrderInfoAccPublish := tySendWorkOrderInfoAcc;
//	END_IF
END_ACTION
