
ACTION Act_OptP1020Navi:
	
	IF tyP1020McSetNavi.tyNavi.tyBtnMcSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnMcSet.bRtCompl			:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnMcSet.bValue			:= FALSE;
		
		eChgPage	:= UIP1021McSetGen;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bRtCompl		:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1022McSetVComm;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bRtCompl		:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1023McSetHComm;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1024McSetAntiGap;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnAIVCommSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnAIVCommSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnAIVCommSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1025McSetAIVComm;
	
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnUSBSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnUSBSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnUSBSet.bValue	:= FALSE;
		
		eChgPage	:= UIP1027McSetUSBSet;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnRS232Set.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnRS232Set.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnRS232Set.bValue	:= FALSE;
		
		eChgPage	:= UIP1028McSetRS232Set;	
	END_IF
	
END_ACTION
