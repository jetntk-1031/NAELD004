(** 2021-08-01 **)
ACTION Act_Background_QueryWorkOrderInfo:
	
	IF eStatus2 <> Error THEN  
		IF  uiMilliSecOld <> p_tyDTStructure.millisec THEN
			IF EDGEPOS(p_bLinkOpsMagConvLD1QueryWO) THEN //query false when rcp loaded
				sMagazineId 		:= '1'; //Magazine position to mes 
				bGUIDInserted[1]	:= FALSE;
				a_bQueryQueue[i2] 	:= TRUE;
				i2 := i2 + 1;
			ELSIF EDGEPOS(p_bLinkOpsMagConvLD2QueryWO) THEN
				sMagazineId 		:= '2';
				bGUIDInserted[2]	:= FALSE;
				a_bQueryQueue[i2] 	:= TRUE;
				i2 := i2 + 1;
			ELSIF EDGEPOS(p_bLinkOpsMagConvLD3QueryWO) THEN
				sMagazineId 		:= '3';
				bGUIDInserted[3]	:= FALSE;
				a_bQueryQueue[i2] 	:= TRUE;
				i2 := i2 + 1;
			END_IF
		END_IF
		
//		IF EDGEPOS(p_bQueryWorkOrderInfo) AND p_bAcceptCondition THEN
//		IF (EDGEPOS((p_eLinkCustomerReq = Siemens AND p_bOpsConvWaitForTopUpBrd OR (p_usiLinkProdRcpCurrRcpMcMod = 0 AND bQueryloaderWorkOrder = FALSE) AND bConnected AND p_bOpsRun) AND p_bQueryWorkOrderInfo = FALSE AND bManualQueryWO = FALSE AND p_eLinkCustomerReq = NA)  (*AND p_bAcceptCondition*) AND bReplyWorkOrderInfo= FALSE AND sWorkOrderId = ''))
//			 OR EDGEPOS (p_bQueryWorkOrderInfo) THEN        //Query For Loader           //ADD
//		IF (EDGEPOS((p_bSiemensMcModeChgPrep AND (p_bOpsConvWaitForTopUpBrd OR p_usiLinkProdRcpCurrRcpMcMod = 0)  AND bQueryloaderWorkOrder = FALSE AND bConnected AND p_bOpsRun) AND p_bQueryWorkOrderInfo = FALSE AND bManualQueryWO = FALSE AND bReplyWorkOrderInfo= FALSE AND sWorkOrderId = ''))
//			 OR EDGEPOS (p_bQueryWorkOrderInfo) THEN        //Query For Loader           //ADD	
//		IF bQueryloaderWorkOrder = FALSE AND bConnected AND p_bOpsRun AND p_bQueryWorkOrderInfo = FALSE AND bManualQueryWO = FALSE AND bReplyWorkOrderInfo= FALSE AND sWorkOrderId = ''
//			OR EDGEPOS (p_bQueryWorkOrderInfo) THEN        //Query For Loader           //ADD	
		IF bQueryloaderWorkOrder = FALSE AND bConnected AND p_bOpsRun AND p_bQueryWorkOrderInfo = FALSE AND bManualQueryWO = FALSE AND bReplyWorkOrderInfo= FALSE AND sWorkOrderId = ''
			OR a_bQueryQueue[0]  THEN
			//OR EDGEPOS (p_bLinkOpsMagConvLD1QueryWO) OR EDGEPOS (p_bLinkOpsMagConvLD2QueryWO) OR EDGEPOS (p_bLinkOpsMagConvLD3QueryWO) THEN        //Query For Loader           //ADD	

			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeQueryWorkOrderInfo);
				
			fHermesGenerateUUID(ADR(tyQueryWorkOrderInfo.tyData.sQueryId) , p_tyDTStructure , pa_usiMacAddr); //Generate QueryID
			uiMilliSecOld :=  p_tyDTStructure.millisec;
			
			tyQueryWorkOrderInfo.tyData.sMachineId							:= p_sMcId;
			IF sMagazineId = '1'  AND bGUIDInserted[1] = FALSE THEN //Magazine position to mes
				a_MagGUID[1] 		:= tyQueryWorkOrderInfo.tyData.sQueryId;
				bGUIDInserted[1] 	:= TRUE;
			ELSIF sMagazineId = '2' AND bGUIDInserted[2] = FALSE THEN
				a_MagGUID[2] 		:= tyQueryWorkOrderInfo.tyData.sQueryId;
				bGUIDInserted[2] 	:= TRUE;
			ELSIF sMagazineId = '3' AND bGUIDInserted[3] = FALSE THEN
				a_MagGUID[3] 		:= tyQueryWorkOrderInfo.tyData.sQueryId;
				bGUIDInserted[3] 	:= TRUE;
			END_IF
			
			memcpy(ADR(a_bQueryQueue[0]) , ADR(a_bQueryQueue[1]) , SIZEOF(a_bQueryQueue[0]) * 3);
			a_bQueryQueue[3]	:= FALSE;
			i2 := i2 - 1;
			
			tyQueryWorkOrderInfo.tyData.sMagazineId							:= p_sMagazineId;
			tyQueryWorkOrderInfo.tyData.iSlotId								:= p_iSlotId;
			tyQueryWorkOrderInfo.tyData.sBarcode						    := p_sBarcode;
			tyQueryWorkOrderInfo.tyAvl.bQueryId							    := tyQueryWorkOrderInfo.tyData.sQueryId <> '';
			tyQueryWorkOrderInfo.tyAvl.bMachineId							:= tyQueryWorkOrderInfo.tyData.sMachineId <> '';
			tyQueryWorkOrderInfo.tyAvl.bMagazineId							:= tyQueryWorkOrderInfo.tyData.sMagazineId <> '';
			tyQueryWorkOrderInfo.tyAvl.bSlotId								:= tyQueryWorkOrderInfo.tyData.iSlotId <> 0;
			tyQueryWorkOrderInfo.tyAvl.bBarcode								:= tyQueryWorkOrderInfo.tyData.sBarcode <> '';
			
			bQueryloaderWorkOrder := TRUE; 
			bRcvWorkOrderInfo1 := FALSE;                     //ADD
			bRcvWorkOrderInfo2 := FALSE;
			bSndWorkOrderInfo  := FALSE;

		END_IF
		                                                                      //Reply Bypass Workorder
