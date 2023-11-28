
ACTION Act_OptP0206Navi: 
	
	IF tyP0206OpsMag4.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0206OpsMag4.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
