 (** 2021-08-01 **)
ACTION Act_Background_Sequence:
	
	IF eStatus1 <> Error THEN
		
		IF p_bOpsRun = FALSE THEN
			p_bSndIncompl	:= TRUE;
		END_IF
		
		IF tyMsgTypeRcv.bStopTransport = TRUE THEN
			IF tyStopTransport.tyData.eTransferState = HermesTransferStateNotStarted THEN
				p_bSndNotStart	:= TRUE;
			ELSIF tyStopTransport.tyData.eTransferState = HermesTransferStateIncomplete THEN
				p_bSndIncompl	:= TRUE;
			END_IF
		END_IF
		
		//Sequence
		fbSequenceDS.bRstState		        := bRstState;
		fbSequenceDS.bRdySnd	        	:= p_bRdySnd; //Machine in OpsG step DSCommTmr (Have DBA)
		fbSequenceDS.bSndCompl	        	:= p_bSndCompl; //Send TransportFinished Msg = Complete (Value = 3)
		fbSequenceDS.bSndIncompl        	:= p_bSndIncompl; //Send TransportFinished Msg = Incomplete (Value = 2)
		fbSequenceDS.bSndNotStart        	:= p_bSndNotStart; //Send TransportFinished Msg = Not Started (Value = 1)
		fbSequenceDS.bFeatureBoardForecast	:= bFeatureBoardForecast; //Feature BoardForecast
		fbSequenceDS.bOpsRun	        	:= p_bOpsRun; //Machine in AutoMode
		fbSequenceDS.bSendBFId              := bSendBFId; //Send B.F with forecast ID, then block Hermes.eState until Downstream reply a MachineReady(Id) or MachineReady()
		fbSequenceDS.bFirstZoneHaveBoard	:= p_bFirstZoneHaveBoard; //First Zone Have Board
		fbSequenceDS.bFirstZoneEndSen	    := p_bFirstZoneEndSen; //First Zone End sensor
		fbSequenceDS.bAllZonesEmpty	        := bAllZonesEmpty; //All Zones empty
		fbSequenceDS(bEn := TRUE);
		bUSRdy		                       	:= fbSequenceDS.bUSRdy;
		bDSRdy			                    := fbSequenceDS.bDSRdy;
		bTransporting                      	:= fbSequenceDS.bTransporting;
		bStopTransport                     	:= fbSequenceDS.bStopTransport;
		
			
		IF EDGEPOS(tyMsgTypeRcv.bMachineReady = TRUE) THEN
			bRstSendBFId := TRUE;
		END_IF

		bUSGdRdy	:= (tyBoardAvailableSnd.tyAvl.bFailedBoard = FALSE) OR ((tyBoardAvailableSnd.tyAvl.bFailedBoard = TRUE) AND (tyBoardAvailableSnd.tyData.eFailedBoard <> HermesFailedBoard));
			
		bDSGdRdy	:= (tyMachineReady.tyAvl.bFailedBoard = FALSE) OR ((tyMachineReady.tyAvl.bFailedBoard = TRUE) AND (tyMachineReady.tyData.eFailedBoard <> HermesFailedBoard));
		
		IF fbSequenceDS.eState >= HermesStateNotAvailableNotReady THEN
			bHandshakeDone	:= TRUE;
		ELSE
			bHandshakeDone	:= FALSE;
		END_IF
		
		IF EDGEPOS(fbSequenceDS.eState = HermesStateTransporting) THEN
			p_bSndCompl		:= FALSE;
			p_bSndIncompl	:= FALSE;
			p_bSndNotStart	:= FALSE;
		END_IF
		
		IF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeServiceDescription THEN
			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeServiceDescription);
			
			
			tyServiceDescriptionSnd.tyData.sMachineId								    	:= p_sMcId; 			
			tyServiceDescriptionSnd.tyData.iLaneId											:= p_tyParam.iLaneID;
			tyServiceDescriptionSnd.tyData.sInterfaceId										:= p_tyParam.sDownstreamInterfaceId;
			tyServiceDescriptionSnd.tyData.sVersion											:= p_sVersion;
			tyServiceDescriptionSnd.tyData.tySupportedFeatures.bFeatureCheckAliveResponse	:= (p_tyParam.bFeatureCheckAliveResponse) AND (p_tyParam.tRcvAlive <> T#0s) AND (p_tyParam.tSndAlive <> T#0s);
			tyServiceDescriptionSnd.tyData.tySupportedFeatures.bFeatureBoardForecast		:= p_tyParam.bFeatureBoardForecast;
			tyServiceDescriptionSnd.tyData.tySupportedFeatures.bFeatureQueryBoardInfo		:= FALSE;
			tyServiceDescriptionSnd.tyData.tySupportedFeatures.bFeatureSendBoardInfo		:= p_tyParam.bFeatureSendBoardInfo;
			tyServiceDescriptionSnd.tyAvl.bMachineId										:= tyServiceDescriptionSnd.tyData.sMachineId <> '';
			tyServiceDescriptionSnd.tyAvl.bLaneId											:= tyServiceDescriptionSnd.tyData.iLaneId<>0;
			tyServiceDescriptionSnd.tyAvl.bInterfaceId										:= tyServiceDescriptionSnd.tyData.sInterfaceId <> '';
			tyServiceDescriptionSnd.tyAvl.bVersion											:= TRUE;
			tyServiceDescriptionSnd.tyAvl.bSupportedFeatures								:= p_tyParam.bFeatureCheckAliveResponse OR p_tyParam.bFeatureBoardForecast OR p_tyParam.bFeatureSendBoardInfo;
			tyServiceDescriptionSnd.tyAvl.tySupportedFeatures.bFeatureCheckAliveResponse	:= (p_tyParam.bFeatureCheckAliveResponse) AND (p_tyParam.tRcvAlive <> T#0s) AND (p_tyParam.tSndAlive <> T#0s);
			tyServiceDescriptionSnd.tyAvl.tySupportedFeatures.bFeatureBoardForecast			:= p_tyParam.bFeatureBoardForecast;
			tyServiceDescriptionSnd.tyAvl.tySupportedFeatures.bFeatureQueryBoardInfo		:= FALSE;
			tyServiceDescriptionSnd.tyAvl.tySupportedFeatures.bFeatureSendBoardInfo			:= p_tyParam.bFeatureSendBoardInfo;
			
		ELSIF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeBoardForecastId THEN //Beside of sProductTypeId, rWidth, other parameters use default. If upstream does not support BoardForecast, then our machine has no data.
			
			IF p_eLinkCustomerReq = Siemens AND p_sWorkOrderId <> '' AND  (p_usiProdRcpCurrRcp1McMod = 1) THEN 
			
				IF (idxBoardForecastId < 1) THEN
			
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
					fHermesGenerateUUID(ADR(tyBoardForecastSnd.tyData.sForecastId) , p_tyDTStructure , pa_usiMacAddr); //Generate ForecastID if there is new Product Changeover
				
					idxBoardForecastId := idxBoardForecastId + 1;
	
				END_IF
				
				tyBoardForecastSnd.tyData.rTimeUntilAvailable       := p_rMcCycleTm + p_rAWCycleTm;
				tyBoardForecastSnd.tyData.sBoardId 			        := ''; //no need to send BoardId for HermesMsgTypeBoardForecastId.
				tyBoardForecastSnd.tyData.sBoardIdCreatedBy			:= ''; //no need to send BoardIdCreatedBy since no BoardId.	
				tyBoardForecastSnd.tyData.eFailedBoard				:= p_eFailedBoard;
				tyBoardForecastSnd.tyData.sProductTypeId			:= p_tySendWorkOrderData.tyData.sProductTypeId;
				tyBoardForecastSnd.tyData.eFlippedBoard		    	:= p_eFlippedBoard;
				tyBoardForecastSnd.tyData.sTopBarcode				:= p_sTopBarcode;
				tyBoardForecastSnd.tyData.sBottomBarcode			:= p_sBottomBarcode;
				tyBoardForecastSnd.tyData.rLength					:= p_tySendWorkOrderData.tyData.rLength;
				tyBoardForecastSnd.tyData.rWidth					:= p_tySendWorkOrderData.tyData.rWidth;
				tyBoardForecastSnd.tyData.rThickness				:= p_tySendWorkOrderData.tyData.rThickness;
				tyBoardForecastSnd.tyData.rConveyorSpeed			:= p_rConveyorSpeed; //dont have
				tyBoardForecastSnd.tyData.rTopClearanceHeight		:= p_tySendWorkOrderData.tyData.rTopClearanceHeight;
				tyBoardForecastSnd.tyData.rBottomClearanceHeight	:= p_tySendWorkOrderData.tyData.rBottomClearanceHeight;
				tyBoardForecastSnd.tyData.rWeight					:= p_tySendWorkOrderData.tyData.rWeight;
				tyBoardForecastSnd.tyData.sWorkOrderId			    := p_tySendWorkOrderData.tyData.sWorkOrderId;
				tyBoardForecastSnd.tyData.sBatchId		            := p_tySendWorkOrderData.tyData.sBatchId;

				tyBoardForecastSnd.tyAvl.bForecastId 			    := TRUE;
				tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
				tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
				tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 		    := TRUE;			
				tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
				tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
				tyBoardForecastSnd.tyAvl.bFlippedBoard 			    := TRUE;			
				tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
				tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
				tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
				tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0 AND (p_bBFWidthEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0 AND (p_bBFSltEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
				tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <> 0 AND (p_bBFSltEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <> 0 AND (p_bBFSltEn = TRUE);	
				tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
				tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
				tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';   
			ELSE
				IF (idxBoardForecastId < 1) THEN
			
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
					fHermesGenerateUUID(ADR(tyBoardForecastSnd.tyData.sForecastId) , p_tyDTStructure , pa_usiMacAddr); //Generate ForecastID if there is new Product Changeover
				
					idxBoardForecastId := idxBoardForecastId + 1;
	
				END_IF
						
				tyBoardForecastSnd.tyData.rTimeUntilAvailable       := p_rMcCycleTm + p_rAWCycleTm;
				tyBoardForecastSnd.tyData.sBoardId 			        := ''; //no need to send BoardId for HermesMsgTypeBoardForecastId.	
				tyBoardForecastSnd.tyData.sBoardIdCreatedBy			:= ''; //no need to send BoardIdCreatedBy since no BoardId.		    
				tyBoardForecastSnd.tyData.eFailedBoard 			    := p_eFailedBoard;			
				tyBoardForecastSnd.tyData.sProductTypeId 			:= p_sRecipeNm; //recipe0 name = running recipe name			
				tyBoardForecastSnd.tyData.eFlippedBoard 			:= p_eFlippedBoard;			
				tyBoardForecastSnd.tyData.sTopBarcode 		    	:= p_sTopBarcode;			
				tyBoardForecastSnd.tyData.sBottomBarcode 			:= p_sBottomBarcode; 	
				tyBoardForecastSnd.tyData.rLength 				    := p_rLength;	
				tyBoardForecastSnd.tyData.rWidth 			    	:= DINT_TO_REAL(p_diWidthInUM) / 1000; //recipe 0 width	 = running recipe width
				tyBoardForecastSnd.tyData.rThickness 		    	:= p_rThickness; 			
				tyBoardForecastSnd.tyData.rConveyorSpeed 			:= p_rConveyorSpeed; 				
				tyBoardForecastSnd.tyData.rTopClearanceHeight 		:= p_rTopClearanceHeight;			
				tyBoardForecastSnd.tyData.rBottomClearanceHeight 	:= p_rBottomClearanceHeight; 	
				tyBoardForecastSnd.tyData.rWeight 			    	:= p_rWeight; 	 		
//				tyBoardForecastSnd.tyData.sWorkOrderId 			    := p_sWorkOrderId;	
//				tyBoardForecastSnd.tyData.sBatchId 			        := p_sBatchId;
				tyBoardForecastSnd.tyData.sWorkOrderId 			    := '';	
				tyBoardForecastSnd.tyData.sBatchId 			        := '';
				

				tyBoardForecastSnd.tyAvl.bForecastId 			    := TRUE;
				tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
				tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
				tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 		    := TRUE;			
				tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
				tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
				tyBoardForecastSnd.tyAvl.bFlippedBoard 			    := TRUE;			
				tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
				tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
				tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
				tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0 AND (p_bBFWidthEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0 AND (p_bBFSltEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
				tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <> 0 AND (p_bBFSltEn = TRUE);			
				tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <> 0 AND (p_bBFSltEn = TRUE);	
				tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
				tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
				tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';   
			END_IF
			
		 
		ELSIF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeBoardForecastNoId THEN 
			
			IF p_eLinkCustomerReq = Siemens AND p_sWorkOrderId <> '' AND (p_usiProdRcpCurrRcp1McMod = 1)  THEN 
		  
				IF p_bNewBrdAvlFirstZone THEN //Generate BoardForecast() by our machine for Manual Load Board at First Zone
		
					IF (idxBoardForecastNoId < 1) THEN
			
						fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
					
			
						idxBoardForecastNoId := idxBoardForecastNoId + 1;
	
					END_IF
			    
					tyBoardForecastSnd.tyData.sForecastId		        := ''; //Do not need to generate ForecastID to downstream
			
					IF idxBoardForecastNoId <= 1 THEN
						tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm;	
						//				ELSIF idxBoardForecastNoId = 2 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm - (p_rMcCycleTm/3); //divide B.F to 3 segments, open up if needed
						//				ELSIF idxBoardForecastNoId = 3 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm - ((p_rMcCycleTm/3)*2);	
					END_IF
				
					fHermesGenerateUUID(ADR(tyBoardForecastSnd.tyData.sBoardId) , p_tyDTStructure , pa_usiMacAddr);
					
                    tyBoardForecastSnd.tyData.sBoardIdCreatedBy			:= p_sMcId; //no need to send BoardIdCreatedBy since no BoardId.	
					tyBoardForecastSnd.tyData.eFailedBoard				:= p_eFailedBoard;
					tyBoardForecastSnd.tyData.sProductTypeId			:= p_tySendWorkOrderData.tyData.sProductTypeId;
					tyBoardForecastSnd.tyData.eFlippedBoard		    	:= p_eFlippedBoard;
					tyBoardForecastSnd.tyData.sTopBarcode				:= p_sTopBarcode;
					tyBoardForecastSnd.tyData.sBottomBarcode			:= p_sBottomBarcode;
					tyBoardForecastSnd.tyData.rLength					:= p_tySendWorkOrderData.tyData.rLength;
					tyBoardForecastSnd.tyData.rWidth					:= p_tySendWorkOrderData.tyData.rWidth;
					tyBoardForecastSnd.tyData.rThickness				:= p_tySendWorkOrderData.tyData.rThickness;
					tyBoardForecastSnd.tyData.rConveyorSpeed			:= p_rConveyorSpeed; //dont have
					tyBoardForecastSnd.tyData.rTopClearanceHeight		:= p_tySendWorkOrderData.tyData.rTopClearanceHeight;
					tyBoardForecastSnd.tyData.rBottomClearanceHeight	:= p_tySendWorkOrderData.tyData.rBottomClearanceHeight;
					tyBoardForecastSnd.tyData.rWeight					:= p_tySendWorkOrderData.tyData.rWeight;
					tyBoardForecastSnd.tyData.sWorkOrderId			    := p_tySendWorkOrderData.tyData.sWorkOrderId;
					tyBoardForecastSnd.tyData.sBatchId		            := p_tySendWorkOrderData.tyData.sBatchId;

					tyBoardForecastSnd.tyAvl.bForecastId 			    := tyBoardForecastSnd.tyData.sForecastId <> '';
					tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
					tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
					tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 	    	:= tyBoardForecastSnd.tyData.sBoardIdCreatedBy <> '';			
					tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
					tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
					tyBoardForecastSnd.tyAvl.bFlippedBoard 		    	:= TRUE;			
					tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
					tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0 AND (p_bBFWidthEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0 AND (p_bBFSltEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
					tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <>0 AND (p_bBFSltEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <>0 AND (p_bBFSltEn = TRUE);	
					tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
					tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
					tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';
				
				ELSE //take PCB_In Board data (For PCB Transfer in from upstream) 
	
					IF (idxBoardForecastNoId < 1) THEN
			
						fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
						idxBoardForecastNoId := idxBoardForecastNoId + 1;
	
					END_IF
			
					tyBoardForecastSnd.tyData.sForecastId		            := ''; //Do not need to generate ForecastID to downstream
			
					IF idxBoardForecastNoId <= 1 THEN
						tyBoardForecastSnd.tyData.rTimeUntilAvailable	    := p_rMcCycleTm;	
						//			    ELSIF idxBoardForecastNoId = 2 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable    	:= p_rMcCycleTm - (p_rMcCycleTm/3); //divide B.F to 3 segments, open up if needed
						//				ELSIF idxBoardForecastNoId = 3 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	    := p_rMcCycleTm - ((p_rMcCycleTm/3)*2);	
					END_IF
				
					tyBoardForecastSnd.tyData.sBoardId                  := p_tyUSBoardArrivedData.tyData.sBoardId;			
					tyBoardForecastSnd.tyData.sBoardIdCreatedBy         := p_tyUSBoardArrivedData.tyData.sBoardIdCreatedBy;			
					tyBoardForecastSnd.tyData.eFailedBoard 		    	:= p_tyUSBoardArrivedData.tyData.eFailedBoard;			
					tyBoardForecastSnd.tyData.sProductTypeId 			:= p_tyUSBoardArrivedData.tyData.sProductTypeId;			
					tyBoardForecastSnd.tyData.eFlippedBoard 			:= p_tyUSBoardArrivedData.tyData.eFlippedBoard;			
					tyBoardForecastSnd.tyData.sTopBarcode 		    	:= p_tyUSBoardArrivedData.tyData.sTopBarcode;			
					tyBoardForecastSnd.tyData.sBottomBarcode 			:= p_tyUSBoardArrivedData.tyData.sBottomBarcode;			
					tyBoardForecastSnd.tyData.rLength 				    := p_tyUSBoardArrivedData.tyData.rLength;			
					tyBoardForecastSnd.tyData.rWidth 			    	:= p_tyUSBoardArrivedData.tyData.rWidth;			
					tyBoardForecastSnd.tyData.rThickness 		    	:= p_tyUSBoardArrivedData.tyData.rThickness;			
					tyBoardForecastSnd.tyData.rConveyorSpeed 			:= p_tyUSBoardArrivedData.tyData.rConveyorSpeed;			
					tyBoardForecastSnd.tyData.rTopClearanceHeight 		:= p_tyUSBoardArrivedData.tyData.rTopClearanceHeight;			
					tyBoardForecastSnd.tyData.rBottomClearanceHeight 	:= p_tyUSBoardArrivedData.tyData.rBottomClearanceHeight;	
					tyBoardForecastSnd.tyData.rWeight 			    	:= p_tyUSBoardArrivedData.tyData.rWeight;			
					tyBoardForecastSnd.tyData.sWorkOrderId 		    	:= p_tyUSBoardArrivedData.tyData.sWorkOrderId;	
					tyBoardForecastSnd.tyData.sBatchId 		        	:= p_tyUSBoardArrivedData.tyData.sBatchId;	

					tyBoardForecastSnd.tyAvl.bForecastId 			    := tyBoardForecastSnd.tyData.sForecastId <> '';
					tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
					tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
					tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 	    	:= tyBoardForecastSnd.tyData.sBoardIdCreatedBy <> '';			
					tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
					tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
					tyBoardForecastSnd.tyAvl.bFlippedBoard 		    	:= TRUE;			
					tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
					tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0;			
					tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0;			
					tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
					tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <> 0;			
					tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <> 0;	
					tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
					tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
					tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';
					
				END_IF
			ELSE //no siemens
				
				IF p_bNewBrdAvlFirstZone THEN //Generate BoardForecast() by our machine for Manual Load Board at First Zone
		
					IF (idxBoardForecastNoId < 1) THEN
			
						fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
					
			
						idxBoardForecastNoId := idxBoardForecastNoId + 1;
	
					END_IF
			    
					tyBoardForecastSnd.tyData.sForecastId		        := ''; //Do not need to generate ForecastID to downstream
			
					IF idxBoardForecastNoId <= 1 THEN
						tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm;	
						//				ELSIF idxBoardForecastNoId = 2 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm - (p_rMcCycleTm/3); //divide B.F to 3 segments, open up if needed
						//				ELSIF idxBoardForecastNoId = 3 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	:= p_rMcCycleTm - ((p_rMcCycleTm/3)*2);	
					END_IF
				
					fHermesGenerateUUID(ADR(tyBoardForecastSnd.tyData.sBoardId) , p_tyDTStructure , pa_usiMacAddr);
					tyBoardForecastSnd.tyData.sBoardIdCreatedBy         := p_sMcId; 
					tyBoardForecastSnd.tyData.eFailedBoard 		    	:= p_eFailedBoard;			
					tyBoardForecastSnd.tyData.sProductTypeId 			:= p_sRecipeNm;	 //recipe 0 name = running recipe name			
					tyBoardForecastSnd.tyData.eFlippedBoard 			:= p_eFlippedBoard;			
					tyBoardForecastSnd.tyData.sTopBarcode 		    	:= p_sTopBarcode;			
					tyBoardForecastSnd.tyData.sBottomBarcode 			:= p_sBottomBarcode;			
					tyBoardForecastSnd.tyData.rLength 				    := p_rLength;			
					tyBoardForecastSnd.tyData.rWidth 			    	:= DINT_TO_REAL(p_diWidthInUM) / 1000;	//recipe 0 width = running recipe width			
					tyBoardForecastSnd.tyData.rThickness 		    	:= p_rThickness;			
					tyBoardForecastSnd.tyData.rConveyorSpeed 			:= p_rConveyorSpeed;			
					tyBoardForecastSnd.tyData.rTopClearanceHeight 		:= p_rTopClearanceHeight;			
					tyBoardForecastSnd.tyData.rBottomClearanceHeight 	:= p_rBottomClearanceHeight;	
					tyBoardForecastSnd.tyData.rWeight 			    	:= p_rWeight;			
//					tyBoardForecastSnd.tyData.sWorkOrderId 		    	:= p_sWorkOrderId;	
//					tyBoardForecastSnd.tyData.sBatchId	    	    	:= p_sBatchId;	
					tyBoardForecastSnd.tyData.sWorkOrderId 		    	:= '';	
					tyBoardForecastSnd.tyData.sBatchId	    	    	:= '';

					tyBoardForecastSnd.tyAvl.bForecastId 			    := tyBoardForecastSnd.tyData.sForecastId <> '';
					tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
					tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
					tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 	    	:= tyBoardForecastSnd.tyData.sBoardIdCreatedBy <> '';			
					tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
					tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
					tyBoardForecastSnd.tyAvl.bFlippedBoard 		    	:= TRUE;			
					tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
					tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0 AND (p_bBFWidthEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0 AND (p_bBFSltEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
					tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <>0 AND (p_bBFSltEn = TRUE);			
					tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <>0 AND (p_bBFSltEn = TRUE);	
					tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
					tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
					tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';
				
				ELSE //take PCB_In Board data (For PCB Transfer in from upstream) 
	
					IF (idxBoardForecastNoId < 1) THEN
			
						fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardForecast);
						idxBoardForecastNoId := idxBoardForecastNoId + 1;
	
					END_IF
			
					tyBoardForecastSnd.tyData.sForecastId		            := ''; //Do not need to generate ForecastID to downstream
			
					IF idxBoardForecastNoId <= 1 THEN
						tyBoardForecastSnd.tyData.rTimeUntilAvailable	    := p_rMcCycleTm;	
						//			    ELSIF idxBoardForecastNoId = 2 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable    	:= p_rMcCycleTm - (p_rMcCycleTm/3); //divide B.F to 3 segments, open up if needed
						//				ELSIF idxBoardForecastNoId = 3 THEN
						//					tyBoardForecastSnd.tyData.rTimeUntilAvailable	    := p_rMcCycleTm - ((p_rMcCycleTm/3)*2);	
					END_IF
				
					tyBoardForecastSnd.tyData.sBoardId                  := p_tyUSBoardArrivedData.tyData.sBoardId;			
					tyBoardForecastSnd.tyData.sBoardIdCreatedBy         := p_tyUSBoardArrivedData.tyData.sBoardIdCreatedBy;			
					tyBoardForecastSnd.tyData.eFailedBoard 		    	:= p_tyUSBoardArrivedData.tyData.eFailedBoard;			
					tyBoardForecastSnd.tyData.sProductTypeId 			:= p_tyUSBoardArrivedData.tyData.sProductTypeId;			
					tyBoardForecastSnd.tyData.eFlippedBoard 			:= p_tyUSBoardArrivedData.tyData.eFlippedBoard;			
					tyBoardForecastSnd.tyData.sTopBarcode 		    	:= p_tyUSBoardArrivedData.tyData.sTopBarcode;			
					tyBoardForecastSnd.tyData.sBottomBarcode 			:= p_tyUSBoardArrivedData.tyData.sBottomBarcode;			
					tyBoardForecastSnd.tyData.rLength 				    := p_tyUSBoardArrivedData.tyData.rLength;			
					tyBoardForecastSnd.tyData.rWidth 			    	:= p_tyUSBoardArrivedData.tyData.rWidth;			
					tyBoardForecastSnd.tyData.rThickness 		    	:= p_tyUSBoardArrivedData.tyData.rThickness;			
					tyBoardForecastSnd.tyData.rConveyorSpeed 			:= p_tyUSBoardArrivedData.tyData.rConveyorSpeed;			
					tyBoardForecastSnd.tyData.rTopClearanceHeight 		:= p_tyUSBoardArrivedData.tyData.rTopClearanceHeight;			
					tyBoardForecastSnd.tyData.rBottomClearanceHeight 	:= p_tyUSBoardArrivedData.tyData.rBottomClearanceHeight;	
					tyBoardForecastSnd.tyData.rWeight 			    	:= p_tyUSBoardArrivedData.tyData.rWeight;			
					tyBoardForecastSnd.tyData.sWorkOrderId 		    	:= p_tyUSBoardArrivedData.tyData.sWorkOrderId;	
					tyBoardForecastSnd.tyData.sBatchId 		        	:= p_tyUSBoardArrivedData.tyData.sBatchId;	

					tyBoardForecastSnd.tyAvl.bForecastId 			    := tyBoardForecastSnd.tyData.sForecastId <> '';
					tyBoardForecastSnd.tyAvl.bTimeUntilAvailable		:= tyBoardForecastSnd.tyData.rTimeUntilAvailable <> 0;
					tyBoardForecastSnd.tyAvl.bBoardId 				    := tyBoardForecastSnd.tyData.sBoardId <> '';			
					tyBoardForecastSnd.tyAvl.bBoardIdCreatedBy 	    	:= tyBoardForecastSnd.tyData.sBoardIdCreatedBy <> '';			
					tyBoardForecastSnd.tyAvl.bFailedBoard 			    := TRUE;			
					tyBoardForecastSnd.tyAvl.bProductTypeId 			:= tyBoardForecastSnd.tyData.sProductTypeId <> '';			
					tyBoardForecastSnd.tyAvl.bFlippedBoard 		    	:= TRUE;			
					tyBoardForecastSnd.tyAvl.bTopBarcode 			    := tyBoardForecastSnd.tyData.sTopBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bBottomBarcode 			:= tyBoardForecastSnd.tyData.sBottomBarcode <> '';			
					tyBoardForecastSnd.tyAvl.bLength 				    := tyBoardForecastSnd.tyData.rLength <> 0;			
					tyBoardForecastSnd.tyAvl.bWidth 				    := tyBoardForecastSnd.tyData.rWidth <> 0;			
					tyBoardForecastSnd.tyAvl.bThickness 			    := tyBoardForecastSnd.tyData.rThickness <> 0;			
					tyBoardForecastSnd.tyAvl.bConveyorSpeed 			:= tyBoardForecastSnd.tyData.rConveyorSpeed <> 0;			
					tyBoardForecastSnd.tyAvl.bTopClearanceHeight 		:= tyBoardForecastSnd.tyData.rTopClearanceHeight <> 0;			
					tyBoardForecastSnd.tyAvl.bBottomClearanceHeight 	:= tyBoardForecastSnd.tyData.rBottomClearanceHeight <> 0;	
					tyBoardForecastSnd.tyAvl.bWeight 			    	:= tyBoardForecastSnd.tyData.rWeight <> 0;			
					tyBoardForecastSnd.tyAvl.bWorkOrderId 		    	:= tyBoardForecastSnd.tyData.sWorkOrderId <> '';	
					tyBoardForecastSnd.tyAvl.bBatchId 		        	:= tyBoardForecastSnd.tyData.sBatchId <> '';
					
				END_IF
			END_IF
			
		ELSIF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeBoardAvailable THEN
			fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeBoardAvailable);

				IF (p_eLinkCustomerReq = NA OR p_sWorkOrderId = '' OR p_usiProdRcpCurrRcp1McMod = 0) AND p_bNewBrdAvlLastZone = TRUE AND p_bRcvBoardInfo = FALSE THEN //Generate New B.A for Unknown PCB
				
					fHermesGenerateUUID(ADR(tyBoardAvailableSnd.tyData.sBoardId) , p_tyDTStructure , pa_usiMacAddr);
					
					tyBoardAvailableSnd.tyData.sBoardIdCreatedBy        := p_sMcId; //Generate by our Machine
					tyBoardAvailableSnd.tyData.eFailedBoard				:= p_eFailedBoard;
					tyBoardAvailableSnd.tyData.sProductTypeId			:= p_sRecipeNm;
					tyBoardAvailableSnd.tyData.eFlippedBoard			:= p_eFlippedBoard;
					tyBoardAvailableSnd.tyData.sTopBarcode				:= p_sTopBarcode;
					tyBoardAvailableSnd.tyData.sBottomBarcode			:= p_sBottomBarcode;
					tyBoardAvailableSnd.tyData.rLength					:= p_rLength;
					tyBoardAvailableSnd.tyData.rWidth					:= DINT_TO_REAL(p_diWidthInUM) / 1000;
					tyBoardAvailableSnd.tyData.rThickness				:= p_rThickness;
					tyBoardAvailableSnd.tyData.rConveyorSpeed			:= p_rConveyorSpeed;
					tyBoardAvailableSnd.tyData.rTopClearanceHeight		:= p_rTopClearanceHeight;
					tyBoardAvailableSnd.tyData.rBottomClearanceHeight	:= p_rBottomClearanceHeight;
					tyBoardAvailableSnd.tyData.rWeight					:= p_rWeight;
//					tyBoardAvailableSnd.tyData.sWorkOrderId			    := p_sWorkOrderId; 
//					tyBoardAvailableSnd.tyData.sBatchId			        := p_sBatchId;
					tyBoardAvailableSnd.tyData.sWorkOrderId			    := ''; 
					tyBoardAvailableSnd.tyData.sBatchId			        := '';
					
					tyBoardAvailableSnd.tyAvl.bBoardId					:= tyBoardAvailableSnd.tyData.sBoardId<>'';
					tyBoardAvailableSnd.tyAvl.bBoardIdCreatedBy			:= tyBoardAvailableSnd.tyData.sBoardIdCreatedBy <> '';
					tyBoardAvailableSnd.tyAvl.bFailedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bProductTypeId			:= tyBoardAvailableSnd.tyData.sProductTypeId <> '';
					tyBoardAvailableSnd.tyAvl.bFlippedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bTopBarcode				:= tyBoardAvailableSnd.tyData.sTopBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bBottomBarcode			:= tyBoardAvailableSnd.tyData.sBottomBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bLength					:= tyBoardAvailableSnd.tyData.rLength <> 0;
					tyBoardAvailableSnd.tyAvl.bWidth					:= (tyBoardAvailableSnd.tyData.rWidth <> 0) AND (p_bBAWidthEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bThickness				:= (tyBoardAvailableSnd.tyData.rThickness <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bConveyorSpeed			:= tyBoardAvailableSnd.tyData.rConveyorSpeed <> 0;
					tyBoardAvailableSnd.tyAvl.bTopClearanceHeight		:= (tyBoardAvailableSnd.tyData.rTopClearanceHeight <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bBottomClearanceHeight	:= (tyBoardAvailableSnd.tyData.rBottomClearanceHeight <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bWeight					:= tyBoardAvailableSnd.tyData.rWeight <> 0;
					tyBoardAvailableSnd.tyAvl.bWorkOrderId				:= tyBoardAvailableSnd.tyData.sWorkOrderId <> '';
					tyBoardAvailableSnd.tyAvl.bBatchId			    	:= tyBoardAvailableSnd.tyData.sBatchId <> '';
						
				ELSIF p_eLinkCustomerReq = Siemens AND p_sWorkOrderId <>'' AND (p_usiProdRcpCurrRcp1McMod = 1)  AND p_bNewBrdAvlLastZone = TRUE AND p_bRcvBoardInfo = FALSE THEN //Data from Supervisory(Siemens) 
					
					fHermesGenerateUUID(ADR(tyBoardAvailableSnd.tyData.sBoardId) , p_tyDTStructure , pa_usiMacAddr);
				           
					tyBoardAvailableSnd.tyData.sBoardIdCreatedBy        := p_sMcId;
					tyBoardAvailableSnd.tyData.eFailedBoard				:= p_eFailedBoard;
					tyBoardAvailableSnd.tyData.sProductTypeId			:= p_tySendWorkOrderData.tyData.sProductTypeId;
					tyBoardAvailableSnd.tyData.eFlippedBoard			:= p_eFlippedBoard;
					tyBoardAvailableSnd.tyData.sTopBarcode				:= p_sTopBarcode;
					tyBoardAvailableSnd.tyData.sBottomBarcode			:= p_sBottomBarcode;
					tyBoardAvailableSnd.tyData.rLength					:= p_tySendWorkOrderData.tyData.rLength;
					tyBoardAvailableSnd.tyData.rWidth					:= p_tySendWorkOrderData.tyData.rWidth;
					tyBoardAvailableSnd.tyData.rThickness				:= p_tySendWorkOrderData.tyData.rThickness;
					tyBoardAvailableSnd.tyData.rConveyorSpeed			:= p_rConveyorSpeed; //dont have
					tyBoardAvailableSnd.tyData.rTopClearanceHeight		:= p_tySendWorkOrderData.tyData.rTopClearanceHeight;
					tyBoardAvailableSnd.tyData.rBottomClearanceHeight	:= p_tySendWorkOrderData.tyData.rBottomClearanceHeight;
					tyBoardAvailableSnd.tyData.rWeight					:= p_tySendWorkOrderData.tyData.rWeight;
					tyBoardAvailableSnd.tyData.sWorkOrderId			    := p_tySendWorkOrderData.tyData.sWorkOrderId;
					tyBoardAvailableSnd.tyData.sBatchId		            := p_tySendWorkOrderData.tyData.sBatchId;
					
					tyBoardAvailableSnd.tyAvl.bBoardId					:= tyBoardAvailableSnd.tyData.sBoardId<>'';
					tyBoardAvailableSnd.tyAvl.bBoardIdCreatedBy			:= tyBoardAvailableSnd.tyData.sBoardIdCreatedBy <> '';
					tyBoardAvailableSnd.tyAvl.bFailedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bProductTypeId			:= tyBoardAvailableSnd.tyData.sProductTypeId <> '';
					tyBoardAvailableSnd.tyAvl.bFlippedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bTopBarcode				:= tyBoardAvailableSnd.tyData.sTopBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bBottomBarcode			:= tyBoardAvailableSnd.tyData.sBottomBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bLength					:= tyBoardAvailableSnd.tyData.rLength <> 0;
					tyBoardAvailableSnd.tyAvl.bWidth					:= (tyBoardAvailableSnd.tyData.rWidth <> 0) AND (p_bBAWidthEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bThickness				:= (tyBoardAvailableSnd.tyData.rThickness <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bConveyorSpeed			:= tyBoardAvailableSnd.tyData.rConveyorSpeed <> 0;
					tyBoardAvailableSnd.tyAvl.bTopClearanceHeight		:= (tyBoardAvailableSnd.tyData.rTopClearanceHeight <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bBottomClearanceHeight	:= (tyBoardAvailableSnd.tyData.rBottomClearanceHeight <> 0) AND (p_bBASltEn = TRUE);
					tyBoardAvailableSnd.tyAvl.bWeight					:= tyBoardAvailableSnd.tyData.rWeight <> 0;
					tyBoardAvailableSnd.tyAvl.bWorkOrderId				:= tyBoardAvailableSnd.tyData.sWorkOrderId <> '';
					tyBoardAvailableSnd.tyAvl.bBatchId			    	:= tyBoardAvailableSnd.tyData.sBatchId <> '';		
					
					/////////////////////////////////////////
			
				ELSIF p_bNewBrdAvlLastZone = TRUE AND p_bRcvBoardInfo = TRUE THEN //Take BoardInfo From "SendBoardInfo", for Manual Insert PCB
			
					tyBoardAvailableSnd.tyData.sBoardId                 := p_tyBoardInfoData.tyData.sBoardId;            
					tyBoardAvailableSnd.tyData.sBoardIdCreatedBy        := p_tyBoardInfoData.tyData.sBoardIdCreatedBy;
					tyBoardAvailableSnd.tyData.eFailedBoard				:= p_tyBoardInfoData.tyData.eFailedBoard;
					tyBoardAvailableSnd.tyData.sProductTypeId			:= p_tyBoardInfoData.tyData.sProductTypeId;
					tyBoardAvailableSnd.tyData.eFlippedBoard			:= p_tyBoardInfoData.tyData.eFlippedBoard;
					tyBoardAvailableSnd.tyData.sTopBarcode				:= p_tyBoardInfoData.tyData.sTopBarcode;
					tyBoardAvailableSnd.tyData.sBottomBarcode			:= p_tyBoardInfoData.tyData.sBottomBarcode;
					tyBoardAvailableSnd.tyData.rLength					:= p_tyBoardInfoData.tyData.rLength;
					tyBoardAvailableSnd.tyData.rWidth					:= p_tyBoardInfoData.tyData.rWidth;
					tyBoardAvailableSnd.tyData.rThickness				:= p_tyBoardInfoData.tyData.rThickness;
					tyBoardAvailableSnd.tyData.rConveyorSpeed			:= p_rConveyorSpeed; //dont have
					tyBoardAvailableSnd.tyData.rTopClearanceHeight		:= p_tyBoardInfoData.tyData.rTopClearanceHeight;
					tyBoardAvailableSnd.tyData.rBottomClearanceHeight	:= p_tyBoardInfoData.tyData.rBottomClearanceHeight;
					tyBoardAvailableSnd.tyData.rWeight					:= p_tyBoardInfoData.tyData.rWeight;
					tyBoardAvailableSnd.tyData.sWorkOrderId			    := p_tyBoardInfoData.tyData.sWorkOrderId;
					tyBoardAvailableSnd.tyData.sBatchId		            := p_tyBoardInfoData.tyData.sBatchId;
				
					tyBoardAvailableSnd.tyAvl.bBoardId					:= tyBoardAvailableSnd.tyData.sBoardId <> '';
					tyBoardAvailableSnd.tyAvl.bBoardIdCreatedBy			:= tyBoardAvailableSnd.tyData.sBoardIdCreatedBy <> '';
					tyBoardAvailableSnd.tyAvl.bFailedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bProductTypeId			:= tyBoardAvailableSnd.tyData.sProductTypeId <> '';
					tyBoardAvailableSnd.tyAvl.bFlippedBoard				:= TRUE;
					tyBoardAvailableSnd.tyAvl.bTopBarcode				:= tyBoardAvailableSnd.tyData.sTopBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bBottomBarcode			:= tyBoardAvailableSnd.tyData.sBottomBarcode <> '';
					tyBoardAvailableSnd.tyAvl.bLength					:= tyBoardAvailableSnd.tyData.rLength <> 0;
					tyBoardAvailableSnd.tyAvl.bWidth					:= (tyBoardAvailableSnd.tyData.rWidth <> 0);
					tyBoardAvailableSnd.tyAvl.bThickness				:= (tyBoardAvailableSnd.tyData.rThickness <> 0);
					tyBoardAvailableSnd.tyAvl.bConveyorSpeed			:= tyBoardAvailableSnd.tyData.rConveyorSpeed <> 0;
					tyBoardAvailableSnd.tyAvl.bTopClearanceHeight		:= (tyBoardAvailableSnd.tyData.rTopClearanceHeight <> 0);
					tyBoardAvailableSnd.tyAvl.bBottomClearanceHeight	:= (tyBoardAvailableSnd.tyData.rBottomClearanceHeight <> 0);
			tyBoardAvailableSnd.tyAvl.bWeight					:= tyBoardAvailableSnd.tyData.rWeight <> 0;
			tyBoardAvailableSnd.tyAvl.bWorkOrderId				:= tyBoardAvailableSnd.tyData.sWorkOrderId <> ''; 	
			tyBoardAvailableSnd.tyAvl.bBatchId			    	:= tyBoardAvailableSnd.tyData.sBatchId <> ''; 	
				
		ELSE //Take from PCB_In Board Data
				
			fbParseBrdAvlExternal.p_XMLTable		:= ADR(pa_tyXMLTableDataBrdAvl); //last zone B.A
			fbParseBrdAvlExternal.iTotalIdxWrite	:= p_iXMLTableDataBrdAvlTtlIdx; //last zone
			fbParseBrdAvlExternal;
			tyBoardAvailableSnd	:= fbParseBrdAvlExternal.tyBoardAvailable;
		END_IF			
		
		
	ELSIF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeRevokeBoardAvl THEN
		fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeRevokeBoardAvl);
		
	ELSIF fbSequenceDS.eMsgTypeSnd = HermesMsgTypeTransportFinished THEN
		fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeTransportFinished);
			
		IF p_bSndCompl = TRUE THEN
			tyTransportFinished.tyData.eTransferState	:= HermesTransferStateComplete;
		ELSIF p_bSndIncompl = TRUE THEN
			tyTransportFinished.tyData.eTransferState	:= HermesTransferStateIncomplete;
		ELSE
			tyTransportFinished.tyData.eTransferState	:= HermesTransferStateNotStarted;
		END_IF
		tyTransportFinished.tyData.sBoardId				:= tyStartTransport.tyData.sBoardId;
			
		tyTransportFinished.tyAvl.bTransferState		:= TRUE;
		tyTransportFinished.tyAvl.bBoardId				:= TRUE;
		
	END_IF
		
	END_IF

END_ACTION
