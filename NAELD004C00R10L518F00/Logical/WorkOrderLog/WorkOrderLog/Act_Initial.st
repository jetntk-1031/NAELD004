(** 2021-06-20 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Log';
	fbDirCreate2(bEn := FALSE);
	
	fbDirCreate3.sDevice	:= 'Log';
	fbDirCreate3.sDirName	:= 'WorkOrderLog';
	fbDirCreate3(bEn := FALSE);
		
	fbFileAppend1.sDevice	        := 'CTSLog';
	fbFileAppend1(bEn := FALSE);
	
	fbFileAppend2.sDevice	        := 'CTSLog';
	fbFileAppend2(bEn := FALSE);
	
	fbFileOldDel1.sDevice			:= 'CTSLog';
	fbFileOldDel1.sPath				:= '';
	fbFileOldDel1.sKeyword			:= p_sProgNm;
	fbFileOldDel1.udiFileKeepDay	:= p_udiFileKeepDay;
	fbFileOldDel1(bEn := FALSE);
		

END_ACTION