//		IF EDGEPOS((p_bSiemensMcModeChgPrep AND bConnected AND p_bOpsRun) AND bReplyBypassWorkOrderInfo= FALSE AND p_bUSHermesUSRdy AND bNewIncomingBoard)  THEN        //Query For Bypass mode           //ADD
//			
//
//			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeQueryBypassWOInfo);
//				
//			fHermesGenerateUUID(ADR(tyQueryBypassWorkOrderInfo.tyData.sQueryId) , p_tyDTStructure , pa_usiMacAddr); //Generate QueryID
//
//			tyQueryBypassWorkOrderInfo.tyData.sMachineId							:= p_sMcId;
//			tyQueryBypassWorkOrderInfo.tyData.sMagazineId							:= p_sMagazineId;
//			tyQueryBypassWorkOrderInfo.tyData.iSlotId								:= p_iSlotId;
//			tyQueryBypassWorkOrderInfo.tyData.sBarcode						        := sUSBarcode;
//				
//			tyQueryBypassWorkOrderInfo.tyAvl.bQueryId							    := tyQueryBypassWorkOrderInfo.tyData.sQueryId <> '';
//			tyQueryBypassWorkOrderInfo.tyAvl.bMachineId						     	:= tyQueryBypassWorkOrderInfo.tyData.sMachineId <> '';
//			tyQueryBypassWorkOrderInfo.tyAvl.bMagazineId							:= tyQueryBypassWorkOrderInfo.tyData.sMagazineId <> '';
//			tyQueryBypassWorkOrderInfo.tyAvl.bSlotId								:= tyQueryBypassWorkOrderInfo.tyData.iSlotId <> 0;
//			tyQueryBypassWorkOrderInfo.tyAvl.bBarcode								:= tyQueryBypassWorkOrderInfo.tyData.sBarcode <> '';
//			
//			bQueryBypassWorkOrder := TRUE;
//			bRcvWorkBypassOrderInfo := FALSE; 
//			bRcvBypassWorkOrderInfo2 := FALSE; 
//			bRcvWorkOrderInfo3      :=FALSE;
//		END_IF
		
		
		IF p_bQueryWorkOrderInfo AND p_bAcceptCondition =FALSE THEN
			bRstWorkOrderInfo := TRUE;
		END_IF
		
		IF tyMsgTypeRcv.bSendWorkOrderInfo THEN
			
