
ACTION Act_OptP0800Mag1Updt: 

	IF p_tyDI.bMagPresentSen1 THEN
		IF p_tyBuffer1BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 0;
		ELSIF p_tyBuffer1BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 1;
		ELSE
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo1.tyTxtMag1Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Empty
	IF tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bValue	:= TRUE;
		IF p_bOpsMagConvLD1RlsMagAllw OR p_bOpsMagConvLD1RlsMagUmask THEN
			IF p_bPPRetSen THEN
				eBuffer1Act	:= BufferActSetMty;
			END_IF
			IF p_bOpsMagConvLD1ExtMes OR p_bOpsMagConvLD1RlsMagUmask THEN
				bEjectMag1 	:= TRUE;
				bRlsMag1 	:= TRUE;
			END_IF
		END_IF
		
		IF p_eBuffer1Stat = BufferActSetMty AND p_eBuffer1Status = Done THEN
			eBuffer1Act	:= BufferActIdle;
			bEjectMag1 	:= FALSE;
			bRlsMag1 	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bValue		:= FALSE;
		ELSIF p_bOpsRun = FALSE THEN
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bValue		:= FALSE;
		END_IF
	
	END_IF
	
	IF p_bOpsRun AND p_tyNtParamCurr.bProjMotorizedPullerPrep THEN
	//	tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen1 AND (NOT p_tyBuffer1BffrStat.bBffrMty AND p_bOpsMagConvLD1RlsMagAllw)OR p_bOpsMagConvLD1RlsMagUmask;//FALSE;
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen1 AND (NOT p_tyBuffer1BffrStat.bBffrMty) OR p_bOpsMagConvLD1RlsMagUmask;//FALSE;
//	ELSIF p_bOpsRun THEN
//		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiMaskRtStat.0	:= FALSE;
	ELSE
		tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen1 AND NOT p_tyBuffer1BffrStat.bBffrMty;
	END_IF

END_ACTION
