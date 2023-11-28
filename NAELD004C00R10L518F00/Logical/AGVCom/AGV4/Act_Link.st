(** 2018-12-08 **)
ACTION Act_Link:
	
	//Machine --> AGV ---> Communication On & Machine itself RUN Mode
	IF p_bLinkOpsRun = TRUE THEN
		
		tyDTMagToAGV.bCI4Auto := TRUE;
	ELSE
		tyDTMagToAGV.bCI4Auto	:= FALSE;
	END_IF
	
	tyDTMagToAGV.bCI4Occupied 			:= p_bBufferMagPresent OR p_bMagConvLftSen OR p_bMagConvRgtSen ;
	
	fbMagEmptyTm(IN:= p_bMagConvLftSen = FALSE AND p_bBufferMagPresent = FALSE);
	IF p_bBufferMagPresent AND p_tyLinkBufferStat.bBffrMty THEN
		tyDTMagToAGV.bCI4MagazineEmpty		:=  TRUE;
	ELSIF fbMagEmptyTm.Q THEN
		tyDTMagToAGV.bCI4MagazineEmpty		:=  FALSE;
	END_IF
	
	IF p_bLinkAGVOnline THEN
		
		p_tyAGVToDTMag.bVEHAuto		:= p_tyLinkAGVtoDTMag.bVEHAuto;
		p_tyAGVToDTMag.bVEHInPos1	:= p_tyLinkAGVtoDTMag.bVEHInPos1;
		p_tyAGVToDTMag.bVEHInPos2 	:= p_tyLinkAGVtoDTMag.bVEHInPos2;
		p_tyAGVToDTMag.bVEHInPos3 	:= p_tyLinkAGVtoDTMag.bVEHInPos3;
		p_tyAGVToDTMag.bVEHInPos4 	:= p_tyLinkAGVtoDTMag.bVEHInPos4 AND bAGVInPosSen;
		p_tyAGVToDTMag.bVEH1Occupied	:= p_tyLinkAGVtoDTMag.bVEH1Occupied;
		p_tyAGVToDTMag.bVEH2Occupied	:= p_tyLinkAGVtoDTMag.bVEH2Occupied;
		p_tyAGVToDTMag.bVEH3Occupied	:= p_tyLinkAGVtoDTMag.bVEH3Occupied;
		p_tyAGVToDTMag.bVEH4Occupied	:= p_tyLinkAGVtoDTMag.bVEH4Occupied;
		p_tyAGVToDTMag.bVEHRunning	:= p_tyLinkAGVtoDTMag.bVEHRunning;
		
	ELSE
		
		p_tyAGVToDTMag.bVEHAuto		:= FALSE;
		p_tyAGVToDTMag.bVEHInPos1	:= FALSE;
		p_tyAGVToDTMag.bVEHInPos2 	:= FALSE;
		p_tyAGVToDTMag.bVEHInPos3 	:= FALSE;
		p_tyAGVToDTMag.bVEHInPos4 	:= FALSE;
		p_tyAGVToDTMag.bVEH1Occupied:= FALSE;
		p_tyAGVToDTMag.bVEH2Occupied:= FALSE;
		p_tyAGVToDTMag.bVEH3Occupied:= FALSE;
		p_tyAGVToDTMag.bVEH4Occupied:= FALSE;
		p_tyAGVToDTMag.bVEHRunning	:= FALSE;
		
	END_IF
	
	bAIVInPos := p_tyAGVToDTMag.bVEHInPos4;
	bAIVAuto := p_tyAGVToDTMag.bVEHAuto;
	bAIVOccupied := p_tyAGVToDTMag.bVEH4Occupied;
	bMagConvAuto := tyDTMagToAGV.bCI4Auto;
	bMagConvOccupied :=  tyDTMagToAGV.bCI4Occupied;
	
	tyDTMagToAGV.bCI4Running := bMagConvRun; 
	tyDTMagToAGV.bCI4Rdy	:= bMagConvRdy;
	
	
	IF p_bNtParamAGVInPosSenPrep THEN
		fbInPosErrTimer(IN:= p_tyLinkAGVtoDTMag.bVEHInPos3 AND bAGVInPosSen = FALSE, PT:= T#10s);
		IF fbInPosErrTimer.Q THEN
			eStatus		:= Error;
			udiStatus	:= 10009;	//AIV Not In Position
		END_IF
	END_IF
	
	
	IF p_bNtParamAGVInPosSenPrep THEN
		bAGVInPosSen := p_bAGVInPosSen1 AND p_bAGVInPosSen2;
	ELSE
		bAGVInPosSen := TRUE;
	END_IF
	
END_ACTION
