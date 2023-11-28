
ACTION Act_EntP1025Disp: 
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP1025McSetAIVComm.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR (tyP1025McSetAIVComm.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1025McSetAIVComm ACCESS ADR(tyP1025McSetAIVComm.tyAIVComm);
	
	//Backup Param
	tyP1025McSetAIVComm.tyAIVCommBkUp	:= tyP1025McSetAIVComm.tyAIVComm;
	
END_ACTION