//			IF p_bQueryWorkOrderInfo AND (udiStatus2 = 0) THEN //After CmpParamRcv
//			IF (p_bQueryWorkOrderInfo OR p_bOpsConvWaitForTopUpBrd) AND (udiStatus2 = 0) AND p_tyDI.bTopCoverSWSig THEN //After CmpParamRcv
			IF (p_bQueryWorkOrderInfo OR p_eLinkCustomerReq = Siemens) AND (udiStatus2 = 0) THEN //After CmpParamRcv
				IF tySendWorkOrderInfoRcv.tyAvl.bWorkOrderId AND tySendWorkOrderInfoRcv.tyData.sWorkOrderId <> '' AND 
				   tySendWorkOrderInfoRcv.tyData.rWidth >= 50.0 AND tySendWorkOrderInfoRcv.tyData.rWidth <= 460.0	(*AND p_bAcceptCondition*) THEN //Wait Accept Conditon On
				
					//Priority setting
					memset(ADR(usiSum),0,SIZEOF(usiSum));
					FOR i := 1 TO 3 DO 
						usiSum[i]	:= usiSum[i] + usiMagPrior[i];
						IF a_MagGUID[i] = tySendWorkOrderInfoRcv.tyData.sQueryId THEN
							usiSum[i] := usiSum[i] + 10;
						END_IF
					END_FOR
					FOR i1:=1 TO 3 DO
						//Assign Magazine order
						IF  usiSum[i1] >=10 THEN
							IF a_MagAccOrder[1]=0 AND a_MagAccOrder[2]=0 AND a_MagAccOrder[3]=0 THEN
								a_MagAccOrder[i1] := 10; //output
								usiMagOrderPos := i1;
							ELSIF ((a_MagAccOrder[1]=0 AND a_MagAccOrder[2]=0) OR 
								(a_MagAccOrder[2]=0 AND a_MagAccOrder[3]=0) OR 
								(a_MagAccOrder[1]=0 AND a_MagAccOrder[3]=0)) AND a_MagAccOrder[i1] =0 THEN
								a_MagAccOrder[i1] := 20;
								usiMagOrderPos := i1;
							ELSIF (a_MagAccOrder[1]=0 OR a_MagAccOrder[2]=0 OR a_MagAccOrder[3]=0) AND a_MagAccOrder[i1] =0 THEN
								a_MagAccOrder[i1] := 30;
								usiMagOrderPos := i1;
							END_IF
							bGUIDInserted[i1] := FALSE;
						END_IF
					END_FOR
					
					bSndWorkOrderInfo  := TRUE;
					bRcvWorkOrderInfo1 := TRUE;
					bRetainNewAcc      := FALSE;                            //ADD
					bQueryloaderWorkOrder := FALSE; 
					tySendWorkOrderInfoAcc := tySendWorkOrderInfoRcv;
					tyMsgTypeRcv.bSendWorkOrderInfo := FALSE;
					sWorkOrderId := tySendWorkOrderInfoRcv.tyData.sWorkOrderId;
					
					
					
				ELSIF (tySendWorkOrderInfoRcv.tyAvl.bWorkOrderId = FALSE) OR tySendWorkOrderInfoRcv.tyData.sWorkOrderId = '' OR
					tySendWorkOrderInfoRcv.tyData.rWidth < 50.0 OR tySendWorkOrderInfoRcv.tyData.rWidth > 460.0  THEN
					bRcvWorkOrderInfo2 := TRUE;
					tyMsgTypeRcv.bSendWorkOrderInfo := FALSE;
				END_IF
				
