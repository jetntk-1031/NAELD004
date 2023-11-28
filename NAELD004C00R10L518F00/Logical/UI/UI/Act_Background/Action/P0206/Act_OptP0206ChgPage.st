
ACTION Act_OptP0206ChgPage: 

	IF tyP0206OpsMag4.tyOps.tyHotspotMagInfo.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyOps.tyHotspotMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
		bDisplayMag4Info := TRUE;
	END_IF
	
END_ACTION
