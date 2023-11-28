(** 2020-12-31 **)
ACTION Act_Main:
	
	//Main
	CASE eStat OF
		
		FrmActIdle:
			IF eStatus <> Idle THEN	//Reset Data
				//Private
				fbFullWrite(bEn := FALSE);
				fbFullRead(bEn := FALSE);
				fbFullReadUntilValid(bEn := FALSE);
				usiStep	:= 0;

				sStatTxt	:= a_sStatText[eStat];
		
			END_IF
		
			bMsgRdValid	:= FALSE;
			eStatus	:= Idle;
		
		FrmActFullRead:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				fbFullRead.tyXOpenConfig	:= p_tyXOpenConfig;
				fbFullRead(bEn := TRUE);
				IF fbFullRead.udiStatus = 0 THEN
					eStatus	:= Done;

					bMsgRdValid	:= fbFullRead.bReadValid;
					uiMsgRdLen	:= fbFullRead.uiLen;
					
					IF bMsgRdValid = TRUE THEN
						
						//Start Code
						IF p_diStartCode1 <> -1 AND p_diStartCode2 <> -1 THEN
				
							iStartCodeLen	:= 2;
							siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
							siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
							memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
							memmove(ADR(sStartCode) + 1 , ADR(siStartCode2) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 <> -1 AND p_diStartCode2 = -1 THEN
		
							iStartCodeLen	:= 1;
							siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
							memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 = -1 AND p_diStartCode2 <> -1 THEN
		
							iStartCodeLen	:= 1;
							siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
							memmove(ADR(sStartCode) , ADR(siStartCode2) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 = -1 AND p_diStartCode2 = -1 THEN
		
							iStartCodeLen	:= 0;
							iStartCodePos	:= 0;
		
						END_IF
			
						IF iStartCodePos <> 0 THEN
							sMsgRd	:= RIGHT(sFullMsgRd , (LEN(sFullMsgRd) - (iStartCodePos + iStartCodeLen - 1)));
						ELSIF iStartCodePos = 0 THEN
							sMsgRd	:= sFullMsgRd;	 //sMsgRd	:= ''; //Anson
						END_IF
			
						IF p_diEndCode1 <> -1 OR p_diEndCode2 <> -1 THEN
							sMsgRd	:= LEFT(sMsgRd , LEN(sMsgRd) - 1);
						END_IF
						
						fLogDTConvert(ADR(sDT) , p_dtCurrDT);
						memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('Received :') , LEN('Received :'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sMsgRd) , LEN(sMsgRd));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
						
						udiLogCntr	:= udiLogCntr + 1;
						IF udiLogCntr = 10 THEN
							udiLogCntr	:= 0;
						END_IF
		
					END_IF
					
				ELSIF fbFullRead.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbFullRead.udiStatus = 2350 THEN
						udiStatus	:= 10000;	//Open Port Error While Reading Message
					ELSIF fbFullRead.udiStatus = 2354 THEN
						udiStatus	:= 10001;	//Read Buffer Error While Reading Message
					ELSIF fbFullRead.udiStatus = 2355 THEN
						udiStatus	:= 10002;	//Release Receive Buffer Error While Reading Message
					ELSIF fbFullRead.udiStatus = 2356 THEN
						udiStatus	:= 10003;	//Close Port Error While Reading Message
					ELSE
						udiStatus	:= fbFullRead.udiStatus;
					END_IF
					
				END_IF
					
			END_IF
		
		FrmActFullWrite:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				fbFullWrite.tyXOpenConfig	:= p_tyXOpenConfig;
				fbFullWrite.p_Data			:= ADR(p_sMsgWr);
				fbFullWrite.uiLen			:= LEN(p_sMsgWr);
				fbFullWrite(bEn := TRUE);
				
				IF fbFullWrite.udiStatus = 0 THEN
					eStatus	:= Done;
					
					fLogDTConvert(ADR(sDT) , p_dtCurrDT);
					memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
					memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
					memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
					memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('Sent :') , LEN('Sent :'));
					memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(p_sMsgWr) , LEN(p_sMsgWr));
					memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
						
					udiLogCntr	:= udiLogCntr + 1;
					IF udiLogCntr = 10 THEN
						udiLogCntr	:= 0;
					END_IF

				ELSIF fbFullWrite.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbFullWrite.udiStatus = 2350 THEN
						udiStatus	:= 10004;	//Open Port Error While Writing Message
					ELSIF fbFullWrite.udiStatus = 2352 THEN
						udiStatus	:= 10005;	//Write Buffer Error While Writing Message
					ELSIF fbFullWrite.udiStatus = 2356 THEN
						udiStatus	:= 10006;	//Close Port Error While Writing Message
					ELSE
						udiStatus	:= fbFullWrite.udiStatus;
					END_IF
				END_IF
					
			END_IF
		
		FrmActFullReadUntilValid:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				fbFullReadUntilValid.tyXOpenConfig	:= p_tyXOpenConfig;
				fbFullReadUntilValid(bEn := TRUE);
				IF fbFullReadUntilValid.udiStatus = 0 THEN
					eStatus	:= Done;

					bMsgRdValid	:= TRUE;
					uiMsgRdLen	:= fbFullReadUntilValid.uiLen;
					
					IF bMsgRdValid = TRUE THEN
						
						//Start Code
						IF p_diStartCode1 <> -1 AND p_diStartCode2 <> -1 THEN
				
							iStartCodeLen	:= 2;
							siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
							siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
							memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
							memmove(ADR(sStartCode) + 1 , ADR(siStartCode2) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 <> -1 AND p_diStartCode2 = -1 THEN
		
							iStartCodeLen	:= 1;
							siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
							memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 = -1 AND p_diStartCode2 <> -1 THEN
		
							iStartCodeLen	:= 1;
							siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
							memmove(ADR(sStartCode) , ADR(siStartCode2) , 1);
		
							iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
						ELSIF p_diStartCode1 = -1 AND p_diStartCode2 = -1 THEN
		
							iStartCodeLen	:= 0;
							iStartCodePos	:= 0;
		
						END_IF
			
						IF iStartCodePos <> 0 THEN
							sMsgRd	:= RIGHT(sFullMsgRd , (LEN(sFullMsgRd) - (iStartCodePos + iStartCodeLen - 1)));
						ELSIF iStartCodePos = 0 THEN
							sMsgRd	:= sFullMsgRd;	 //sMsgRd	:= ''; //Anson
						END_IF
			
						IF p_diEndCode1 <> -1 OR p_diEndCode2 <> -1 THEN
							sMsgRd	:= LEFT(sMsgRd , LEN(sMsgRd) - 1);
						END_IF
						
						fLogDTConvert(ADR(sDT) , p_dtCurrDT);
						memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('Received :') , LEN('Received :'));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sMsgRd) , LEN(sMsgRd));
						memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
						
						udiLogCntr	:= udiLogCntr + 1;
						IF udiLogCntr = 10 THEN
							udiLogCntr	:= 0;
						END_IF
					END_IF
					
				ELSIF fbFullReadUntilValid.udiStatus < 65534 THEN
					eStatus		:= Error;
					bMsgRdValid	:= FALSE;
					
					IF fbFullReadUntilValid.udiStatus = 2350 THEN
						udiStatus	:= 10007;	//Open Port Error While Reading Message
					ELSIF fbFullReadUntilValid.udiStatus = 2354 THEN
						udiStatus	:= 10008;	//Read Buffer Error While Reading Message
					ELSIF fbFullReadUntilValid.udiStatus = 2355 THEN
						udiStatus	:= 10009;	//Release Receive Buffer Error While Reading Message
					ELSIF fbFullReadUntilValid.udiStatus = 2356 THEN
						udiStatus	:= 10010;	//Close Port Error While Reading Message
					ELSE
						udiStatus	:= fbFullReadUntilValid.udiStatus;
					END_IF
					
				END_IF
					
			END_IF
			
		FrmActCreateDir:
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
								udiStatus	:= 10012;	//'Create Serial Directory Error'
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
								udiStatus	:= 10013;	//'Create RS232 Directory Error'
							ELSE
								udiStatus	:= fbDirCreate3.udiStatus;
							END_IF
						END_IF
				END_CASE
				
			END_IF
		
		FrmActDeleteOldLog:
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
		
		FrmActAppendLog:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				dtCurrDTTemp			:= p_dtCurrDT;
				fbFileAppend1.sFile		:= DT_TO_STRING(dtCurrDTTemp);
				fbFileAppend1.sFile		:= MID(fbFileAppend1.sFile , 10 , 4);
				fbFileAppend1.sFile		:= CONCAT('Serial_' , fbFileAppend1.sFile);
				fbFileAppend1.sFile		:= CONCAT(fbFileAppend1.sFile , '.dat');
				
				fbFileAppend1.p_Src		:= ADR(a_sLogList[udiWriteLogCntr]);
				fbFileAppend1.udiLen	:= LEN(a_sLogList[udiWriteLogCntr]);
				
				fbFileAppend1(bEn := TRUE);
				IF fbFileAppend1.udiStatus = 0 THEN
					IF udiWriteLogCntr >= udiLogCntr THEN
						eStatus	:= Done;
					ELSE
						udiWriteLogCntr	:= udiWriteLogCntr + 1;
						fbFileAppend1(bEn := FALSE);
					END_IF
					
				ELSIF fbFileAppend1.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbFileAppend1.udiStatus = 1900 THEN
						udiStatus	:= 10017;	//File Open Error While Writing Serial Log
					ELSIF fbFileAppend1.udiStatus = 1901 THEN
						udiStatus	:= 10018;	//File Create Error While Writing Serial Log
					ELSIF fbFileAppend1.udiStatus = 1913 THEN
						udiStatus	:= 10019;	//Get File Info Error While Writing Serial Log
					ELSIF fbFileAppend1.udiStatus = 1903 THEN
						udiStatus	:= 10020;	//File Write Error While Writing Serial Log
					ELSIF fbFileAppend1.udiStatus = 1904 THEN
						udiStatus	:= 10021;	//File Close Error While Writing Serial Log
					ELSIF fbFileAppend1.udiStatus = 1914 THEN
						udiStatus	:= 10022;	//Directory Does Not Exist While Writing Serial Log
					ELSE
						udiStatus	:= fbFileAppend1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		FrmActBGStartLog:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				sStatTxt	:= a_sStatText[eStat];
		
				bFrmLog		:= TRUE;
				eStatus		:= Done;
				
			END_IF
		
		FrmActBGStopLog:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				sStatTxt	:= a_sStatText[eStat];
		
				bFrmLog		:= FALSE;
				eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