//			ELSIF p_eLinkCustomerReq = Siemens AND (udiStatus5 = 0) THEN   
//				IF tySendWorkOrderInfoRcv.tyAvl.bWorkOrderId AND (tySendWorkOrderInfoRcv.tyData.sWorkOrderId = p_tyUSBoardAvailableRcv.tyData.sWorkOrderId OR tySendWorkOrderInfoRcv.tyData.sWorkOrderId = p_tyUSBoardForecastRcv.tyData.sWorkOrderId) AND 
//					tySendWorkOrderInfoRcv.tyAvl.bBatchId AND (tySendWorkOrderInfoRcv.tyData.sBatchId = p_tyUSBoardAvailableRcv.tyData.sBatchId OR tySendWorkOrderInfoRcv.tyData.sBatchId = p_tyUSBoardForecastRcv.tyData.sBatchId) AND  	
//					tySendWorkOrderInfoRcv.tyAvl.bWidth AND (tySendWorkOrderInfoRcv.tyData.rWidth = p_tyUSBoardAvailableRcv.tyData.rWidth OR tySendWorkOrderInfoRcv.tyData.rWidth = p_tyUSBoardForecastRcv.tyData.rWidth) AND  
//					tySendWorkOrderInfoRcv.tyData.rWidth >= 50.0 AND tySendWorkOrderInfoRcv.tyData.rWidth <= 460.0 THEN
//					bRcvWorkBypassOrderInfo := TRUE; 
//					tySendBypassWorkOrderInfoAcc := tySendWorkOrderInfoRcv;
//					tyMsgTypeRcv.bSendWorkOrderInfo := FALSE;	
//					bRcvWorkOrderInfo3      :=TRUE; 
//				ELSE
//					bRcvBypassWorkOrderInfo2 := TRUE;
//					tyMsgTypeRcv.bSendWorkOrderInfo := FALSE;
//				END_IF
				
			ELSIF p_bQueryWorkOrderInfo = FALSE  THEN
//			ELSIF p_bQueryWorkOrderInfo = FALSE  AND p_bLinkDIPresentSen = FALSE AND ((udiStatus2 = 0) OR (udiStatus5 = 0)) THEN	
				tyMsgTypeRcv.bSendWorkOrderInfo := FALSE;
			END_IF	
		END_IF
		
		IF EDGEPOS (bRcvWorkOrderInfo1 = TRUE AND p_bAcceptCondition) THEN
			
//			tyInfoData1.sProgNm		:= p_sProgNm;
//			tyInfoData1.udiCode		:= 10000;
//			tyInfoData1.eSeverity	:= AlmSeverityInfo;
//			tyInfoData1.sAlmMsg		:= p_sInfoMsg1;	
			
		ELSIF EDGEPOS( bRcvWorkOrderInfo2 = TRUE OR bRcvBypassWorkOrderInfo2) THEN
			
			tyInfoData2.sProgNm		:= p_sProgNm;
			tyInfoData2.udiCode		:= 10000;
			tyInfoData2.eSeverity	:= AlmSeverityInfo;
			tyInfoData2.sAlmMsg		:= p_sInfoMsg2;
			
//			bRcvWorkOrderInfo2      := FALSE; 
//			bRcvBypassWorkOrderInfo2 := FALSE; 
			
		ELSIF EDGEPOS (bRcvWorkOrderInfo1 = TRUE AND p_bAcceptCondition = FALSE) THEN
//			tyInfoData4.sProgNm		:= p_sProgNm;
//			tyInfoData4.udiCode		:= 10000;
//			tyInfoData4.eSeverity	:= AlmSeverityInfo;
//			tyInfoData4.sAlmMsg		:= p_sInfoMsg4;	
			
		END_IF
		
			
