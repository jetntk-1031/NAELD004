(** 2021-08-01 **)
ACTION Act_Background_SendBoardInfo:
	
	IF eStatus2 <> Error THEN
		IF tyServiceDescriptionRcv.tyAvl.tySupportedFeatures.bFeatureQueryBoardInfo = TRUE AND p_tyParam.bFeatureSendBoardInfo THEN
			
			IF tyMsgTypeRcv.bQueryBoardInfo THEN
				
			    IF tyQueryBoardInfo.tyData.sTopBarcode <> '' THEN
					bSearchTop := TRUE;
					sSearchTop := tyQueryBoardInfo.tyData.sTopBarcode;
				ELSE
				    bSearchTop := FALSE;
				END_IF			
		
				IF tyQueryBoardInfo.tyData.sBottomBarcode <> '' THEN
					bSearchBottom := TRUE;
					sSearchBottom := tyQueryBoardInfo.tyData.sBottomBarcode;
				ELSE
					bSearchBottom := FALSE;
				END_IF	
			
				
				udiTopTargetAddress := ADR(a_tyBoardDepartedInfo[0].tyData.sTopBarcode); //Top Barcode Start address
				udiBottomTargetAddress := ADR(a_tyBoardDepartedInfo[0].tyData.sBottomBarcode); //Bottom Barcode Start address
				udiSizeOfAddress := SIZEOF(a_tyBoardDepartedInfo[0]); //Size of one recipe
				
				
	
				// Search Top Barcode
				IF bSearchTop = TRUE THEN 
		
					FOR j := 0 TO 49 DO //50 recipes
						
					
							IF memcmp((udiTopTargetAddress)+(j*udiSizeOfAddress), ADR(sSearchTop) , LEN(sSearchTop)) = 0 THEN
						
								bFoundTop	:= TRUE;
							    udiFoundRecipeTop := j;
								udiFoundAddressTop := (udiTopTargetAddress)+(j*udiSizeOfAddress);
								p_sFoundAddressTop ACCESS (udiFoundAddressTop);
								EXIT;
							END_IF		

					END_FOR		
				END_IF 
				
				// Search Bottom Barcode
	
				IF bSearchBottom = TRUE THEN 
		
					FOR jj := 0 TO 49 DO
						
					
							IF memcmp((udiBottomTargetAddress)+(jj*udiSizeOfAddress), ADR(sSearchBottom) , LEN(sSearchBottom)) = 0 THEN
						
								bFoundBottom	:= TRUE;
							    udiFoundRecipeBottom := jj;
								udiFoundAddressBottom := (udiBottomTargetAddress)+(jj*udiSizeOfAddress);
								p_sFoundAddressBottom ACCESS (udiFoundAddressBottom);
								EXIT;
							END_IF		
						
					END_FOR		
				END_IF 
	
				IF bSearchTop AND bSearchBottom AND bFoundTop AND bFoundBottom THEN
					IF udiFoundRecipeTop <> udiFoundRecipeBottom THEN //No need Error
						bSendOk := TRUE;
				    	bFoundNothing := TRUE;		
					ELSE	
						bSendOk := TRUE;
					    bFoundNothing := FALSE;
					    udiFoundRecipeFinal := udiFoundRecipeTop OR udiFoundRecipeBottom; //Both are same.
					END_IF
					
					
				ELSIF bSearchTop AND bSearchBottom AND bFoundTop AND bFoundBottom = FALSE THEN
					bSendOk := TRUE;
					bFoundNothing := TRUE;

				ELSIF bSearchTop AND bSearchBottom AND bFoundTop = FALSE AND bFoundBottom THEN
					bSendOk := TRUE;
					bFoundNothing := TRUE;

				ELSIF bSearchTop AND bSearchBottom AND bFoundTop = FALSE AND bFoundBottom = FALSE THEN
					bSendOk := TRUE;
					bFoundNothing := TRUE;
				END_IF
			
					
				IF bSearchTop AND bSearchBottom = FALSE AND bFoundTop THEN
					bSendOk := TRUE;
					bFoundNothing := FALSE;
					udiFoundRecipeFinal := udiFoundRecipeTop;
				END_IF
				
				IF bSearchTop AND bSearchBottom = FALSE AND bFoundTop = FALSE THEN
					bSendOk := TRUE;
					bFoundNothing := TRUE;
				END_IF
				
				IF bSearchTop = FALSE AND bSearchBottom AND bFoundBottom THEN
					bSendOk := TRUE;
					bFoundNothing := FALSE;
					udiFoundRecipeFinal := udiFoundRecipeBottom;
				END_IF
				
				IF bSearchTop = FALSE AND bSearchBottom AND bFoundBottom = FALSE THEN
					bSendOk := TRUE;
					bFoundNothing := TRUE;
				END_IF
				
				IF  bSendOk AND bFoundNothing = FALSE THEN //BoardInfo Found
				 
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeSendBoardInfo);

					tySendBoardInfo.tyData.sBoardId                     := a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sBoardId;			
					tySendBoardInfo.tyData.sBoardIdCreatedBy            := a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sBoardIdCreatedBy;			
					tySendBoardInfo.tyData.eFailedBoard 		    	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.eFailedBoard;			
					tySendBoardInfo.tyData.sProductTypeId 			    := a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sProductTypeId;	 //current recipe0 name			
					tySendBoardInfo.tyData.eFlippedBoard 		    	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.eFlippedBoard;			
					tySendBoardInfo.tyData.sTopBarcode 		        	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sTopBarcode;			
					tySendBoardInfo.tyData.sBottomBarcode 		    	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sBottomBarcode;			
					tySendBoardInfo.tyData.rLength 			        	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rLength;			
					tySendBoardInfo.tyData.rWidth 			        	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rWidth;	//current recipe 0 width			
					tySendBoardInfo.tyData.rThickness 		        	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rThickness;				
					tySendBoardInfo.tyData.rTopClearanceHeight 	    	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rTopClearanceHeight;			
					tySendBoardInfo.tyData.rBottomClearanceHeight 	    := a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rBottomClearanceHeight;	
					tySendBoardInfo.tyData.rWeight 			        	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.rWeight;			
					tySendBoardInfo.tyData.sWorkOrderId 		    	:= a_tyBoardDepartedInfo[udiFoundRecipeFinal].tyData.sWorkOrderId;				

		    		tySendBoardInfo.tyAvl.bBoardId 				        := tySendBoardInfo.tyData.sBoardId <> '';			
		    		tySendBoardInfo.tyAvl.bBoardIdCreatedBy 	        := tySendBoardInfo.tyData.sBoardIdCreatedBy <> '';			
		    		tySendBoardInfo.tyAvl.bFailedBoard 			        := TRUE;			
		    		tySendBoardInfo.tyAvl.bProductTypeId 		    	:= tySendBoardInfo.tyData.sProductTypeId <> '';			
		    		tySendBoardInfo.tyAvl.bFlippedBoard 		        := TRUE;			
		    		tySendBoardInfo.tyAvl.bTopBarcode 		    	    := tySendBoardInfo.tyData.sTopBarcode <> '';			
					tySendBoardInfo.tyAvl.bBottomBarcode 		    	:= tySendBoardInfo.tyData.sBottomBarcode <> '';
					tySendBoardInfo.tyAvl.bWidth 			        	:= tySendBoardInfo.tyData.rWidth <> 0;	
		    		tySendBoardInfo.tyAvl.bLength 			        	:= tySendBoardInfo.tyData.rLength <> 0;			
		 	    	tySendBoardInfo.tyAvl.bThickness 		        	:= tySendBoardInfo.tyData.rThickness <> 0;						
			    	tySendBoardInfo.tyAvl.bTopClearanceHeight 	    	:= tySendBoardInfo.tyData.rTopClearanceHeight <> 0;			
			    	tySendBoardInfo.tyAvl.bBottomClearanceHeight 	    := tySendBoardInfo.tyData.rBottomClearanceHeight <> 0;	
			    	tySendBoardInfo.tyAvl.bWeight 			        	:= tySendBoardInfo.tyData.rWeight <> 0;			
			    	tySendBoardInfo.tyAvl.bWorkOrderId 		        	:= tySendBoardInfo.tyData.sWorkOrderId <> '';
			

				ELSIF bSendOk AND bFoundNothing = TRUE THEN //BoardInfo Not Found
					
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeSendBoardInfo);

					tySendBoardInfo.tyData.sBoardId                     := '';			
					tySendBoardInfo.tyData.sBoardIdCreatedBy            := '';			
					tySendBoardInfo.tyData.eFailedBoard 		    	:= HermesUnknownBoard;			
					tySendBoardInfo.tyData.sProductTypeId 			    := '';
					tySendBoardInfo.tyData.eFlippedBoard 		    	:= HermesFlippedBoardUnknownSide;			
					tySendBoardInfo.tyData.sTopBarcode 		        	:= tyQueryBoardInfo.tyData.sTopBarcode;			
					tySendBoardInfo.tyData.sBottomBarcode 		    	:= tyQueryBoardInfo.tyData.sBottomBarcode;			
					tySendBoardInfo.tyData.rLength 			        	:= 0;			
					tySendBoardInfo.tyData.rWidth 			        	:= 0;		
					tySendBoardInfo.tyData.rThickness 		        	:= 0;				
					tySendBoardInfo.tyData.rTopClearanceHeight 	    	:= 0;			
					tySendBoardInfo.tyData.rBottomClearanceHeight 	    := 0;	
					tySendBoardInfo.tyData.rWeight 			        	:= 0;			
					tySendBoardInfo.tyData.sWorkOrderId 		    	:= '';
					tySendBoardInfo.tyData.sBatchId      		    	:= '';

					tySendBoardInfo.tyAvl.bBoardId 				        := tySendBoardInfo.tyData.sBoardId <> '';			
					tySendBoardInfo.tyAvl.bBoardIdCreatedBy 	        := tySendBoardInfo.tyData.sBoardIdCreatedBy <> '';			
					tySendBoardInfo.tyAvl.bFailedBoard 			        := FALSE; //no need send			
					tySendBoardInfo.tyAvl.bProductTypeId 		    	:= tySendBoardInfo.tyData.sProductTypeId <> '';			
					tySendBoardInfo.tyAvl.bFlippedBoard 	    	    := FALSE; //no need send			
					tySendBoardInfo.tyAvl.bTopBarcode 		        	:= tySendBoardInfo.tyData.sTopBarcode <> '';			
					tySendBoardInfo.tyAvl.bBottomBarcode 	    		:= tySendBoardInfo.tyData.sBottomBarcode <> '';			
					tySendBoardInfo.tyAvl.bLength 			        	:= tySendBoardInfo.tyData.rLength <> 0;			
					tySendBoardInfo.tyAvl.bWidth 			        	:= tySendBoardInfo.tyData.rWidth <> 0;			
					tySendBoardInfo.tyAvl.bThickness 		        	:= tySendBoardInfo.tyData.rThickness <> 0;						
					tySendBoardInfo.tyAvl.bTopClearanceHeight 	    	:= tySendBoardInfo.tyData.rTopClearanceHeight <> 0;			
					tySendBoardInfo.tyAvl.bBottomClearanceHeight     	:= tySendBoardInfo.tyData.rBottomClearanceHeight <> 0;	
					tySendBoardInfo.tyAvl.bWeight 			        	:= tySendBoardInfo.tyData.rWeight <> 0;			
					tySendBoardInfo.tyAvl.bWorkOrderId 		        	:= tySendBoardInfo.tyData.sWorkOrderId <> '';
					tySendBoardInfo.tyAvl.bBatchId 		            	:= tySendBoardInfo.tyData.sBatchId <> '';
					
				END_IF
				
			ELSE //if tyMsgTypeRcv.bQueryBoardInfo = FALSE	
				bFoundTop	   := FALSE;
				bFoundBottom   := FALSE;
				bFoundNothing  := FALSE;
				bSearchTop     := FALSE;
				bSearchBottom  := FALSE;
				bSendOk        := FALSE;
			END_IF
			
		ELSE //if feature bFeatureQueryBoardInfo not supported
			bFoundTop	   := FALSE;
			bFoundBottom   := FALSE;
			bFoundNothing  := FALSE;
			bSearchTop     := FALSE;
			bSearchBottom  := FALSE;
			bSendOk        := FALSE;		
		END_IF
	END_IF

		
END_ACTION
