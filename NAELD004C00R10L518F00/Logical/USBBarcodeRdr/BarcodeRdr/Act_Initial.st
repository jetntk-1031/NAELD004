(** 2020-08-29 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbGetUSBDevice.uiFilterInterfaceClass := 3; // HID
	fbGetUSBDevice.uiFilterInterfaceSubClass := 1; //HID
	fbGetUSBDevice (bEn := FALSE);
	fbReadUSBDevice (bEn := FALSE);
	fbRmvUSBDevice (bEn := FALSE);

	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Serial';
	fbDirCreate2(bEn := FALSE);
		
	fbDirCreate3.sDevice	:= 'Serial';
	fbDirCreate3.sDirName	:= 'USB';
	fbDirCreate3(bEn := FALSE);

	fbFileAppend1.sDevice	:= 'USB';
	fbFileAppend1(bEn := FALSE);
		
	fbFileOldDel1.sDevice	:= 'USB';
	fbFileOldDel1.sPath		:= '';
	fbFileOldDel1.sKeyword	:= 'USB_';
	fbFileOldDel1(bEn := FALSE);
	

END_ACTION
