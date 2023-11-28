(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= MagConvLDStepNA;
	eGotoOpsStep	:= MagConvLDStepInitMag;
	
	bOpsInitDone		:= FALSE;
	bMagBffrAvl			:= FALSE;
	bNewMagAllw			:= FALSE;
	bRlsMagAllw			:= FALSE;
	bStepMagExitedWait	:= FALSE;
	
END_ACTION
