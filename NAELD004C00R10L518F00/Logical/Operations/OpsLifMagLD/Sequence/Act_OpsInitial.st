(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= LifMagLDStepNA;
	eGotoOpsStep	:= LifMagLDStepInitLif;
	
	eOpsStep1		:= LifMagLDStep1NA;
	eGotoOpsStep1	:= LifMagLDStep1InitLif;
	
	eMagNxtUnload	:= MagNxtUnloadInvalid;
	bBffrExitBrd	:= FALSE;
	bUnloadingMov	:= FALSE;
	bUnloading		:= FALSE;
	
END_ACTION
