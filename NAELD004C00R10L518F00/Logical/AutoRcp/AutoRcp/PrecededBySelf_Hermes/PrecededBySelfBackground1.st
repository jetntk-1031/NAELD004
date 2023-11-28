
ACTION PrecededBySelfBackground1: 

//Converting BA from US Hermes to Rcp
	IF EDGEPOS(p_bSndWorkOrderInfo) THEN
		tyCurrReqRcp.sBoardId := p_tySendWorkOrderData.tyData.sBoardId; 
		tyCurrReqRcp.sBoardIdCreatedBy := p_tySendWorkOrderData.tyData.sBoardIdCreatedBy;
		tyCurrReqRcp.eFailedBoard := p_tySendWorkOrderData.tyData.eFailedBoard; 
		tyCurrReqRcp.sProductTypeId := p_tySendWorkOrderData.tyData.sProductTypeId; 
		tyCurrReqRcp.eFlippedBoard := p_tySendWorkOrderData.tyData.eFlippedBoard; 
		tyCurrReqRcp.sTopBarcode := p_tySendWorkOrderData.tyData.sTopBarcode; 
		tyCurrReqRcp.sBottomBarcode := p_tySendWorkOrderData.tyData.sBottomBarcode;
		tyCurrReqRcp.rLength := p_tySendWorkOrderData.tyData.rLength;
		tyCurrReqRcp.rWidth := p_tySendWorkOrderData.tyData.rWidth;
		tyCurrReqRcp.rThickness := p_tySendWorkOrderData.tyData.rThickness;
		tyCurrReqRcp.rConveyorSpeed := p_tySendWorkOrderData.tyData.rConveyorSpeed;
		tyCurrReqRcp.rTopClearanceHeight := p_tySendWorkOrderData.tyData.rTopClearanceHeight;
		tyCurrReqRcp.rBottomClearanceHeight := p_tySendWorkOrderData.tyData.rBottomClearanceHeight;
		tyCurrReqRcp.rWeight := p_tySendWorkOrderData.tyData.rWeight;
		tyCurrReqRcp.sWorkOrderId := p_tySendWorkOrderData.tyData.sWorkOrderId;
		tyCurrReqRcp.sBatchId := p_tySendWorkOrderData.tyData.sBatchId;

	END_IF
	
	//Error Handling
	IF p_bLinkOpsRun AND p_bSndWorkOrderInfo THEN
		IF tyCurrReqRcp.rWidth < DINT_TO_REAL(p_diNtParamProdRcpMinWidth)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10010;
		ELSIF tyCurrReqRcp.rWidth  > DINT_TO_REAL(p_diNtParamProdRcpMaxWidth)/1000.0 THEN 
			eStatus := Error; 
			udiStatus := 10011;
		ELSIF  tyCurrReqRcp.rThickness  > DINT_TO_REAL(p_tyNtParamAutoRcpParamLmt.diThicknessInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10012;
		ELSIF  tyCurrReqRcp.rBottomClearanceHeight  > DINT_TO_REAL(p_tyNtParamAutoRcpParamLmt.diMaxBottomCleranceInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10013;
		ELSIF tyCurrReqRcp.rTopClearanceHeight > DINT_TO_REAL(p_tyNtParamAutoRcpParamLmt.diMaxTopClearamceInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10014;
		END_IF
		IF tyCurrReqRcp.rBottomClearanceHeight <= 5.5 AND p_diNtParamPullerHeightInMM <= 19 THEN
			p_diRequestedMinSlt := 3;
		ELSE
			p_diRequestedMinSlt := 6;
		END_IF
		
		IF eStatus = Error THEN
			p_ausiSvyMagAccOrder[p_usiSvyMagOrderPos] := 0;  //bi-dir
			p_asSvyHermesMagGUID[p_usiSvyMagOrderPos] := ''; //bi-dir
			IF p_usiSvyMagOrderPos = 1 THEN
				p_bLinkOpsMagConvLD1QueryWO := FALSE; //bi-dir ,cancel bQueryWO
			ELSIF p_usiSvyMagOrderPos =2 THEN
				p_bLinkOpsMagConvLD2QueryWO := FALSE; //bi-dir
			ELSIF p_usiSvyMagOrderPos =3 THEN
				p_bLinkOpsMagConvLD3QueryWO := FALSE; //bi-dir
			END_IF
			p_usiSvyMagOrderPos := 0;	  //bi-dir
			p_bSndWorkOrderInfo := FALSE; //bi-dir
		END_IF
		
		//Delete sendWorkOrder
		bDeleteSendWO := TRUE;
	END_IF
	
	
	
	
	//For Zone 1 Initialization Only (follow internal rcp width)
	IF bInitializedFollower1Done = FALSE THEN
		IF p_tyInternalReqProdRcp.diWidthInUM <> 0 THEN
			tyCurrZ1Rcp.rWidth := p_tyInternalReqProdRcp.diWidthInUM/1000 ; //Z1Rcp == TravLif
			bOverWriteTravLifProperties := TRUE;
			bInitializedFollower1Done := TRUE;
		END_IF
	END_IF 
	
	IF p_usiSvyMagOrderPos > 0 AND eStatus <> Error THEN
		a_tyCurrZ2Rcp[p_usiSvyMagOrderPos] := tyCurrReqRcp;
		bOverWriteMagProperties := TRUE;
		usiChg := usiChg + 1;
		p_usiSvyMagOrderPos := 0;	  //bi-dir
		p_bSndWorkOrderInfo := FALSE; //bi-dir
	END_IF
	
	//Follower1 //Changed to a_tyCurrZ2Rcp //Assign when received WO and empty rcp
	FOR usi := 1 TO 3 DO 
		IF p_ausiSvyMagAccOrder[usi] = 10 AND eStatus <> Error THEN
			IF memcmp(ADR(a_tyCurrZ2Rcp[usi]) , ADR(tyCurrZ1Rcp) , SIZEOF(a_tyCurrZ2Rcp[usi])) <> 0 THEN 
				bTravLifWidthDiffBlk := TRUE; //block travlif USallow
				IF p_bZ1AccNewRcpCondition THEN
					tyCurrZ1Rcp := a_tyCurrZ2Rcp[usi];
					//a_tyCurrZ2Rcp[usi] := tyCurrReqRcp;
					//bOverWriteTravLifProperties := TRUE;
					//bOverWriteMagProperties := TRUE;
					//usiChg := usiChg + 1;
					//p_bSndWorkOrderInfo := FALSE; //bi-dir
				END_IF 
			ELSE
				bTravLifWidthDiffBlk := FALSE;
			END_IF
		END_IF
	END_FOR


	
	
	//IF all was block with magazine available then Force the Magazine Exit
	FOR ii:= 1 TO SIZEOF(a_bMagChangOverBlk)/SIZEOF(a_bMagChangOverBlk[1]) DO
		IF  (a_bBufferMagPresent[ii] AND a_bMagChangOverBlk[ii] = FALSE) OR NOT(a_bBufferMagPresent[ii]) THEN
			EXIT;
		END_IF 
	END_FOR 
	IF ii = SIZEOF(a_bMagChangOverBlk)/SIZEOF(a_bMagChangOverBlk[1]) THEN
		bForceExitMag := TRUE; //force Magazine to exit the highest priority Mag
	ELSE
		bForceExitMag := FALSE;
	END_IF 
	
	
END_ACTION
