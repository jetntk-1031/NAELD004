(*2018-12-11*)
(**)
(*Sequence*)

TYPE
	eLifMagLDStep : 
		(
		LifMagLDStepNA,
		LifMagLDStepInitLif,
		LifMagLDStepMagCmp,
		LifMagLDStepNxtUnloadBffr,
		LifMagLDStepLifMov,
		LifMagLDStepBffrDSComm,
		LifMagLDStepBffrExitBrd,
		LifMagLDStepUnloadBffr,
		LifMagLDStepLifMovUnloadMag,
		LifMagLDStepUnloadMag
		);
	eLifMagLDStep1 : 
		(
		LifMagLDStep1NA,
		LifMagLDStep1InitLif,
		LifMagLDStep1MagCmp,
		LifMagLDStep1NxtUnloadBffr,
		LifMagLDStep1PreLifMov,
		LifMagLDStep1LifMov,
		LifMagLDStep1BffrDSComm,
		LifMagLDStep1BffrExitLifMovWait,
		LifMagLDStep1BffrExitLifMov,
		LifMagLDStep1BffrExitBrd,
		LifMagLDStep1UnloadBffr,
		LifMagLDStep1LifMovUnloadMag,
		LifMagLDStep1UnloadMag
		);
	eLifMagLDMagNxtUnload : 
		(
		MagNxtUnloadInvalid,
		MagNxtUnloadMag1,
		MagNxtUnloadMag2,
		MagNxtUnloadMag3
		);
END_TYPE