//		IF  bRstWorkOrderInfo = TRUE THEN
//			
//			tyInfoData3.sProgNm		:= p_sProgNm;
//			tyInfoData3.udiCode		:= 10000;
//			tyInfoData3.eSeverity	:= AlmSeverityInfo;
//			tyInfoData3.sAlmMsg		:= p_sInfoMsg3;	//'Query Work Order Not Possible'
//				
//		END_IF	

		
		IF EDGEPOS (bRcvWorkOrderInfo1 OR bRcvWorkOrderInfo2) THEN                       //ReplyWorkOrderInfo for loader
			
			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeReplyWorkOrderInfo);
			
			tyReplyWorkOrderInfo.tyData.sWorkOrderId					    := tySendWorkOrderInfoAcc.tyData.sWorkOrderId;
			tyReplyWorkOrderInfo.tyData.sBatchId					      	:= tySendWorkOrderInfoAcc.tyData.sBatchId;
		    IF p_bAcceptCondition AND bRcvWorkOrderInfo2 = FALSE AND p_usiLinkProdRcpCurrRcpMcMod =1  THEN 
				tyReplyWorkOrderInfo.tyData.iStatus							    := 1;          //WorkOrder accepted
				bReplyWorkOrderInfo                                             := TRUE; 
			ELSIF bRcvWorkOrderInfo2 THEN   
				tyReplyWorkOrderInfo.tyData.iStatus							    := 0;         //WorkOrder Rejected
				bReplyWorkOrderInfo                                             := FALSE;
				bRcvWorkOrderInfo2                                              := FALSE; 
			ELSE	
				tyReplyWorkOrderInfo.tyData.iStatus							    := 2;          //WorkOrder accepted and queue
				bReplyWorkOrderInfo                                             := TRUE;
			END_IF
			
			tyReplyWorkOrderInfo.tyAvl.bWorkOrderId					:= tySendWorkOrderInfoAcc.tyData.sWorkOrderId <> '';
			tyReplyWorkOrderInfo.tyAvl.bBatchId                     := tySendWorkOrderInfoAcc.tyData.sBatchId <> '';
			tyReplyWorkOrderInfo.tyAvl.bStatus                      :=  TRUE; 
			bRcvWorkOrderInfo1 := FALSE;
			bRcvWorkOrderInfo2 := FALSE;

		END_IF 
		
		IF EDGEPOS (bRcvWorkOrderInfo3 OR bRcvBypassWorkOrderInfo2) THEN                       //ReplyWorkOrderInfo for Bypass
			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeReplyWorkOrderInfo);
			
			tyReplyWorkOrderInfo.tyData.sWorkOrderId					    := tySendBypassWorkOrderInfoAcc.tyData.sWorkOrderId;
			tyReplyWorkOrderInfo.tyData.sBatchId					      	:= tySendBypassWorkOrderInfoAcc.tyData.sBatchId;
			
			IF p_bAcceptCondition AND p_usiLinkProdRcpCurrRcpMcMod =0 AND bRcvWorkOrderInfo3  THEN 
				tyReplyWorkOrderInfo.tyData.iStatus							    := 1;          //WorkOrder accepted
				bReplyBypassWorkOrderInfo                                       := TRUE; 
			ELSIF p_bAcceptCondition AND p_usiLinkProdRcpCurrRcpMcMod =1 AND bRcvWorkOrderInfo3 THEN	
				tyReplyWorkOrderInfo.tyData.iStatus							    := 2;          //WorkOrder accepted and queue
				bReplyBypassWorkOrderInfo                                       := TRUE; 
				bQueryBypassWorkOrder := FALSE;                                               //Add
			ELSIF bRcvBypassWorkOrderInfo2 THEN
				tyReplyWorkOrderInfo.tyData.iStatus							    := 0;          //WorkOrder Rejected
				bReplyBypassWorkOrderInfo                                       := TRUE; 
				bRcvBypassWorkOrderInfo2                                        :=FALSE;
			END_IF
			tyReplyWorkOrderInfo.tyAvl.bWorkOrderId					:= tySendWorkOrderInfoAcc.tyData.sWorkOrderId <> '';
			tyReplyWorkOrderInfo.tyAvl.bBatchId                     := tySendWorkOrderInfoAcc.tyData.sBatchId <> '';
			tyReplyWorkOrderInfo.tyAvl.bStatus                      :=  TRUE; 
		END_IF 
		
//		IF p_eLinkCustomerReq = Siemens AND p_usiLinkProdRcpCurrRcpMcMod =1 AND  bReplyWorkOrderInfo (*AND p_bLinkDIPresentSen =FALSE*) AND p_tyDI.bConvLftSen = FALSE AND p_tyDI.bConvRgtSen = FALSE (*AND p_tyDI.bTopCoverSWSig*) AND p_bAcceptCondition (*AND p_bUITopUpBrdRdy = FALSE*) THEN   //Add
		IF p_eLinkCustomerReq = Siemens AND  bReplyWorkOrderInfo AND p_tyDI.bConvLftSen = FALSE AND p_tyDI.bConvRgtSen = FALSE AND p_bAcceptCondition THEN   //Add
			bClearWorkOrder := FALSE; 
