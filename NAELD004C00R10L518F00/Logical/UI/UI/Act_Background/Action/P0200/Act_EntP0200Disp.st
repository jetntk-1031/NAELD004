
ACTION Act_EntP0200Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0010RcyMsg ACCESS ADR(tyP0200OpsGen.tyRcyMsgHide);
	
	p_tyP0200OpsGen ACCESS ADR(tyP0200OpsGen.tyOps);
	p_tyP0200OpsDSCommB ACCESS ADR(tyP0200OpsGen.tyDSCommB);
	
	p_tyP0200OpsDSAVSMEMA ACCESS ADR(tyP0200OpsGen.tyDSAVSMEMA);
	p_tyP0200OpsDSBVSMEMA ACCESS ADR(tyP0200OpsGen.tyDSBVSMEMA);
	p_tyP0200OpsDSAVSMEMA1 ACCESS ADR(tyP0200OpsGen.tyDSAVSMEMA1);
	p_tyP0200OpsDSBVSMEMA1 ACCESS ADR(tyP0200OpsGen.tyDSBVSMEMA1);
	p_tyP0200OpsBypsInitConv ACCESS ADR(tyP0200OpsGen.tyBypsInitConv);
	
	p_tyP0200OpsBarCodeScan ACCESS ADR(tyP0200OpsGen.tyBarCodeScan);
	//Display
	//Downstream A
	IF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
		tyP0200OpsGen.tyOps.tyBitmapDSAComm.usiValueIdx	:= 1;
		tyP0200OpsGen.tyOps.tyBitmapDSAComm1.usiValueIdx	:= 1;
	ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
		tyP0200OpsGen.tyOps.tyBitmapDSAComm.usiValueIdx	:= 0;
		tyP0200OpsGen.tyOps.tyBitmapDSAComm1.usiValueIdx	:= 0;
	END_IF
	
	//Downstream B
	IF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
		tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.usiValueIdx	:= 1;
		tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.usiValueIdx	:= 1;
	ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
		tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.usiValueIdx	:= 0;
		tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.usiValueIdx	:= 0;
	END_IF
	
	//Virtual SMEMA
	IF (p_tyUsrMgmtCurrUsr.eUsrLvl = UsrMgmtLvl1) OR p_tyNtParamCurr.bVSMEMAPrep = FALSE OR p_tyMcParamCurr.bVSMEMAEn = FALSE OR (p_tyMcParamCurr.eDSCommA = McSetCommModHermes AND p_tyMcParamCurr.eDSCommB = McSetCommModHermes) THEN
		
		tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.bValue		:= FALSE;
		tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.bValue	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.bValue		:= FALSE;
		tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.bValue	:= FALSE;

		memset(ADR(tyP0200OpsGen.tyDSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA));
		memset(ADR(tyP0200OpsGen.tyDSBVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyDSBVSMEMA));
		memset(ADR(tyP0200OpsGen.tyDSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA1));
		memset(ADR(tyP0200OpsGen.tyDSBVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyDSBVSMEMA1));

		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA.tyLyr.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA1.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA1.tyLyr.uiRtStat));

		bVSMEMADSAEn	:= FALSE;
		bVSMEMADSBEn	:= FALSE;
	ELSE
		
		//Downstream A
		IF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.bValue	:= FALSE;
			tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.bValue	:= FALSE;
	
			memset(ADR(tyP0200OpsGen.tyDSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA));
			
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA.tyLyr.uiRtStat));
			
			memset(ADR(tyP0200OpsGen.tyDSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA1));
			
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA1.tyLyr.uiRtStat));

		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN //LR
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLane1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiRtStat));
				memset(ADR(tyP0200OpsGen.tyDSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA1));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA1.tyLyr.uiRtStat));
			ELSE //RL
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLane.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiRtStat));
				memset(ADR(tyP0200OpsGen.tyDSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyDSAVSMEMA));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSAVSMEMA.tyLyr.uiRtStat));

			END_IF
			
		END_IF
		
		//Downstream B
		IF p_tyNtParamCurr.bProjLaneBPrep THEN
			IF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
				tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.bValue	:= FALSE;
				tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.bValue	:= FALSE;

				memset(ADR(tyP0200OpsGen.tyDSBVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyDSBVSMEMA));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA.tyLyr.uiRtStat));
				
				memset(ADR(tyP0200OpsGen.tyDSBVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyDSBVSMEMA1));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA1.tyLyr.uiRtStat));

			ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
				IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN //LR
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
			
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA1.tyLyr.uiRtStat));

				ELSE
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
					
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSBVSMEMA.tyLyr.uiRtStat));
				END_IF
				
			END_IF
			
		END_IF
		
	END_IF
	
	//Conveyor Direction - SMEMA Arrow Indicator
	IF p_tyNtParamCurr.bUIConvDirRL THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLane.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));

		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLane1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
	
	ELSE // LR

		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLane.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));

		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSIn1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSOut1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLane1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotDSAVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapIn1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapOut1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyTxtLane1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyHotspotDSBVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
	
	END_IF
	
	//Disable AIV function
	IF p_tyMcParamCurr.bAGVComEn = FALSE THEN
		//	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat));
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat));
	END_IF	

	//Barcode Scanner
	tyP0200OpsGen.tyOps.tyBtnBarCodeScan.uiRtStat.0 := NOT ((p_tyNtParamCurr.bUSBScannerPrep OR  p_tyNtParamCurr.bRS232ScannerPrep) AND p_tyMcParamCurr.bScannerEn);
	tyP0200OpsGen.tyOps.tyBitmapBarCodeScan.uiRtStat.0 := NOT ((p_tyNtParamCurr.bUSBScannerPrep OR  p_tyNtParamCurr.bRS232ScannerPrep) AND p_tyMcParamCurr.bScannerEn);
	
	tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue  := '';
	
END_ACTION
