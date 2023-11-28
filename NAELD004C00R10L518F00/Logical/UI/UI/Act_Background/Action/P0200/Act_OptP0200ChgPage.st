
ACTION Act_OptP0200ChgPage: 

	IF tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0201OpsTravLifter;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.bRtCompl = TRUE OR tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.bRtCompl = TRUE 
		OR tyP0200OpsGen.tyOps.tyHotspotOps4Mag1.bRtCompl = TRUE 
		THEN
		tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps4Mag1.bRtCompl	:= FALSE;
		eChgPage	:= UIP0202OpsMag1;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.bRtCompl = TRUE OR tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.bRtCompl = TRUE 
		OR tyP0200OpsGen.tyOps.tyHotspotOps4Mag2.bRtCompl = TRUE 
		THEN
		tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps4Mag2.bRtCompl	:= FALSE;
		eChgPage	:= UIP0203OpsMag2;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.bRtCompl = TRUE OR tyP0200OpsGen.tyOps.tyHotspotOps4Mag3.bRtCompl = TRUE 
		THEN
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps4Mag3.bRtCompl	:= FALSE;
		eChgPage	:= UIP0204OpsMag3;
	
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps4Mag4.bRtCompl = TRUE 
		THEN
		tyP0200OpsGen.tyOps.tyHotspotOps4Mag4.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0206OpsMag4;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsAIV.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsAIV.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0205OpsAIV;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsMagInfo.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
		
	END_IF
	
END_ACTION
