
ACTION Act_OptP1040Limit:
//pulller closing ref
//	IF tyP1040ProdSet.tyProdSet.tyBtnSort.bValue THEN //sorted == by name 
//		IF tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin<0 THEN
//			tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:= -(tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM );
//		ELSE
//			tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:=0;
//		END_IF
//
//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax		:= (tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );	
//	ELSE // by default == curr list
//		IF tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin<0 THEN
			tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:= -(tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2-50000);
//		ELSE
//			tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:=0;
//		END_IF

//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax		:= (tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );	
		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax		:= (tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2-50000 );	
//	END_IF
	
		
END_ACTION
