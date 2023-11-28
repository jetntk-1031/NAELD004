(** 2020-08-29 **)
ACTION Act_Background:
	
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
		
		fbFileAppend1(bEn := FALSE);
		iWriteLogStep	:= 0;
	END_IF
	
	IF eStatus1 <> Error THEN
			
		IF udiWriteLogCntr <> udiLogCntr THEN
			
			CASE iWriteLogStep OF
				
				0:
					dtCurrDTTemp			:= p_dtCurrDT;
					fbFileAppend1.sFile		:= DT_TO_STRING(dtCurrDTTemp);
					fbFileAppend1.sFile		:= MID(fbFileAppend1.sFile , 10 , 4);
					fbFileAppend1.sFile		:= CONCAT('_' , fbFileAppend1.sFile);
					fbFileAppend1.sFile		:= CONCAT('USB' , fbFileAppend1.sFile);
					fbFileAppend1.sFile		:= CONCAT(fbFileAppend1.sFile , '.dat');
					
					fbFileAppend1.p_Src		:= ADR(a_sLogList[udiWriteLogCntr]);
					fbFileAppend1.udiLen	:= LEN(a_sLogList[udiWriteLogCntr]);
						
					iWriteLogStep	:= 1;
					
				1:	
					fbFileAppend1(bEn := TRUE);
					IF fbFileAppend1.udiStatus = 0 THEN
						fbFileAppend1(bEn := FALSE);
						
						udiWriteLogCntr	:= udiWriteLogCntr + 1;
						IF udiWriteLogCntr = 10 THEN
							udiWriteLogCntr	:= 0;
						END_IF
						
						iWriteLogStep	:= 0;
						
					ELSIF fbFileAppend1.udiStatus < 65534 THEN
						eStatus1	:= Error;
								
						IF fbFileAppend1.udiStatus = 1900 THEN
							udiStatus1	:= 10017;	//File Open Error While Writing Serial Log
						ELSIF fbFileAppend1.udiStatus = 1901 THEN
							udiStatus1	:= 10018;	//File Create Error While Writing Serial Log
						ELSIF fbFileAppend1.udiStatus = 1913 THEN
							udiStatus1	:= 10019;	//Get File Info Error While Writing Serial Log
						ELSIF fbFileAppend1.udiStatus = 1903 THEN
							udiStatus1	:= 10020;	//File Write Error While Writing Serial Log
						ELSIF fbFileAppend1.udiStatus = 1904 THEN
							udiStatus1	:= 10021;	//File Close Error While Writing Serial Log
						ELSIF fbFileAppend1.udiStatus = 1914 THEN
							udiStatus1	:= 10022;	//Directory Does Not Exist While Writing Serial Log
						ELSE
							udiStatus1	:= fbFileAppend1.udiStatus;
						END_IF
						
						iWriteLogStep	:= 0;
						
					END_IF
					
			END_CASE
			
		END_IF
		
	END_IF
END_ACTION
