
ACTION Act_OptP0206RstMnl:
	
	IF eCurrPage <> UIP0206OpsMag4 THEN
		bNewMag4	:= FALSE;
		bRlsMag4	:= FALSE;
		tyP0206OpsMag4.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0206OpsMag4.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
	END_IF
	
END_ACTION
