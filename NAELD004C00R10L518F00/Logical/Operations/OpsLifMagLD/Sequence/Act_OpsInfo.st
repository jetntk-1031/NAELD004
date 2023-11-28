
ACTION Act_OpsInfo: 
	
	//Reset
	udiStatus1	:= 0;
	
	//Magazine Not Present
	a_bMagAllwMagPresent[1]	:= p_bMagPresentSen1;
	a_bMagAllwMagPresent[2]	:= p_bMagPresentSen2;
	a_bMagAllwMagPresent[3]	:= p_bMagPresentSen3;
	
	FOR udi := 1 TO 3 DO
		IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE THEN
			EXIT;
		END_IF
	END_FOR
	
	IF udi = 4 THEN
		IF (eOpsStep > LifMagLDStepInitLif) OR (eOpsStep1 > LifMagLDStep1InitLif) THEN
			udiStatus1	:= 10000;
		END_IF
	END_IF
	
	//Magazine Is Empty
	a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
	a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
	a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
	
	FOR udi := 1 TO 3 DO
		IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE AND a_tyMagAllwBffrStat[udi].bBffrMty = TRUE THEN
			udiStatus1	:= 10001 + (udi - 1);
			EXIT;
		END_IF
	END_FOR
	
END_ACTION
