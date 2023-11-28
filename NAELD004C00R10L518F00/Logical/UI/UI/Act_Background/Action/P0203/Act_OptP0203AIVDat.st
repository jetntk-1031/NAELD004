
ACTION Act_OptP0203AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	tyP0203OpsMag2.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	//LED Wifi
	tyP0203OpsMag2.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
				
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag2	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
				
		IF tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= TRUE;	
			IF 	p_bOpsMagConvLD2NewMagAllw OR p_bOpsMagConvLD2RlsMagAllw OR p_bOpsMagConvLD2RlsMagUmask THEN
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;	
				bNewMag2	:= p_bOpsMagConvLD2NewMagAllw;
				bRlsMag2	:= p_bOpsMagConvLD2RlsMagAllw;
				bEjectMag2  := p_bOpsMagConvLD2ExtMes;
			END_IF
		END_IF
				
	
					
		IF bNewMag2 = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyDI.bMag2FixedUnclampRS = FALSE OR p_eMagConv2Clp2Status = Error  THEN
				bNewMag2	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
						
		ELSIF bRlsMag2 = TRUE OR bEjectMag2 THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
				IF p_bOpsMagConvLD2RlsMagUmask THEN // siemens , read -1 or write TO
					IF p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
						//bRlsMag2	:= FALSE;		
						tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
					END_IF
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				ELSIF p_bOpsMagConvLD2ExtMes THEN //2nd press to eject mag
					bEjectMag2	:= FALSE;		
					bRlsMag2	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				ELSIF (p_tyDI.bMag2FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen2 = FALSE) AND p_tyMcParamCurr.eDSCommA = 0 THEN//smema
					bRlsMag2	:= FALSE;		
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				END_IF
				
			ELSIF (p_tyDI.bMag2FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen2 = FALSE) THEN
				bRlsMag2	:= FALSE;		
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
								
		END_IF
	
				
		IF p_tyDI.bMagPresentSen2 AND p_tyDI.bMagConvEntSen2 = FALSE THEN
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
		ELSE
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat := TRUE;
			IF EDGEPOS(tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx =0) THEN
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
		END_IF
				
	//	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat.0	:= p_bOpsMagConvLD2NewMagAllw OR p_bOpsMagConvLD2RlsMagAllw OR p_bOpsMagConvLD2RlsMagUmask;// OR p_tyDI.bInShutterCloseRS;
				
	END_IF
END_ACTION
