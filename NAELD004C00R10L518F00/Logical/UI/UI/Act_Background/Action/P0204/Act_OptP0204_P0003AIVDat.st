
ACTION Act_OptP0204_P0003AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	tyP0204OpsMag3.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	//LED Wifi
	tyP0204OpsMag3.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
				
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag3	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
				
		IF tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl = TRUE THEN
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= TRUE;	
			IF 	p_bOpsMagConvLD3NewMagAllw OR p_bOpsMagConvLD3RlsMagAllw OR p_bOpsMagConvLD3RlsMagUmask THEN
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;	
				bNewMag3	:= p_bOpsMagConvLD3NewMagAllw;
				bRlsMag3	:= p_bOpsMagConvLD3RlsMagAllw;
				bEjectMag3  := p_bOpsMagConvLD3ExtMes;
			END_IF
		END_IF
				
	
					
		IF bNewMag3 = TRUE THEN
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyDI.bMag3FixedUnclampRS = FALSE  OR p_eMagConv2Clp3Status = Error 
				THEN
				bNewMag3	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
						
		ELSIF bRlsMag3 = TRUE OR bEjectMag3 THEN
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			IF p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
				IF p_bOpsMagConvLD3RlsMagUmask THEN // siemens , read -1 or write TO
					IF p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
						//bRlsMag3	:= FALSE;		
						tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
						END_IF		
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				ELSIF p_bOpsMagConvLD3ExtMes THEN //2nd press to eject mag
					bEjectMag3	:= FALSE;	
					bRlsMag3	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				ELSIF(p_tyDI.bMag3FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen3 = FALSE) AND p_tyMcParamCurr.eDSCommA = 0 THEN//smema
					bRlsMag3	:= FALSE;		
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				END_IF
						
			ELSIF(p_tyDI.bMag3FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen3 = FALSE) THEN
				bRlsMag3	:= FALSE;		
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
								
		END_IF
	
				
		IF p_tyDI.bMagPresentSen3 AND p_tyDI.bMagConvEntSen3 = FALSE THEN
			tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
			
		ELSE
			tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
			
			
			tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat := TRUE;
			IF EDGEPOS(tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx =0) THEN
				tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
		END_IF	END_IF
				
	//	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat.0	:= p_bOpsMagConvLD3NewMagAllw OR p_bOpsMagConvLD3RlsMagAllw OR p_bOpsMagConvLD3RlsMagUmask;// OR p_tyDI.bInShutterCloseRS;
	
		//update for P0003
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiTxtIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk3.usiTxtIdx + tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiTxtIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk3.usiTxtIdx + tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiBitmapIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk3.usiBitmapIdx + 	tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.uiMaskRtStat := tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat ;
	
	END_IF
	
	
END_ACTION
