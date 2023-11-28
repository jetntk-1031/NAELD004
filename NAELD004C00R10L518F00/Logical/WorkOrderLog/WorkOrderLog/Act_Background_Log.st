(** 2021-06-20 **)
ACTION Act_Background_Log:
	if 
	IF eStatus1 <> Error THEN
		IF udiWriteLogCntr <> udiLogCntr THEN
			
			CASE i OF
				
				0:
					dtCurrDTTemp			:= p_dtCurrDT;
					fbFileAppend1.sFile		:= DT_TO_STRING(dtCurrDTTemp);
					fbFileAppend1.sFile		:= MID(fbFileAppend1.sFile , 10 , 4);
					fbFileAppend1.sFile		:= CONCAT(p_sProgNm , fbFileAppend1.sFile);
					fbFileAppend1.sFile		:= CONCAT(fbFileAppend1.sFile , '.dat');
							
					fbFileAppend1.p_Src		:= ADR(p_sSourceString);
					fbFileAppend1.udiLen	:= LEN(p_sSourceString);
					
					i	:= 1;
					
				1:	
					fbFileAppend1(bEn := TRUE);
					IF fbFileAppend1.udiStatus = 0 THEN
						fbFileAppend1(bEn := FALSE);
						
						udiWriteLogCntr	:= udiWriteLogCntr + 1;
						IF udiWriteLogCntr = 10 THEN
							udiWriteLogCntr	:= 0;
						END_IF
						
						i	:= 0;
						
					ELSIF fbFileAppend1.udiStatus < 65534 THEN
						eStatus1	:= Error;
								
						IF fbFileAppend1.udiStatus = 1900 THEN
							udiStatus1	:= 10000;	//File Open Error While Writing Log
						ELSIF fbFileAppend1.udiStatus = 1901 THEN
							udiStatus1	:= 10001;	//File Create Error While Writing Log
						ELSIF fbFileAppend1.udiStatus = 1913 THEN
							udiStatus1	:= 10002;	//Get File Info Error While Writing Log
						ELSIF fbFileAppend1.udiStatus = 1903 THEN
							udiStatus1	:= 10003;	//File Write Error While Writing Log
						ELSIF fbFileAppend1.udiStatus = 1904 THEN
							udiStatus1	:= 10004;	//File Close Error While Writing Log
						ELSIF fbFileAppend1.udiStatus = 1914 THEN
							udiStatus1	:= 10005;	//Directory Does Not Exist While Writing Log
						ELSE
							udiStatus1	:= fbFileAppend1.udiStatus;
						END_IF
						
						
						i	:= 0;
					END_IF
			END_CASE
		END_IF
		
END_ACTION
