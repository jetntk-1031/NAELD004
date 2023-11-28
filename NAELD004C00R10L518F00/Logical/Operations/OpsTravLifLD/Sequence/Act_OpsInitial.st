(** 2019-01-16 **)
ACTION Act_OpsInitial:
	
	eOpsStep		:= TravLifLDStepNA;
	eGotoOpsStep	:= TravLifLDStepInitConv;
	
	eOpsStep1		:= TravLifLDStep1NA;
	eGotoOpsStep1	:= TravLifLDStep1InitConv;
	
	bInitConv		:= FALSE;
	bOpsInitDone	:= FALSE;
	bUSComm			:= FALSE;
	bEntBrd			:= FALSE;
	bDSComm			:= FALSE;
	bExitBrd		:= FALSE;
	
	bTravGoToChkPt := FALSE;
	
	bInShutClo1	:= FALSE;
	bInShutClo2 := FALSE;
	bInShutClo3 := FALSE;
END_ACTION
