
ACTION Act_OptP0200WorkOrderToLMC:
	IF p_tyNtParamCurr.bProjWorkOrderOPCUA AND 
		tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue <> '' THEN
		tyTagNm.sWorkOrder := tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue;
		
		IF (bMag1Active OR bMag2Active )AND (p_tyBuffer1BffrStat.bBffrMty OR p_bBuffer1MagPresent = FALSE)
			AND (p_tyBuffer2BffrStat.bBffrMty OR p_bBuffer2MagPresent = FALSE) AND fbLMCfbTm.Q  = FALSE THEN
			p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxWOFinished); //"Work Order Done. Wait for LMC complete."
			bBlkOpsTravLif := TRUE; // block operation to next magazine
			fbLMCfbTm(IN:= TRUE,PT:= DINT_TO_TIME(p_tyMcParamCurr.diLMCfbTmInMS)); //wait for LMC done
			
			IF tyTagNm.uiQuantities = diMag1TtSlt + diMag2TtSlt THEN //LMC done
				fbLMCfbTm(IN:= FALSE);
				bMag1Active := FALSE;
				bMag2Active := FALSE;
				tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
				p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxLMCCompl); //LMC completed. Scan for new Work Order.
			END_IF
			
			//		IF bMag1Active AND p_tyBuffer1BffrStat.bBffrMty AND fbLMCfbTm.Q  = FALSE THEN
			//			p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxWOFinished); //"Work Order Done. Wait for LMC complete."
			//			bBlkOpsTravLif := TRUE; // block operation to next magazine
			//			fbLMCfbTm(IN:= TRUE,PT:= DINT_TO_TIME(p_tyMcParamCurr.diLMCfbTmInMS)); //wait for LMC done
			//			
			//			IF tyTagNm.uiQuantities = p_tyBuffer1BffrStat.diTtlBrdCap THEN //LMC done
			//				tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
			//				p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxLMCCompl); //LMC completed. Scan for new Work Order.
			//			END_IF
			//		
			//		ELSIF bMag2Active AND p_tyBuffer2BffrStat.bBffrMty  AND fbLMCfbTm.Q  = FALSE THEN
			//			p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxWOFinished); //"Work Order Done. Wait for LMC complete."
			//			bBlkOpsTravLif := TRUE; // block operation to next magazine
			//			fbLMCfbTm(IN:= TRUE,PT:= DINT_TO_TIME(p_tyMcParamCurr.diLMCfbTmInMS)); //wait for LMC done
			//			
			//			IF tyTagNm.uiQuantities = p_tyBuffer2BffrStat.diTtlBrdCap THEN //LMC done
			//				tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
			//				p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxLMCCompl);
			//			END_IF
			
		ELSIF fbLMCfbTm.Q THEN
			p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxLMCFail);//No Feedback From LMC.
		//	iTtWorkOrderSlt := DINT_TO_UINT(diMag1TtSlt) + DINT_TO_UINT(diMag2TtSlt);
			diTtWorkOrderSlt := diMag1TtSlt + diMag2TtSlt;
			string1 := DINT_TO_STRING(diTtWorkOrderSlt);
			string2 := UINT_TO_STRING(tyTagNm.uiQuantities);
			tyTagNm.sLogMessage := CONCAT('No Exact Quantities Received. Total ',string1);
			tyTagNm.sLogMessage := CONCAT(tyTagNm.sLogMessage,' boards, received ');
			tyTagNm.sLogMessage := CONCAT(tyTagNm.sLogMessage, string2);
			tyTagNm.sLogMessage := CONCAT(tyTagNm.sLogMessage,' boards.');
			
			tyTagNm.diTotalBrd := diTtWorkOrderSlt;
			tyP0200OpsGen.tyMsgBoxLMCFail.tyTxtWO_sLogMessage.uiRtStat := FALSE;
			tyP0200OpsGen.tyMsgBoxLMCFail.tyTxtWO_sLogMessage.sValue := tyTagNm.sLogMessage;
			
		END_IF
		//		
		//		IF tyTagNm.uiQuantities >0 THEN
		//			IF bInitQuanValue = FALSE THEN
		//				bInitQuanValue := TRUE;
		//				uiBrdOutCntr := tyTagNm.uiQuantities;
		//			END_IF
		//			tyTagNm.bProcess := TRUE;
		//		ELSE
		//			bInitQuanValue := FALSE;
		//			uiBrdOutCntr := 0;
		//			tyTagNm.bProcess := FALSE;
		//		END_IF
		
	
	ELSE
		bBlkOpsTravLif := FALSE;
		bMag1Active := FALSE;
		bMag2Active := FALSE;
		fbLMCfbTm(IN:= FALSE);
	END_IF
	
	//	IF EDGEPOS(uiBrdOutCntr = 0) AND tyTagNm.uiQuantities >0 THEN //LMC in process
	//		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxWOFinished);
	//	END_IF
	//	
	//	IF EDGEPOS(p_bOpsTravLifLDExitBrd) AND uiBrdOutCntr <> 0 THEN
	//		uiBrdOutCntr := uiBrdOutCntr -1;
	//	END_IF
	
	//======================== Message Box btn ==================================
	//Close msgbox (tyMsgBoxWOFinished)
	IF tyP0200OpsGen.tyMsgBoxWOFinished.tyBtnNo.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyMsgBoxWOFinished.tyBtnNo.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyMsgBoxWOFinished.tyBtnNo.bValue		:= FALSE;
				
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
	END_IF
	
	//(tyMsgBoxLMCFail)
	IF tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnNo.bRtCompl THEN //ok
		tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnNo.bRtCompl := FALSE;
		tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnNo.bValue := FALSE;
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
		
		bBlkOpsTravLif := FALSE;
		bMag1Active := FALSE;
		bMag2Active := FALSE;
		fbLMCfbTm(IN:= FALSE);
		tyTagNm.uiQuantities := 0; //Reset quantities from LMC
		tyP0200OpsGen.tyMsgBoxLMCFail.tyTxtWO_sLogMessage.uiRtStat := TRUE;


	ELSIF tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnYes.bRtCompl THEN //scan //hide(true)
		tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnYes.bRtCompl := FALSE;
		tyP0200OpsGen.tyMsgBoxLMCFail.tyBtnYes.bValue 	:= FALSE;
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
		
		tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue := '';
		tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));		

	END_IF
	
	//(tyMsgBoxLMCCompl)
	IF tyP0200OpsGen.tyMsgBoxLMCCompl.tyBtnNo.bRtCompl THEN //ok
		tyP0200OpsGen.tyMsgBoxLMCCompl.tyBtnNo.bRtCompl := FALSE;
		tyP0200OpsGen.tyMsgBoxLMCCompl.tyBtnNo.bValue	:= FALSE;
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
		
		bBlkOpsTravLif := FALSE;
		bMag1Active := FALSE;
		bMag2Active := FALSE;
		fbLMCfbTm(IN:= FALSE);

		tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue := '';
		tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue := '';
		tyTagNm.uiQuantities := 0; //Reset quantities from LMC
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyBarCodeScan.tyLyr.uiRtStat));		
	
	ELSIF tyP0200OpsGen.tyMsgBoxLMCCompl.tyBtnYes.bRtCompl THEN //N/A
		
	END_IF
	//======================== ##==================================
	
	//Determine active magazine
	IF p_eOpsTravLifPosGo = TravLifLDPosUS1 THEN
		bMag1Active := TRUE;
	ELSIF p_eOpsTravLifPosGo = TravLifLDPosUS2 THEN
		bMag2Active := TRUE;
	END_IF
	
	IF p_bBuffer1MagPresent = FALSE THEN
		diMag1TtSlt := 0;
	ELSE
		diMag1TtSlt := p_tyBuffer1BffrStat.diTtlBrdCap;
	END_IF
	IF p_bBuffer2MagPresent = FALSE THEN
		diMag2TtSlt := 0;
	ELSE
		diMag2TtSlt := p_tyBuffer2BffrStat.diTtlBrdCap;
	END_IF
	
	//Error
	IF p_bOpsRun = FALSE THEN
		p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
		IF p_bBuffer1MagRemoved THEN
			tyTagNm.sLogMessage := 'Loader Magazine 1 had removed.';
		ELSIF p_bBuffer2MagRemoved THEN
			tyTagNm.sLogMessage := 'Loader Magazine 2 had removed.';
		ELSIF p_bAlarmErr THEN
			tyTagNm.sLogMessage := 'Loader Alarm activated.';
		END_IF
	END_IF
	
END_ACTION

