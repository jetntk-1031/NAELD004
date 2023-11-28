
ACTION Act_OptP0932Navi:
	
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual:
			IF tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl	:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= TRUE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl = TRUE
				OR tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl = TRUE 
				THEN
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bValue			:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
			END_IF
	
		LDMagTriple:
			IF tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl	:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
			
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= TRUE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bValue			:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0930MagConv1;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
			END_IF
			
		LDMagQuadruple:
			IF tyP0932MagConv3.tyNavi4Lyr3.tyBtnBack.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnBack.bRtCompl	:= FALSE;
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= TRUE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0932MagConv3.tyNavi4Lyr3.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnLeft.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnLeft.bValue			:= FALSE;
				eChgPage												:= UIP0931MagConv2;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= FALSE;
				
			ELSIF tyP0932MagConv3.tyNavi4Lyr3.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnRgt.bRtCompl			:= FALSE;
				tyP0932MagConv3.tyNavi4Lyr3.tyBtnRgt.bValue				:= FALSE;
				eChgPage												:= UIP0939MagConv4;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				bDispMagConv4	:= TRUE;
			END_IF	
	END_CASE
	
END_ACTION
