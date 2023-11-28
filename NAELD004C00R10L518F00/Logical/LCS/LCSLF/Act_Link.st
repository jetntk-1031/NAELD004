(** 2019-06-28 **)
ACTION Act_Link:
	
	p_sInfoMsg		:= 'LCS Request New Recipe';
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Name : ');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyCurrProdParam.sRcpNm);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Width : ');
	sWidthInUMTemp	:= DINT_TO_STRING(p_tyCurrProdParam.diWidthInUM / 1000);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Name : ');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyLCSProdRcpInfo.sRcpNm);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Width : ');
	sWidthInUMTemp	:= DINT_TO_STRING(p_tyLCSProdRcpInfo.diWidthInUM / 1000);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
	
	//Accept New Recipe Condition
	p_bAccNewRcpCond	:= p_bLinkOpsRun = TRUE AND p_bLinkConvHvBrd = FALSE;
		
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//we_fabricate
//	IF  uiMilliSecOld <> p_tyDTStructure.millisec THEN
//		IF EDGEPOS(p_bLinkOpsMagConvLD1QueryWO) THEN //query false when rcp loaded
//			sMagazineId 		:= '1'; //Magazine position to mes 
//			bGUIDInserted[1]	:= FALSE;
//			a_bQueryQueue[i2] 	:= TRUE;
//			i2 := i2 + 1;
//		ELSIF EDGEPOS(p_bLinkOpsMagConvLD2QueryWO) THEN
//			sMagazineId 		:= '2';
//			bGUIDInserted[2]	:= FALSE;
//			a_bQueryQueue[i2] 	:= TRUE;
//			i2 := i2 + 1;
//		ELSIF EDGEPOS(p_bLinkOpsMagConvLD3QueryWO) THEN
//			sMagazineId 		:= '3';
//			bGUIDInserted[3]	:= FALSE;
//			a_bQueryQueue[i2] 	:= TRUE;
//			i2 := i2 + 1;
//		END_IF
//	END_IF
	IF  uiMilliSecOld <> p_tyDTStructure.millisec THEN
		//Priority setting
		IF EDGEPOS(p_tyResponseFromMES1.iAcceptCondition >0)  OR EDGEPOS(p_tyResponseFromMES2.iAcceptCondition > 0)  OR EDGEPOS(p_tyResponseFromMES3.iAcceptCondition >0) THEN
			uiMilliSecOld :=  p_tyDTStructure.millisec;
			memset(ADR(usiSum),0,SIZEOF(usiSum));
			IF p_tyResponseFromMES1.iAcceptCondition >0 THEN
				usiSum[1] := 11;
			ELSIF p_tyResponseFromMES2.iAcceptCondition >0 THEN
				usiSum[2] := 12;
			ELSIF p_tyResponseFromMES3.iAcceptCondition >0 THEN
				usiSum[3] := 13;
			END_IF
		ELSE
			memset(ADR(usiSum),0,SIZEOF(usiSum));
		END_IF
	END_IF
	
//	FOR i := 1 TO 3 DO 
//		usiSum[i]	:= usiSum[i] + usiMagPrior[i];
//		IF a_MagGUID[i] = tySendWorkOrderInfoRcv.tyData.sQueryId THEN
//			usiSum[i] := usiSum[i] + 10;
//		END_IF
//	END_FOR
	
	FOR i1:=1 TO 3 DO
		//Assign Magazine order
		IF  usiSum[i1] >=10 THEN
			IF a_MagAccOrder[1]=0 AND a_MagAccOrder[2]=0 AND a_MagAccOrder[3]=0 THEN
				a_MagAccOrder[i1] := 10; //output
				usiMagOrderPos := i1;
			ELSIF ((a_MagAccOrder[1]=0 AND a_MagAccOrder[2]=0) OR 
				(a_MagAccOrder[2]=0 AND a_MagAccOrder[3]=0) OR 
				(a_MagAccOrder[1]=0 AND a_MagAccOrder[3]=0)) AND a_MagAccOrder[i1] =0 THEN
				a_MagAccOrder[i1] := 20;
				usiMagOrderPos := i1;
			ELSIF (a_MagAccOrder[1]=0 OR a_MagAccOrder[2]=0 OR a_MagAccOrder[3]=0) AND a_MagAccOrder[i1] =0 THEN
				a_MagAccOrder[i1] := 30;
				usiMagOrderPos := i1;
			END_IF
			bGUIDInserted[i1] := FALSE;
		END_IF
	END_FOR
	
	//update magazine mmy
	IF a_MagAccOrder[1]<>0 AND a_MagAccOrder[2]<>0 AND a_MagAccOrder[3]<>0 THEN
	ELSIF a_MagAccOrder[1]<>10 AND a_MagAccOrder[2]<>10 AND a_MagAccOrder[3]<>10 THEN
		FOR i := 1 TO 3 DO
			IF a_MagAccOrder[i] <> 0 THEN
				a_MagAccOrder[i] := a_MagAccOrder[i] -10;
			END_IF
		END_FOR
	END_IF

END_ACTION
