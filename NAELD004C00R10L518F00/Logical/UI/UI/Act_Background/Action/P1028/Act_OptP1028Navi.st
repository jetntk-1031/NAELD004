
ACTION Act_OptP1028Navi: 
	
	tyP1028McSetRS232Setting.tyNaviBack.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1028McSetRS232Setting.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP1028McSetRS232Setting.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP1020McSetNavi;
		
	END_IF
	
END_ACTION
