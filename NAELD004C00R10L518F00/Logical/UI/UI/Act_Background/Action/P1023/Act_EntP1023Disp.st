
ACTION Act_EntP1023Disp: 
	
	//Access Address
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr1);
	ELSE
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviBack);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1023McSetHCommDSSel ACCESS ADR(tyP1023McSetHComm.tyDSSelA);
	p_tyP1023McSetHCommDSSMEMA ACCESS ADR(tyP1023McSetHComm.tyDSSMEMAA);
	p_tyP1023McSetHCommDSHermes ACCESS ADR(tyP1023McSetHComm.tyDSHermesA);	
	
	//Backup Param
	tyP1023McSetHComm.tyDSSelABkUp		:= tyP1023McSetHComm.tyDSSelA;
	tyP1023McSetHComm.tyDSSMEMAABkUp	:= tyP1023McSetHComm.tyDSSMEMAA;
	tyP1023McSetHComm.tyDSHermesABkUp	:= tyP1023McSetHComm.tyDSHermesA;
	tyP1023McSetHComm.tyDSSelBBkUp		:= tyP1023McSetHComm.tyDSSelB;
	tyP1023McSetHComm.tyDSSMEMABBkUp	:= tyP1023McSetHComm.tyDSSMEMAB;
	tyP1023McSetHComm.tyDSHermesBBkUp	:= tyP1023McSetHComm.tyDSHermesB;
	
END_ACTION
