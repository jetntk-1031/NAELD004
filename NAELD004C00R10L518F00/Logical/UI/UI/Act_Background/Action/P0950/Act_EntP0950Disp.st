
ACTION Act_EntP0950Disp:
	
	// Access Address
	p_tyC0002FullMask ACCESS ADR (tyP0950Simu.tyFullMaskHide);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0950Simu ACCESS ADR(tyP0950Simu.tySimu);
	
	p_tyP0950SimuAGVtoMC ACCESS ADR(tyP0950Simu.tyAGVToMc);
	p_tyP0950SimuMCtoAGV ACCESS ADR(tyP0950Simu.tyMcToAGV);
	
	//Display
	tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyMcParamCurr.bAGVComEn);

END_ACTION
