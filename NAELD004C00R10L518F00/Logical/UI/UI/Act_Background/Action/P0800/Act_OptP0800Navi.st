
ACTION Act_OptP0800Navi:
	
	IF tyP0800MagInfo.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE
		OR tyP0800MagInfo.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE	
		THEN
		tyP0800MagInfo.tyNaviLyr1.tyBtnBack.bRtCompl	:= FALSE;
		tyP0800MagInfo.tyNaviLyr1.tyBtnBack.bValue	:= FALSE;
		tyP0800MagInfo.tyNaviLyr2.tyBtnBack.bRtCompl	:= FALSE;
		tyP0800MagInfo.tyNaviLyr2.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
			
	ELSIF tyP0800MagInfo.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE
		OR tyP0800MagInfo.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE
		THEN
		tyP0800MagInfo.tyNaviLyr1.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0800MagInfo.tyNaviLyr1.tyBtnLeft.bValue		:= FALSE;
		tyP0800MagInfo.tyNaviLyr1.tyBtnRgt.bRtCompl		:= FALSE;
		tyP0800MagInfo.tyNaviLyr1.tyBtnRgt.bValue		:= FALSE;
		
		p_tyC0004Navi ACCESS ADR(tyP0800MagInfo.tyNaviLyr2);
		
		fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo1.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo3.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo4.tyLyr.uiRtStat));
		
	ELSIF tyP0800MagInfo.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE
		OR tyP0800MagInfo.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE
		THEN
		tyP0800MagInfo.tyNaviLyr2.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0800MagInfo.tyNaviLyr2.tyBtnLeft.bValue		:= FALSE;
		tyP0800MagInfo.tyNaviLyr2.tyBtnRgt.bRtCompl		:= FALSE;
		tyP0800MagInfo.tyNaviLyr2.tyBtnRgt.bValue		:= FALSE;
		
		p_tyC0004Navi ACCESS ADR(tyP0800MagInfo.tyNaviLyr1);
	
		fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo1.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0800MagInfo.tyMagInfo3.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0800MagInfo.tyMagInfo4.tyLyr.uiRtStat));
				
	END_IF	
	
END_ACTION
