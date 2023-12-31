
ACTION Act_OptP1040Keypad:
	
	tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValueMax	:= tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue;
	tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValueMin	:= tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue;
	tyP1040ProdSet.tyProdSet.tyNumPitch.diValueMax		:= tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue - tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue + 1;
	
	tyP1040ProdSet.tyProdSet.tyNumFirstSltRear.diValueMax	:= tyP1040ProdSet.tyProdSet.tyNumLastSltRear.diValue;
	tyP1040ProdSet.tyProdSet.tyNumLastSltRear.diValueMin	:= tyP1040ProdSet.tyProdSet.tyNumFirstSltRear.diValue;
	tyP1040ProdSet.tyProdSet.tyNumPitchRear.diValueMax		:= tyP1040ProdSet.tyProdSet.tyNumLastSltRear.diValue - tyP1040ProdSet.tyProdSet.tyNumFirstSltRear.diValue + 1;
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyStringRecipeNm.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth.uiRtStat)) THEN
		IF p_tyNtParamCurr.bLFProdWidth2Prep THEN
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= 'Product Width US';
		ELSE
			tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= 'Product Width DS';
		END_IF
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidth2.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:='Product Width DS';
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyStringSearch.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyStringSearch.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumFirstSlt.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumFirstSlt.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumLastSlt.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumLastSlt.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumPitch.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumPitch.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumProdWidthRear.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumProdWidth.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumPitchRear.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumPitch.sKeypadTitle;
	
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumFirstSltRear.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumFirstSlt.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumLastSltRear.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumLastSlt.sKeypadTitle;
		
	ELSIF fUIOutRtStatTPIsOpen(ADR(tyP1040ProdSet.tyProdSet.tyNumPshrOffset.uiRtStat))THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP1040ProdSet.tyProdSet.tyNumPshrOffset.sKeypadTitle;
		
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
