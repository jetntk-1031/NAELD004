(** 2019-07-04 **)
ACTION Act_Link:
	
	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfLink;
		PrecededByF1:
			PrecededByF1Link;
	END_CASE
	

	
	//for comparing Rcp
	a_tyBffrStat[1] := p_tyBuffer1BffrStat;
	a_tyBffrStat[2] := p_tyBuffer2BffrStat;
	a_tyBffrStat[3] := p_tyBuffer3BffrStat;

	a_udiMagAllwGo[1] := p_udiOpsMagConvLD1MagAllwGo;
	a_udiMagAllwGo[2] := p_udiOpsMagConvLD2MagAllwGo;
	a_udiMagAllwGo[3] := p_udiOpsMagConvLD3MagAllwGo;
	
	a_bBufferMagPresent[1] := p_bBuffer1MagPresent;
	a_bBufferMagPresent[2] := p_bBuffer2MagPresent;
	a_bBufferMagPresent[3] := p_bBuffer3MagPresent;
	
	//	a_bMagAWWidthDiff[1] := p_bMagAW1WidthDiff;
	//	a_bMagAWWidthDiff[2] := p_bMagAW2WidthDiff;
	//	a_bMagAWWidthDiff[3] := p_bMagAW3WidthDiff;
	
	//pa_bInternalReqProdRcpDiff[ii]
	
	//p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	
END_ACTION
