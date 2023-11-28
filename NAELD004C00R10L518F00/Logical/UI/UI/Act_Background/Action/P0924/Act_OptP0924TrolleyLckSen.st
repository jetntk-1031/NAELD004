
ACTION Act_OptP0924TrolleyLckSen: 
	
	tyP0924TrolleyLck.tyCom.tyBtnExtRS.bValue			:= p_tyDI.bTrolleyExtRS1;
	tyP0924TrolleyLck.tyCom.tyBtnExtRS2.bValue			:= p_tyDI.bTrolleyExtRS2;
	tyP0924TrolleyLck.tyCom.tyBtnPresentSen1.bValue			:= p_tyDI.bTrolleyPreSen1;
	tyP0924TrolleyLck.tyCom.tyBtnPresentSen2.bValue			:= p_tyDI.bTrolleyPreSen2;

	
	//Bitmap default: 456 mag1
	IF   (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE)
		OR (p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE)
		THEN
		IF eTrolleyLckAct1 = PneuActExt OR eTrolleyLckAct1 = PneuActRet OR 
			eTrolleyLckAct1 = PneuActSetExt OR eTrolleyLckAct1 = PneuActSetRet THEN
			tyP0924TrolleyLck.tyCom.tyBitmapMc.usiValueIdx := 0;
		ELSIF eTrolleyLckAct2 = PneuActExt OR eTrolleyLckAct2 = PneuActRet OR 
			eTrolleyLckAct2 = PneuActSetExt	OR eTrolleyLckAct2 = PneuActSetRet THEN
			tyP0924TrolleyLck.tyCom.tyBitmapMc.usiValueIdx := 1;
		END_IF
	END_IF
	
END_ACTION
