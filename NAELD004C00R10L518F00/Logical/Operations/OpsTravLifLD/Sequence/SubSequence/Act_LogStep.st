(** 2019-03-25 **)
ACTION Act_LogStep:
	
//log
	IF EDGEPOS (bClsLog) THEN 
		memset(ADR(logStep),0,SIZEOF(logStep));
		logIndexStep := 0;
		bClsLog := FALSE;
	END_IF
	
	blog := eOpsStep1 <> eGotoOpsStepDummy;
    
	IF blog THEN
		logStep[logIndexStep] := eOpsStep1;
		logIndexStep := logIndexStep + 1;
		IF logIndexStep > SIZEOF(logStep)/SIZEOF(logStep[0]) -1 THEN
			logIndexStep := 0;
		END_IF
	END_IF
        
	eGotoOpsStepDummy := eOpsStep1;
	
	
END_ACTION
