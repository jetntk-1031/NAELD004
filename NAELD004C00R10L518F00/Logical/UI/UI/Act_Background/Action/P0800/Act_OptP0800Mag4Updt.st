
ACTION Act_OptP0800Mag4Updt: 

	IF p_tyDI.bMagPresentSen4 THEN
		IF p_tyBuffer4BffrStat.bBffrFull THEN
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiValueIdx	:= 2;
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiColor	:= 0;
		ELSIF p_tyBuffer4BffrStat.bBffrMty THEN
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiValueIdx := 1;
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiColor	:= 1;
		ELSE
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiValueIdx := 3;
			tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiColor	:= 2;
		END_IF
	ELSE
		tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiValueIdx		:= 0;
		tyP0800MagInfo.tyMagInfo4.tyTxtMag4Stat.usiColor		:= 1;
	END_IF
	
	//Set Magazine Empty
	IF tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.bRtCompl THEN
		tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.bValue	:= TRUE;
		
		eBuffer4Act	:= BufferActSetMty;
		
		IF p_eBuffer4Stat = BufferActSetMty AND p_eBuffer4Status = Done THEN
			eBuffer4Act	:= BufferActIdle;
			
			tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.bRtCompl	:= FALSE;
			tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.bValue		:= FALSE;
		END_IF
	END_IF
	
	IF p_bOpsRun THEN
		tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen4 AND NOT p_tyBuffer4BffrStat.bBffrMty AND p_bOpsMagConvLD4RlsMagAllw;
	ELSE
		tyP0800MagInfo.tyMagInfo4.tyBtnMag4SetEmpty.uiMaskRtStat.0	:= p_tyDI.bMagPresentSen4 AND NOT p_tyBuffer4BffrStat.bBffrMty;
	END_IF
	
END_ACTION
