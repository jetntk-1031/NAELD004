(** 2019-05-21 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbFullWrite.tyCommParam		:= p_tyParam;
	fbFullWrite(bEn := FALSE);
	
	fbFullRead.tyCommParam		:= p_tyParam;
	fbFullRead.p_Data			:= ADR(sFullMsgRd);
	fbFullRead.uiMaxLen			:= SIZEOF(sFullMsgRd);
	fbFullRead(bEn := FALSE);
	
	fbFullReadUntilValid.tyCommParam	:= p_tyParam;
	fbFullReadUntilValid.p_Data			:= ADR(sFullMsgRd);
	fbFullReadUntilValid.uiMaxLen		:= SIZEOF(sFullMsgRd);
	fbFullReadUntilValid(bEn := FALSE);
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Serial';
	fbDirCreate2(bEn := FALSE);
		
	fbDirCreate3.sDevice	:= 'Serial';
	fbDirCreate3.sDirName	:= 'RS232';
	fbDirCreate3(bEn := FALSE);

	fbFileAppend1.sDevice	:= 'RS232';
	fbFileAppend1(bEn := FALSE);
	
	fbFileOldDel1.sDevice	:= 'RS232';
	fbFileOldDel1.sPath		:= '';
	fbFileOldDel1.sKeyword	:= 'Serial_';
	fbFileOldDel1(bEn := FALSE);
	
	fbFileRead1(bEn := FALSE);
	
END_ACTION
