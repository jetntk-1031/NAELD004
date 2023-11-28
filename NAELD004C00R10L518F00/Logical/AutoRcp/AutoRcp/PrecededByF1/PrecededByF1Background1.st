
ACTION PrecededByF1Background1: 
	//Requesting
//	tyCurrReqMagRcp.diMaxSltValue := p_tyInternalReqProdRcp.diMaxSltValue;
//	tyCurrReqMagRcp.diMinSltValue := p_tyInternalReqProdRcp.diMinSltValue;
//	tyCurrReqMagRcp.diPitch  := p_tyInternalReqProdRcp.diPitch;
//	tyCurrReqMagRcp.diWidthInUM  := p_tyInternalReqProdRcp.diWidthInUM;
//	tyCurrReqMagRcp.sRcpNm   := p_tyInternalReqProdRcp.sRcpNm;
	memcpy(ADR(tyCurrReqMagRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(tyCurrReqMagRcp));
	
	IF eStatus = Error THEN
		p_ausiLCSLFMagAccOrder[p_usiLCSLFMagOrderPos] := 0;  //bi-dir
		IF p_usiLCSLFMagOrderPos = 1 THEN
			p_bLinkOpsMagConvLD1QueryWO := FALSE; //bi-dir ,cancel bQueryWO
		ELSIF p_usiLCSLFMagOrderPos =2 THEN
			p_bLinkOpsMagConvLD2QueryWO := FALSE; //bi-dir
		ELSIF p_usiLCSLFMagOrderPos =3 THEN
			p_bLinkOpsMagConvLD3QueryWO := FALSE; //bi-dir
		END_IF
		p_usiLCSLFMagOrderPos := 0;	  //bi-dir
	END_IF
	
	
	//For Zone 1 Initialization Only (follow internal rcp width)
	IF bInitializedFollower1Done = FALSE THEN
		IF p_tyInternalReqProdRcp.diWidthInUM <> 0 THEN
			diTravLifWidth := p_tyInternalReqProdRcp.diWidthInUM; //Z1Rcp == TravLif
			bOverWriteTravLifProperties := TRUE;
			bInitializedFollower1Done := TRUE;
		END_IF
	END_IF 
	
	IF p_usiLCSLFMagOrderPos > 0 AND eStatus <> Error THEN
		a_tyAutoRcpInternal[p_usiLCSLFMagOrderPos] := tyCurrReqMagRcp;
		//updare min max pitch to buffer
		a_tyMagProps[p_usiLCSLFMagOrderPos].diMinSlt := tyCurrReqMagRcp.diMinSltValue;
		a_tyMagProps[p_usiLCSLFMagOrderPos].diMaxSlt := tyCurrReqMagRcp.diMaxSltValue;
		a_tyMagProps[p_usiLCSLFMagOrderPos].diPitch := tyCurrReqMagRcp.diPitch;

		bOverWriteMagProperties := TRUE;
		usiChg := usiChg + 1;
		p_usiLCSLFMagOrderPos := 0;	  //bi-dir
	END_IF
	
	//Follower1 //Changed to a_tyCurrZ2Rcp //Assign when received WO and empty rcp
	FOR usi := 1 TO 3 DO 
		IF p_ausiLCSLFMagAccOrder[usi] = 10 AND eStatus <> Error THEN
			IF memcmp(ADR(a_tyAutoRcpInternal[usi]) , ADR(a_tyAutoRcpFollower1) , SIZEOF(a_tyAutoRcpInternal[usi])) <> 0 THEN 
				bTravLifWidthDiffBlk := TRUE; //block travlif USallow
				IF p_bZ1AccNewRcpCondition THEN
					a_tyAutoRcpFollower1 := a_tyAutoRcpInternal[usi]; //output to follower 1
					a_bRcpLoaded[usi] := TRUE;
				END_IF 
			ELSE
				bTravLifWidthDiffBlk := FALSE;
			END_IF
		END_IF
	END_FOR
	
	//Convert to Width for F1 //Changed to a_tyCurrZ2Rcp
	IF p_ausiLCSLFMagAccOrder[1] = 0 AND p_ausiLCSLFMagAccOrder[2] = 0 AND p_ausiLCSLFMagAccOrder[3] = 0 THEN
		diTravLifWidth := 100000;
	ELSE
		FOR usi := 1 TO 3 DO 
			IF p_ausiLCSLFMagAccOrder[usi] = 10 AND p_bConvHvBrd = FALSE THEN
				a_tyAutoRcpFollower1 := a_tyAutoRcpInternal[usi];
				diTravLifPitch := a_tyAutoRcpInternal[usi].diPitch;
				diTravLifWidth := a_tyAutoRcpInternal[usi].diWidthInUM ;
				EXIT;
				//diTravLifWidth := REAL_TO_DINT(a_tyCurrZ2Rcp[usi].rWidth*1000);
			END_IF
		END_FOR
	END_IF
	
	
	//Update and delete 
	IF p_bOpsMagConvLD1ExtDelAutoRcp THEN
		p_ausiLCSLFMagAccOrder[1] := 0;  //bi-dir
		a_bRcpLoaded[1] := FALSE;
	END_IF
	IF p_bOpsMagConvLD2ExtDelAutoRcp THEN 
		p_ausiLCSLFMagAccOrder[2] := 0;  
		a_bRcpLoaded[2] := FALSE;
	END_IF
	IF  p_bOpsMagConvLD3ExtDelAutoRcp THEN
		p_ausiLCSLFMagAccOrder[3] := 0;  
		a_bRcpLoaded[3] := FALSE;
	END_IF
	
END_ACTION
