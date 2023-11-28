
ACTION Act_OptP0933Navi:
	
	IF tyP0933PullConv.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0933PullConv.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0933PullConv.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
	END_IF
	
END_ACTION
