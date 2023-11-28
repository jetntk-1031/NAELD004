
ACTION Act_OptP0939Navi:
	
	IF tyP0939MagConv4.tyNavi4Lyr4.tyBtnBack.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnBack.bRtCompl	:= FALSE;
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnBack.bValue	:= FALSE;
				
		eChgPage	:= UIP0920MtrNPneuCtrl;
			
		bDispMagConv1	:= FALSE;
		bDispMagConv2	:= FALSE;
		bDispMagConv3	:= FALSE;
		bDispMagConv4	:= TRUE;
		
	ELSIF tyP0939MagConv4.tyNavi4Lyr4.tyBtnLeft.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnLeft.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnLeft.bValue			:= FALSE;
		eChgPage												:= UIP0932MagConv3;
		bDispMagConv1	:= FALSE;
		bDispMagConv2	:= FALSE;
		bDispMagConv3	:= TRUE;
		bDispMagConv4	:= FALSE;
		
	ELSIF tyP0939MagConv4.tyNavi4Lyr4.tyBtnRgt.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnRgt.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyNavi4Lyr4.tyBtnRgt.bValue				:= FALSE;
		eChgPage												:= UIP0930MagConv1;
		bDispMagConv1	:= TRUE;
		bDispMagConv2	:= FALSE;
		bDispMagConv3	:= FALSE;
		bDispMagConv4	:= FALSE;
		
	END_IF	
	
END_ACTION
