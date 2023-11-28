
ACTION Act_OptP0930Navi:
	
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual:
			IF tyP0930MagConv1.tyNavi2Lyr1.tyBtnBack.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnBack.bRtCompl	:= FALSE;
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0930MagConv1.tyNavi2Lyr1.tyBtnLeft.bRtCompl = TRUE OR tyP0930MagConv1.tyNavi2Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnLeft.bValue			:= FALSE;
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi2Lyr1.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
			END_IF
	
		LDMagTriple:
			IF tyP0930MagConv1.tyNavi3Lyr1.tyBtnBack.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnBack.bRtCompl	:= FALSE;
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0930MagConv1.tyNavi3Lyr1.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnLeft.bValue			:= FALSE;
				eChgPage												:= UIP0932MagConv3;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= TRUE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0930MagConv1.tyNavi3Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi3Lyr1.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
			END_IF
			
		LDMagQuadruple:
			IF tyP0930MagConv1.tyNavi4Lyr1.tyBtnBack.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnBack.bRtCompl	:= FALSE;
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0930MagConv1.tyNavi4Lyr1.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnLeft.bValue			:= FALSE;
				eChgPage												:= UIP0939MagConv4;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= TRUE;
				
			ELSIF tyP0930MagConv1.tyNavi4Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0930MagConv1.tyNavi4Lyr1.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			END_IF	
	END_CASE
	
END_ACTION
