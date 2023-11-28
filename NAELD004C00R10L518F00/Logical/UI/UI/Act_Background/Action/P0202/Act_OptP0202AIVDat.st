
ACTION Act_OptP0202AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled  OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	tyP0202OpsMag1.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled  OR p_tyNtParamCurr.bProjLifterMagPlatform;;
	//LED Wifi
	tyP0202OpsMag1.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
				
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag1	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
			
		IF tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl = TRUE THEN
			tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk := TRUE;
			IF 	p_bOpsMagConvLD1NewMagAllw OR p_bOpsMagConvLD1RlsMagAllw OR p_bOpsMagConvLD1RlsMagUmask THEN
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;	
				bNewMag1	:= p_bOpsMagConvLD1NewMagAllw;
				bRlsMag1	:= p_bOpsMagConvLD1RlsMagAllw;
				bEjectMag1  := p_bOpsMagConvLD1ExtMes;
			END_IF
		END_IF
				
	
					
		IF bNewMag1 = TRUE THEN
			tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;	
		
			IF p_tyDI.bMag1FixedUnclampRS = FALSE OR p_eMagConv2Clp1Status = Error THEN
				bNewMag1	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
					
		ELSIF bRlsMag1 = TRUE OR bEjectMag1 THEN
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
				IF p_bOpsMagConvLD1RlsMagUmask THEN // siemens , read -1 or write TO
					IF p_tyNtParamCurr.eCustomerReq = We_Fabricate THEN
						//bRlsMag1	:= FALSE;		
						tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
					END_IF			
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				ELSIF p_bOpsMagConvLD1ExtMes THEN //2nd press to eject mag
					bEjectMag1	:= FALSE;		
					bRlsMag1	:= FALSE;
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE; 
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				ELSIF (p_tyDI.bMag1FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen1 = FALSE) AND p_tyMcParamCurr.eDSCommA = 0 THEN//smema
					bRlsMag1	:= FALSE;		
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				END_IF
				
			ELSIF (p_tyDI.bMag1FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen1 = FALSE)THEN
				bRlsMag1	:= FALSE;		
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
							
		END_IF
	
		
		IF p_tyDI.bMagPresentSen1 AND p_tyDI.bMagConvEntSen1 = FALSE THEN
			tyP0202OpsMag1.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
		ELSE
			tyP0202OpsMag1.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.uiMaskRtStat := TRUE;
			IF EDGEPOS(tyP0202OpsMag1.tyOps.tyBtnChgMag.usiTxtIdx =0) THEN
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
		END_IF
				
//		tyP0202OpsMag1.tyOps.tyBtnChgMag.uiMaskRtStat.0	:= p_bOpsMagConvLD1NewMagAllw OR p_bOpsMagConvLD1RlsMagAllw OR p_bOpsMagConvLD1RlsMagUmask;// OR p_tyDI.bInShutterCloseRS;
	END_IF
	
END_ACTION
