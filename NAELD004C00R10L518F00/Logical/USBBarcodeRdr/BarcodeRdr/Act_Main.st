(** 2020-12-29 **)
ACTION Act_Main:
	
	CASE eStat OF
		
		USBRdrActIdle:
				
			(*fbRmvUSBDevice 	(bEn := FALSE);*)
			sStatTxt	:= a_sStatText[eStat];	
			eStatus	:= Idle;
			
			sBarcodeOut:= '';  
			fbUSBTimer(IN := FALSE);
			bUSBDisconnected := FALSE;
			usiStep := 0;
			
			fbGetUSBDevice (bEn := FALSE);
			fbReadUSBDevice (bEn := FALSE);
			fbRmvUSBDevice (bEn := FALSE);
			fbDirCreate1(bEn := FALSE);
			fbDirCreate2(bEn := FALSE);
			fbDirCreate3(bEn := FALSE);
			
		USBRdrActDetectDev:
			
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				CASE usiStep OF
					0:		
						fbGetUSBDevice.uiVendorID 	:= DINT_TO_UINT (p_diVendorID);
						fbGetUSBDevice.uiProductID	:= DINT_TO_UINT (p_diProductID);
						fbGetUSBDevice (bEn := TRUE);
						
						fbUSBTimer(IN := TRUE);                             
						
						IF fbGetUSBDevice.udiStatus = 0 THEN     
							eStatus := Done;
							bNodeExist := UDINT_TO_BOOL (fbGetUSBDevice.udiNodeId);
							fbUSBTimer(IN := FALSE); 
							
							bUSBDisconnected := FALSE;
							
							
						ELSIF fbUSBTimer.Q = TRUE  THEN
							
							bUSBDisconnected := TRUE;
							
							udiStatus2 	:= 10004; 
							usiStep := 99;
							fbUSBTimer(IN := FALSE);
						END_IF
				
					99:
						fbGetUSBDevice (bEn := FALSE);
				END_CASE		
			END_IF	
		
		USBRdrActRead:	
			
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				             
				fbReadUSBDevice (bEn := TRUE, udiDevice := ADR(fbGetUSBDevice.asDeviceNm));
				bUSBRmv := FALSE;
				bNodeExist := UDINT_TO_BOOL (fbGetUSBDevice.udiNodeId);
			
			
				IF fbReadUSBDevice.udiStatus = 0 THEN
					
					eStatus	    := Done;
					
					sBarcodeOut := fbReadUSBDevice.sBarcodeOut;
					
					fbReadUSBDevice (bEn := FALSE);
					
					IF fbReadUSBDevice.bNewBarcode THEN //Record new barcode in log file
						fLogDTConvert(ADR(sDT) , p_dtCurrDT);
						memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('Received :') , LEN('Received :'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sBarcodeOut) , LEN(sBarcodeOut));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
							
						udiLogCntr	:= udiLogCntr + 1;
						IF udiLogCntr = 10 THEN
							udiLogCntr	:= 0;
						END_IF
					END_IF
				
				ELSIF fbReadUSBDevice.udiStatus < 65534 THEN
					
					eStatus := Error;
					
					IF fbReadUSBDevice.udiStatus = 9667 THEN
						udiStatus 	:= 10000; //Device Lost Connection.

					ELSIF fbReadUSBDevice.udiStatus = 9668 THEN
						udiStatus 		:= 10002; //Device Not Found.
					ELSE
						udiStatus 		:= fbReadUSBDevice.udiStatus;
					END_IF
				
				END_IF
			
			
			END_IF
			
		USBRdrActSafetyRmv:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				sBarcodeOut := '';                             
				
				IF bUSBRmv = FALSE THEN
					fbRmvUSBDevice (bEn := TRUE, udiUSBIdent := fbReadUSBDevice.udiUSBIdent );

					IF fbRmvUSBDevice.udiStatus = 0 THEN
						eStatus := Done;
						bUSBRmv := TRUE;
						fbReadUSBDevice (bEn := FALSE);
						fbGetUSBDevice 	(bEn := FALSE);
						bNodeExist := UDINT_TO_BOOL (fbGetUSBDevice.udiNodeId);

					ELSIF fbRmvUSBDevice.udiStatus < 65534 THEN
						eStatus := Error;
						IF fbRmvUSBDevice.udiStatus = 8251 THEN
							udiStatus := 10003;	 
						END_IF
						
					END_IF
				END_IF
			END_IF
		
		USBRdrActFrmClose:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				fbRmvUSBDevice (bEn := TRUE, udiUSBIdent := fbReadUSBDevice.udiUSBIdent );
				
				sBarcodeOut := '';                          
				
				IF fbRmvUSBDevice.udiStatus = 0 THEN
					eStatus := Done;
					fbReadUSBDevice (bEn := FALSE);

				ELSIF fbRmvUSBDevice.udiStatus < 65534 THEN
					eStatus := Error;
					IF fbRmvUSBDevice.udiStatus = 8251 THEN
						udiStatus := 10003; //Device No Open.
					END_IF
						
				END_IF
			END_IF
		
		//Log file handling ----------------------------------------------
		USBRdrActCreateDir:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10011;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							usiStep	:= 2;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10012;	//Create Serial Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					2:
						fbDirCreate3(bEn := TRUE);
						IF fbDirCreate3.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbDirCreate3.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate3.udiStatus = 1908 THEN
								udiStatus	:= 10013;	//Create USB Directory Error
							ELSE
								udiStatus	:= fbDirCreate3.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		USBRdrActDeleteOldLog:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				fbFileOldDel1.dtDTNow			:= p_dtCurrDT;
				fbFileOldDel1.udiFileKeepDay	:= p_udiFileKeepDay;
				fbFileOldDel1(bEn := TRUE);
				IF fbFileOldDel1.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileOldDel1.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbFileOldDel1.udiStatus = 1910 THEN
						udiStatus	:= 10014;	//Get Directory Info Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1911 THEN
						udiStatus	:= 10015;	//Directory Read Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1912 THEN
						udiStatus	:= 10016;	//File Delete Error While Deleting Old Log
					ELSE
						udiStatus	:= fbFileOldDel1.udiStatus;
					END_IF
				END_IF
						
			END_IF
	END_CASE
	
END_ACTION
