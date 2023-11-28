(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsLifMagLDAlmData	:= ADR(tyAlmData);
	p_OpsLifMagLDAlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsLifMagLDStepTxt	:= ADR(sStepTxt);
	p_OpsLifMagLDPaused		:= ADR(bPaused);
	
	p_OpsLifMagLDLifterAct		:= ADR(eLifterAct);
	p_OpsLifMagLDBufferAct1		:= ADR(eBufferAct1);
	p_OpsLifMagLDBufferAct2		:= ADR(eBufferAct2);
	p_OpsLifMagLDBufferAct3		:= ADR(eBufferAct3);
	p_OpsLifMagLDDSSMEMAAct1	:= ADR(eDSSMEMAAct1);
	p_OpsLifMagLDDSSMEMAAct2	:= ADR(eDSSMEMAAct2);
	p_OpsLifMagLDDSSMEMAAct3	:= ADR(eDSSMEMAAct3);
	
	p_OpsLifMagLDGoUnloadSlt1	:= ADR(diGoUnloadSlt1);
	p_OpsLifMagLDGoUnloadSlt2	:= ADR(diGoUnloadSlt2);
	p_OpsLifMagLDGoUnloadSlt3	:= ADR(diGoUnloadSlt3);
	p_OpsLifMagLDMagNxtUnload	:= ADR(eMagNxtUnload);
	p_OpsLifMagLDBffrExitBrd	:= ADR(bBffrExitBrd);
	p_OpsLifMagLDUnloadingMov	:= ADR(bUnloadingMov);
	p_OpsLifMagLDUnloading		:= ADR(bUnloading);
	
	(* Always Change If Project Change *)
	
END_PROGRAM