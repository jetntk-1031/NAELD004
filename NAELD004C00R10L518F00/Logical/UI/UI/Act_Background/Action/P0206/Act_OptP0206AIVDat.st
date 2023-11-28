
ACTION Act_OptP0206AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0206OpsMag4.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	tyP0206OpsMag4.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	//LED Wifi
	tyP0206OpsMag4.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
				
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag4	:= FALSE;
			tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0206OpsMag4.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
				
		IF tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtCompl = TRUE THEN
			tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;	
			bNewMag4	:= p_bOpsMagConvLD4NewMagAllw;
			bRlsMag4	:= p_bOpsMagConvLD4RlsMagAllw;
		END_IF
				
	
					
		IF bNewMag4 = TRUE THEN
			tyP0206OpsMag4.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyDI.bMag4FixedUnclampRS = FALSE  OR p_eMagConv2Clp4Status = Error 
				THEN
				bNewMag4	:= FALSE;
				tyP0206OpsMag4.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0206OpsMag4.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
						
		ELSIF bRlsMag4 = TRUE THEN
			tyP0206OpsMag4.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF(p_tyDI.bMag4FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen4 = FALSE)
				THEN
				bRlsMag4	:= FALSE;		
				tyP0206OpsMag4.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0206OpsMag4.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0206OpsMag4.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
								
		END_IF
	
				
		IF p_tyDI.bMagPresentSen4 AND p_tyDI.bMagConvEntSen4 = FALSE THEN
			tyP0206OpsMag4.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
		ELSE
			tyP0206OpsMag4.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
		END_IF
				
		tyP0206OpsMag4.tyOps.tyBtnChgMag.uiMaskRtStat.0	:= p_bOpsMagConvLD4NewMagAllw OR p_bOpsMagConvLD4RlsMagAllw;// OR p_tyDI.bInShutterCloseRS;
				
	END_IF
END_ACTION
