
ACTION Act_OptP0200BarCodeChgRcp:
	//Work order
	tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.uiRtStat := NOT(p_tyNtParamCurr.bProjWorkOrderOPCUA);
		
	IF p_tyNtParamCurr.bBCodeScannerPrep THEN
		
		CASE p_tyNtParamCurr.eScannerType OF 
			
			RS232:
				
				IF tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat.0 = FALSE THEN
		
					eFrmAct	:= FrmActFullReadUntilValid;
		
					IF p_eFrmStat = FrmActFullReadUntilValid AND p_eFrmStatus = Done THEN
			
						IF p_bFrmMsgRdValid = TRUE THEN
							eFrmAct := FrmActIdle;
							IF p_tyNtParamCurr.bProjWorkOrderOPCUA THEN
								tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := LEFT(p_sFrmMsgRd,FIND(p_sFrmMsgRd,'@')-1);
								tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue	:= DELETE(p_sFrmMsgRd,LEN(tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue)+1,1);
							ELSE
								tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue	:= p_sFrmMsgRd;
							END_IF
							
						ELSE
							eFrmAct := FrmActIdle;
							tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue	:= '';
						END_IF
			
					END_IF
		
				END_IF
			
			USB:
				
				
				bUSBRun := tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat.0 = FALSE;
				
				IF tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat.0 = FALSE THEN // Can Continue Reading Data.
					
					
						 IF p_eUSBRdrStatus<>Error THEN
						
							CASE usiUSBBarcodeStep OF
								
								0: 
									
									eUSBRdrAct	:= USBRdrActDetectDev;
								
									IF p_eUSBRdrStat = USBRdrActDetectDev AND p_eUSBRdrStatus = Done THEN
										
										eUSBRdrAct	:= USBRdrActIdle;
										
									
										usiUSBBarcodeStep := 1;
									
									END_IF
								
								1: 
								
									eUSBRdrAct	:= USBRdrActRead;
								
									IF p_eUSBRdrStat = USBRdrActRead AND p_eUSBRdrStatus = Done THEN
										
										eUSBRdrAct	:= USBRdrActIdle;
										
										tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue := p_sUSBRdrBarcodeOut;
								
										usiUSBBarcodeStep := 0;
										
									END_IF
							END_CASE
							
						END_IF
				
				ELSE // layer hide
					eUSBRdrAct	:= USBRdrActIdle;
					usiUSBBarcodeStep := 0;
				
				END_IF					
		END_CASE
		
	END_IF		
				
	IF tyP0200OpsGen.tyBarCodeScan.tyBtnOK.bRtCompl THEN
		
		CASE usiChgRcpStep OF 
			
			0:	
				tyProdRcpInfoIn.sRcpNm		:= 	tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue;
				
				eProdRcpAct					:=  ProdRcpActLoadRcp;

				
				IF p_eProdRcpStat = ProdRcpActLoadRcp AND p_eProdRcpStatus = Done THEN
					
					eProdRcpAct	:= ProdRcpActIdle;
				
					IF p_bProdRcpNmEmpty = TRUE OR p_bProdRcpNmNotExist = TRUE THEN
						
						usiChgRcpStep	:= 1;
					
					ELSE
						//Update UI Current Recipe
						tyP0400ProdSel.tyProdSel.tyStringRecipeNm.sValue	:= p_tyProdRcpCurrRcp0.sRcpNm;
						tyP0400ProdSel.tyProdSel.tyNumProdWidth.diValue		:= p_tyProdRcpCurrRcp0.diWidthInUM;
					
						tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp0;
						
						usiChgRcpStep	:= 2;
					
					END_IF
				
				ELSIF p_eProdRcpStatus = Error THEN
				
					usiChgRcpStep	:= 3;
				
				END_IF
				
			1:
				//Message Name Not Found
				p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxSelRcpNoNm);
			
				IF tyP0200OpsGen.tyMsgBoxSelRcpNoNm.tyBtnNo.bRtCompl = TRUE THEN
					tyP0200OpsGen.tyMsgBoxSelRcpNoNm.tyBtnNo.bRtCompl	:= FALSE;
					tyP0200OpsGen.tyMsgBoxSelRcpNoNm.tyBtnNo.bValue		:= FALSE;
				
					p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
					
					tyP0200OpsGen.tyBarCodeScan.tyBtnOK.bRtCompl := FALSE;
					tyP0200OpsGen.tyBarCodeScan.tyBtnOK.bValue	 := FALSE;
				    
					usiChgRcpStep	:= 0;
				END_IF
			
			2: 	IF p_tyMcParamCurr.bLFEn AND p_tyNtParamCurr.bLFPrep AND (p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA AND p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA) THEN
					
					p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk);
		
					IF tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnYes.bRtCompl = TRUE THEN
						tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnYes.bRtCompl	:= FALSE;
						tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnYes.bValue		:= FALSE;
						
						eChgPage	:= UIP0700LFCtrl;
						
						//Start Operation
						tyCommon.tyMain.tyBtnStart.bRtCompl	:= TRUE;
					
						usiChgRcpStep	:= 3;
			
						p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
	
			
					ELSIF tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnNo.bRtCompl = TRUE THEN
						
						tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnNo.bRtCompl	:= FALSE;
						tyP0200OpsGen.tyMsgBoxGoToLFCtrlAsk.tyBtnNo.bValue		:= FALSE;
			
						p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
			
						usiChgRcpStep	:= 3;
			
					END_IF
				ELSE	
					usiChgRcpStep	:= 3;
				END_IF
			
			3:
				//Reset
				
				tyP0200OpsGen.tyBarCodeScan.tyBtnOK.bRtCompl	:= FALSE;
				tyP0200OpsGen.tyBarCodeScan.tyBtnOK.bValue		:= FALSE;
				tyP0200OpsGen.tyOps.tyBtnBarCodeScan.bValue		:= FALSE;
						
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));
				
				usiChgRcpStep	:= 0;
				bBlkOpsTravLif := FALSE; //unblock operation 
			
		END_CASE
			
	ELSIF  tyP0200OpsGen.tyBarCodeScan.tyBtnCancel.bRtCompl THEN
		
		tyP0200OpsGen.tyBarCodeScan.tyBtnCancel.bRtCompl		:= FALSE;
		tyP0200OpsGen.tyBarCodeScan.tyBtnCancel.bValue			:= FALSE;
		tyP0200OpsGen.tyOps.tyBtnBarCodeScan.bValue				:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));
		
	END_IF
	
	// Error Reset
	IF p_tyNtParamCurr.eScannerType = USB THEN							
		IF p_eUSBRdrStatus = Error THEN
			usiUSBBarcodeStep	:= 0;
			tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue := '';
		END_IF	
	END_IF	

		
END_ACTION