//			tySendWorkOrderInfoNewAcc := tySendWorkOrderInfoAcc;
			tySendWorkOrderInfoNewAcc := tySendWorkOrderInfoRcv;
			diReqWidthInUM	:= REAL_TO_DINT(tySendWorkOrderInfoAcc.tyData.rWidth * 1000);
			p_tyProdRcpCurrRcp.diWidthInUM	:= diReqWidthInUM;
			diReqLoaderWidthInUM := diReqWidthInUM;                 //ADD
			bReplyWorkOrderInfo := FALSE;                           //ADD
			bRetainNewAcc := TRUE;                                  //ADD
			bSendBoardForecast := TRUE;                             //ADD
//		ELSIF p_eLinkCustomerReq = Siemens AND p_usiLinkProdRcpCurrRcpMcMod =0 AND bReplyBypassWorkOrderInfo AND p_bAcceptCondition AND bNewIncomingBoard = FALSE THEN 
//			tySendWorkOrderInfoNewAcc := tySendBypassWorkOrderInfoAcc;
//			diReqWidthInUM	:= REAL_TO_DINT(tySendBypassWorkOrderInfoAcc.tyData.rWidth * 1000);
//			IF p_eLinkMcParamUSCommMod = McSetCommModSMEMA THEN 
//				p_tyProdRcpCurrRcp.diWidthInUM := diReqLoaderWidthInUM; 
//			ELSE
//				p_tyProdRcpCurrRcp.diWidthInUM	:= diReqWidthInUM;
//			END_IF 
//			bQueryBypassWorkOrder := FALSE; 
//			bReplyBypassWorkOrderInfo := FALSE;    
		END_IF	
		
//		IF (p_usiSelProdRcpStep = 1) THEN                         //Standby Bit
//			bClearWorkOrder := TRUE;
//		END_IF	
		
	END_IF
	
	//		IF p_bQueryWorkOrderInfo = FALSE (*AND p_bLinkDIPresentSen*) AND p_bOpsConvWaitForTopUpBrd= FALSE THEN
	IF  (EDGEPOS(bRcvWorkOrderInfo1 = FALSE AND bRcvWorkOrderInfo2 = FALSE)) THEN  		
		//Clear Info Message 1
		tyInfoData1.sProgNm		:= '';
		tyInfoData1.udiCode		:= 0;
		tyInfoData1.eSeverity	:= AlmSeverityNA;
		tyInfoData1.sAlmMsg		:= '';
		bRcvWorkOrderInfo1 := FALSE;
			
		//Clear Info Message 2
		tyInfoData2.sProgNm		:= '';
		tyInfoData2.udiCode		:= 0;
		tyInfoData2.eSeverity	:= AlmSeverityNA;
		tyInfoData2.sAlmMsg		:= '';
		bRcvWorkOrderInfo2 := FALSE;
			
		//Clear Info Message 3
		tyInfoData3.sProgNm		:= '';
		tyInfoData3.udiCode		:= 0;
		tyInfoData3.eSeverity	:= AlmSeverityNA;
		tyInfoData3.sAlmMsg		:= '';
		bRstWorkOrderInfo := FALSE;
			
		//Clear Info Message 4
		tyInfoData4.sProgNm		:= '';
		tyInfoData4.udiCode		:= 0;
		tyInfoData4.eSeverity	:= AlmSeverityNA;
		tyInfoData4.sAlmMsg		:= '';
		bRcvWorkOrderInfo1 := FALSE;
			
	END_IF
	

//	IF EDGEPOS ((p_bAcceptCondition AND p_eLinkCustomerReq = Siemens AND (p_tyDI.bLoadPosSen OR (p_bLinkStepStackMode  AND p_tyDI.bBrdClrSen= FALSE)) AND p_bOpsConvWaitForTopUpBrd) AND p_usiLinkProdRcpCurrRcpMcMod =1 AND p_bUITopUpBrdRdy = FALSE AND p_bOpsConvTopUpBrdReq = FALSE AND p_tyDI.bBrdStackPresentSen = FALSE AND p_bOpsRun THEN     //Whenever lifter empty clear send work data
//		tySendWorkOrderInfoNewAcc := tyDummySendWorkOrderInfoRcv;
//		sWorkOrderId := ''; 
//	END_IF 
	
	
	
//	IF p_bSendBFId THEN                    //New changeover send Forecast one pulse only
//		bSendBoardForecast := FALSE;   
//	END_IF	
	
END_ACTION
