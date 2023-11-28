
ACTION Act_OptP0800Mag2Updt: 

	IF p_tyDI.bMagPresentSen2 THEN
		IF p_tyBuffer2BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 0;
		ELSIF p_tyBuffer2BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 1;
		ELSE
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo1.tyTxtMag2Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Empty
	IF tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bValue	:= TRUE;
		IF p_bOpsMagConvLD2RlsMagAllw OR p_bOpsMagConvLD2RlsMagUmask THEN
			IF p_bPPRetSen THEN
				eBuffer2Act	:= BufferActSetMty;
			END_IF
			IF p_bOpsMagConvLD2ExtMes OR p_bOpsMagConvLD2RlsMagUmask THEN
				bEjectMag2 := TRUE;
				bRlsMag2 	:= TRUE;
			END_IF
		END_IF
		
		IF p_eBuffer2Stat = BufferActSetMty AND p_eBuffer2Status = Done THEN
			eBuffer2Act	:= BufferActIdle;
			bEjectMag2 := FALSE;
			bRlsMag2 	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bValue		:= FALSE;
		ELSIF p_bOpsRun = FALSE THEN
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bValue		:= FALSE;
		END_IF
	END_IF
	

	IF p_bOpsRun AND p_tyNtParamCurr.bProjMotorizedPullerPrep THEN
	//	tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen2 AND (NOT p_tyBuffer2BffrStat.bBffrMty AND p_bOpsMagConvLD2RlsMagAllw) OR p_bOpsMagConvLD2RlsMagUmask;
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen2 AND (NOT p_tyBuffer2BffrStat.bBffrMty) OR p_bOpsMagConvLD2RlsMagUmask;//FALSE;
//	ELSIF p_bOpsRun THEN
//		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiMaskRtStat.0	:= FALSE;
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen2 AND NOT p_tyBuffer2BffrStat.bBffrMty;
	END_IF
	
END_ACTION
