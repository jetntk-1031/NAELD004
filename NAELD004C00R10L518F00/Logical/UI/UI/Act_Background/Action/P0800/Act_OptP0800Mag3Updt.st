
ACTION Act_OptP0800Mag3Updt: 

	IF p_tyDI.bMagPresentSen3 THEN
		IF p_tyBuffer3BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 0;
		ELSIF p_tyBuffer3BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 1;
		ELSE
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo2.tyTxtMag3Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Empty
	IF tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bValue	:= TRUE;
		IF p_bOpsMagConvLD3RlsMagAllw OR p_bOpsMagConvLD3RlsMagUmask THEN
			IF p_bPPRetSen THEN
				eBuffer3Act	:= BufferActSetMty;
			END_IF
			IF p_bOpsMagConvLD3ExtMes OR p_bOpsMagConvLD3RlsMagUmask THEN
				bEjectMag3 := TRUE;
				bRlsMag3 	:= TRUE;
			END_IF
		END_IF
		
		IF p_eBuffer3Stat = BufferActSetMty AND p_eBuffer3Status = Done THEN
			eBuffer3Act	:= BufferActIdle;
			bEjectMag3 := FALSE;
			bRlsMag3 	:= FALSE;
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bValue		:= FALSE;
		ELSIF p_bOpsRun = FALSE THEN
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bValue		:= FALSE;
		END_IF
	END_IF
	
	IF p_bOpsRun AND p_tyNtParamCurr.bProjMotorizedPullerPrep THEN
	//	tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen3 AND (NOT p_tyBuffer3BffrStat.bBffrMty AND p_bOpsMagConvLD3RlsMagAllw) OR p_bOpsMagConvLD3RlsMagUmask;
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen3 AND (NOT p_tyBuffer3BffrStat.bBffrMty) OR p_bOpsMagConvLD3RlsMagUmask;//FALSE;
//	ELSIF p_bOpsRun THEN
//		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiMaskRtStat.0	:= FALSE;
	ELSE
		tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen3 AND NOT p_tyBuffer3BffrStat.bBffrMty;
	END_IF
	
END_ACTION
