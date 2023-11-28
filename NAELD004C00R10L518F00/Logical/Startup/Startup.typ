(*2019-04-04*)
(**)

TYPE
	eStartupAction : 
		(
		StartupActIdle,
		StartupActRun
		);
	eStartupStep : 
		(
		StartupStepUsrFolder,
		StartupStepParameter,
		StartupStepGetHWInfo,
		StartupStepLibVer,
		StartupStepRecipe,
		StartupStepUsrMgmt,
		StartupStepBffr,
		StartupStepAlarm,
		StartupStepSerial,
		StartupStepHermes,
		StartupStepSDOWrite,
		StartupStepSetupUI,
		StartupStepAutoRcp,
		StartupStepDone
		);
END_TYPE
