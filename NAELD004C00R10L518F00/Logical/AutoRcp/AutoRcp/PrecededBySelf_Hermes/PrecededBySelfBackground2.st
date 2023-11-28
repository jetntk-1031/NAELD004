
ACTION PrecededBySelfBackground2: 

	//Convert ProdID to Rcp Name and rWidth to diWidth for F0 to output Hermes
//	sProdtypeID:= tyCurrReqRcp.sProductTypeId;
//	diProdWidth := REAL_TO_DINT(tyCurrReqRcp.rWidth*1000);
	
	
	//Convert to Width for F1 //Changed to a_tyCurrZ2Rcp
//	IF bOverWriteTravLifProperties THEN
	IF p_ausiSvyMagAccOrder[1] = 0 AND p_ausiSvyMagAccOrder[2] = 0 AND p_ausiSvyMagAccOrder[3] = 0 THEN
		diTravLifWidth := 100000;
	ELSE
		FOR usi := 1 TO 3 DO 
			IF p_ausiSvyMagAccOrder[usi] = 10 AND p_bConvHvBrd = FALSE THEN
				tyCurrZ1Rcp := a_tyCurrZ2Rcp[usi];
				rPitch := (tyCurrZ1Rcp.rTopClearanceHeight + tyCurrZ1Rcp.rBottomClearanceHeight + tyCurrZ1Rcp.rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000);
				diTravLifPitch := REAL_TO_DINT(ceil(rPitch));
				diTravLifWidth := REAL_TO_DINT(tyCurrZ1Rcp.rWidth*1000);
				sWorkOrderId	:= tyCurrZ1Rcp.sWorkOrderId;	//to DSHermes
				EXIT;
				//diTravLifWidth := REAL_TO_DINT(a_tyCurrZ2Rcp[usi].rWidth*1000);
			END_IF
		END_FOR
	END_IF
	//		bOverWriteTravLifProperties	:= FALSE;
	//	END_IF
	
	
	//Convert to Pitch for F2 
	IF bOverWriteMagProperties = TRUE THEN
		IF p_bProdSelTopToBtm THEN
			//overwriting diMax
			FOR kk := 1 TO 3 DO//SIZEOF(a_tyCurrZ2Rcp)/SIZEOF(a_tyCurrZ2Rcp[1]) DO //top to btm
				rMinslt :=  (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000);
				rMaxslt := (p_diMagRcpCurrRcpTtlSlt-p_diRequestedMinSlt) - ((a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000)) + 1;
				rPitch := (a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000);
			
				rNumInterval := (rMaxslt - rMinslt )/ceil(rPitch);
				diCalcedMax := REAL_TO_DINT(floor(rMaxslt));
				diCalcedPitch := REAL_TO_DINT(ceil(rPitch));
				diCalcedMin := REAL_TO_DINT((diCalcedMax - floor(rNumInterval)*ceil(rPitch)));
				
				IF diCalcedMin = 0 THEN
					diCalcedMin := diCalcedPitch;
				END_IF
				//			IF diCalcedMin < p_diRequestedMinSlt THEN
				//				diModulus :=  p_diRequestedMinSlt/diCalcedMin;
				//				diCalcedMin := diCalcedMin + diModulus*diCalcedPitch;
				//			END_IF
				a_tyMagProps[kk].diMaxSlt := diCalcedMax;
				a_tyMagProps[kk].diMinSlt := diCalcedMin;
				a_tyMagProps[kk].diPitch  := diCalcedPitch;
				a_tyMagProps[kk].diWidth := REAL_TO_DINT(a_tyCurrZ2Rcp[kk].rWidth * 1000);
				IF a_tyCurrZ2Rcp[kk].sWorkOrderId <> '' AND diCalcedMin <> 0 AND p_ausiSvyMagAccOrder[kk] <> 0 THEN
					a_bRcpLoaded[kk] := TRUE;
				END_IF
			END_FOR
			
		ELSE//Btm to top
			IF p_diRequestedMinSlt = 0 THEN
				p_diRequestedMinSlt := 1;
			END_IF
			
			FOR kk := 1 TO 3 DO//SIZEOF(a_tyCurrZ2Rcp)/SIZEOF(a_tyCurrZ2Rcp[1]) DO //btm to top
				//	rMinslt :=  p_diRequestedMinSlt + (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000);
				IF ceil((a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + p_diNtParamPullerHeightInMM )/(p_diMagRcpCurrRcpSltToSlt/1000)) >= p_diRequestedMinSlt THEN
					rMinslt :=  (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + p_diNtParamPullerHeightInMM )/(p_diMagRcpCurrRcpSltToSlt/1000) + 1;
				ELSE
					rMinslt :=  p_diRequestedMinSlt ;
				END_IF
				rMaxslt := p_diMagRcpCurrRcpTtlSlt - (a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000) + 1;
				rPitch := (a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000);
				IF rPitch = 0 THEN
					rPitch := 1;	
				END_IF
				rNumInterval := (rMaxslt - rMinslt )/ceil(rPitch);
				diCalcedMin := REAL_TO_DINT(ceil(rMinslt)); //floor
				diCalcedPitch := REAL_TO_DINT(ceil(rPitch));
				diCalcedMax := REAL_TO_DINT((diCalcedMin + floor(rNumInterval)*ceil(rPitch)));
				
				IF diCalcedMax = p_diMagRcpCurrRcpTtlSlt + 1 THEN
					diCalcedMax := diCalcedMax - diCalcedPitch;
				END_IF
				//			IF diCalcedMin < p_diRequestedMinSlt THEN
				//				diModulus :=  p_diRequestedMinSlt/diCalcedMin;
				//				diCalcedMin := diCalcedMin + diModulus*diCalcedPitch;
				//			END_IF
				a_tyMagProps[kk].diMaxSlt := diCalcedMax;
				a_tyMagProps[kk].diMinSlt := diCalcedMin;
				a_tyMagProps[kk].diPitch  := diCalcedPitch;
				a_tyMagProps[kk].diWidth := REAL_TO_DINT(a_tyCurrZ2Rcp[kk].rWidth * 1000);
				IF a_tyCurrZ2Rcp[kk].sWorkOrderId <> '' AND diCalcedMin <> 0 AND p_ausiSvyMagAccOrder[kk] <> 0 THEN
					a_bRcpLoaded[kk] := TRUE;
				END_IF
			END_FOR
			
		END_IF
		
		bOverWriteMagProperties := FALSE;
	END_IF 

	//Update and delete 
	IF p_bOpsMagConvLD1ExtDelAutoRcp THEN
		memset(ADR(a_tyMagProps[1]),0,SIZEOF(a_tyMagProps[1]));
		memset(ADR(a_tyCurrZ2Rcp[1]),0,SIZEOF(a_tyCurrZ2Rcp[1]));
		p_ausiSvyMagAccOrder[1] := 0;  //bi-dir
		p_asSvyHermesMagGUID[1] := ''; //bi-dir
		a_bRcpLoaded[1] := FALSE;
	END_IF
	IF p_bOpsMagConvLD2ExtDelAutoRcp THEN 
		memset(ADR(a_tyMagProps[2]),0,SIZEOF(a_tyMagProps[2]));
		memset(ADR(a_tyCurrZ2Rcp[2]),0,SIZEOF(a_tyCurrZ2Rcp[2]));
		p_ausiSvyMagAccOrder[2] := 0;  
		p_asSvyHermesMagGUID[2] := '';
		a_bRcpLoaded[2] := FALSE;
	END_IF
	IF  p_bOpsMagConvLD3ExtDelAutoRcp THEN
		memset(ADR(a_tyMagProps[3]),0,SIZEOF(a_tyMagProps[3]));
		memset(ADR(a_tyCurrZ2Rcp[3]),0,SIZEOF(a_tyCurrZ2Rcp[3]));
		p_ausiSvyMagAccOrder[3] := 0;  
		p_asSvyHermesMagGUID[3] := ''; 
		a_bRcpLoaded[3] := FALSE;
	END_IF
	
END_ACTION
