
ACTION Act_OptP0950RcpGen: 
	//Generate test rcp
	IF tyP0950Simu.tySimu.tyBtnRcpGen.bValue THEN
		p_tyProdRcpCurrList[1].sRcpNm		:= '1';
		p_tyProdRcpCurrList[1].diWidthInUM	:= 100000;
		//		p_tyProdRcpCurrList[1].diWidthInUM2
		p_tyProdRcpCurrList[1].diMaxSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
		p_tyProdRcpCurrList[1].diMinSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMin;
		p_tyProdRcpCurrList[1].diPitch		 := 4;
		//		p_tyProdRcpCurrList[1].usiMcMod
		//		p_tyProdRcpCurrList[1].usiFlippedBrd
		p_tyProdRcpCurrList[1].bTopToBtm	:= p_tyNtParamCurr.bProjTopToBtmDefault;
		//		p_tyProdRcpCurrList[1].bLongBrd
			
		//		p_tyProdRcpCurrList[1].diWidthInUMRear
		//		p_tyProdRcpCurrList[1].diMaxSltValueRear
		//		p_tyProdRcpCurrList[1].diMinSltValueRear
		//		p_tyProdRcpCurrList[1].diPitchRear
		p_tyProdRcpCurrList[1].diMtrPshrExtSpd 	:= 7;
		p_tyProdRcpCurrList[1].diMtrPshrExtTorq := 80;
		p_tyProdRcpCurrList[1].diPshrOffset		:= 0;
		p_tyProdRcpCurrList[1].sDisplayInfo		:= '100.0mm';

		
		p_tyProdRcpCurrList[2].sRcpNm		:= '2';
		p_tyProdRcpCurrList[2].diWidthInUM	:= 200000;
		p_tyProdRcpCurrList[2].diMaxSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
		p_tyProdRcpCurrList[2].diMinSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMin;
		p_tyProdRcpCurrList[2].diPitch		 := 2;
		p_tyProdRcpCurrList[2].bTopToBtm	:= p_tyNtParamCurr.bProjTopToBtmDefault;
			
		p_tyProdRcpCurrList[2].diMtrPshrExtSpd 	:= 7;
		p_tyProdRcpCurrList[2].diMtrPshrExtTorq := 80;
		p_tyProdRcpCurrList[2].diPshrOffset		:= 0;
		p_tyProdRcpCurrList[2].sDisplayInfo		:= '200.0mm';
	
		p_tyProdRcpCurrList[3].sRcpNm		:= '3';
		p_tyProdRcpCurrList[3].diWidthInUM	:= 250000;
		p_tyProdRcpCurrList[3].diMaxSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
		p_tyProdRcpCurrList[3].diMinSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMin;
		p_tyProdRcpCurrList[3].diPitch		 := 1;
		p_tyProdRcpCurrList[3].bTopToBtm	:= p_tyNtParamCurr.bProjTopToBtmDefault;
			
		p_tyProdRcpCurrList[3].diMtrPshrExtSpd 	:= 7;
		p_tyProdRcpCurrList[3].diMtrPshrExtTorq := 80;
		p_tyProdRcpCurrList[3].diPshrOffset		:= 0;
		p_tyProdRcpCurrList[3].sDisplayInfo		:= '250.0mm';

		
		
		p_tyProdRcpCurrList[4].sRcpNm		:= 'min';
		p_tyProdRcpCurrList[4].diWidthInUM	:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
		p_tyProdRcpCurrList[4].diMaxSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
		p_tyProdRcpCurrList[4].diMinSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMin;
		p_tyProdRcpCurrList[4].diPitch		 := 1;
		p_tyProdRcpCurrList[4].bTopToBtm	:= p_tyNtParamCurr.bProjTopToBtmDefault;
			
		p_tyProdRcpCurrList[4].diMtrPshrExtSpd 	:= 7;
		p_tyProdRcpCurrList[4].diMtrPshrExtTorq := 80;
		p_tyProdRcpCurrList[4].diPshrOffset		:= 0;
		string1 := DINT_TO_STRING(p_tyNtParamCurr.tyProdRcpWidth.diMin);
		string1 := LEFT(string1,LEN(string1)-3);
		p_tyProdRcpCurrList[4].sDisplayInfo		:= CONCAT(string1,'.0mm');
		
		p_tyProdRcpCurrList[5].sRcpNm		:= 'max';
		p_tyProdRcpCurrList[5].diWidthInUM	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		p_tyProdRcpCurrList[5].diMaxSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMax;
		p_tyProdRcpCurrList[5].diMinSltValue := p_tyNtParamCurr.tyProdRcpMaxSlt.diMin;
		p_tyProdRcpCurrList[5].diPitch		 := 1;
		p_tyProdRcpCurrList[5].bTopToBtm	:= p_tyNtParamCurr.bProjTopToBtmDefault;
			
		p_tyProdRcpCurrList[5].diMtrPshrExtSpd 	:= 7;
		p_tyProdRcpCurrList[5].diMtrPshrExtTorq := 80;
		p_tyProdRcpCurrList[5].diPshrOffset		:= 0;
		string1 := DINT_TO_STRING(p_tyNtParamCurr.tyProdRcpWidth.diMax);
		string1 := LEFT(string1,LEN(string1)-3);
		p_tyProdRcpCurrList[5].sDisplayInfo		:= CONCAT(string1,'.0mm');
		
		eProdRcpAct	:= 12; //ProdRcpActSaveList
			
		IF p_eProdRcpStat = 12 AND p_eProdRcpStatus = Done THEN
			eProdRcpAct	:= ProdRcpActIdle;
			tyP0950Simu.tySimu.tyBtnRcpGen.bValue := FALSE;
		END_IF
		
	ELSIF p_eProdRcpStatus = Error THEN
		tyP0950Simu.tySimu.tyBtnRcpGen.bValue := FALSE;
	END_IF
	
END_ACTION

