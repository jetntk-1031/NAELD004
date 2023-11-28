
ACTION Act_OptP1027Navi: 
	
	
	IF tyP1027McSetUSBSetting.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN	
		tyP1027McSetUSBSetting.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP1020McSetNavi;
		
		
		
	END_IF
	
END_ACTION
