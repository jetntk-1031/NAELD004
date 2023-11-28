
ACTION Act_OptP1023Navi: 
	
	tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN	
		eChgPage	:= UIP1020McSetNavi;
			
		tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
	
	ELSIF tyP1023McSetHComm.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE THEN
		
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr2);	
		p_tyP1023McSetHCommDSSel ACCESS ADR(tyP1023McSetHComm.tyDSSelB);
		p_tyP1023McSetHCommDSSMEMA ACCESS ADR(tyP1023McSetHComm.tyDSSMEMAB);
		p_tyP1023McSetHCommDSHermes ACCESS ADR(tyP1023McSetHComm.tyDSHermesB);
		
		tyP1023McSetHComm.tyDSSelB.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
		
		tyP1023McSetHComm.tyNaviLyr1.tyBtnLeft.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyNaviLyr1.tyBtnRgt.bRtCompl	:= FALSE;
		
	ELSIF tyP1023McSetHComm.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE THEN
		
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr1);
		p_tyP1023McSetHCommDSSel ACCESS ADR(tyP1023McSetHComm.tyDSSelA);
		p_tyP1023McSetHCommDSSMEMA ACCESS ADR(tyP1023McSetHComm.tyDSSMEMAA);
		p_tyP1023McSetHCommDSHermes ACCESS ADR(tyP1023McSetHComm.tyDSHermesA);
		
		tyP1023McSetHComm.tyDSSelA.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
		
		tyP1023McSetHComm.tyNaviLyr2.tyBtnLeft.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyNaviLyr2.tyBtnRgt.bRtCompl	:= FALSE;
		
	END_IF	
	
END_ACTION
