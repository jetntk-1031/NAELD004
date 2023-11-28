
ACTION Act_OptP0924Navi:
	
	IF tyP0924TrolleyLck.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0924TrolleyLck.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		eChgPage	:= UIP0920MtrNPneuCtrl;
	END_IF

	
END_ACTION
