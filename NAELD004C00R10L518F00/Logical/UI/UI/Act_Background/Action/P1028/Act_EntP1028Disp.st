
ACTION Act_EntP1028Disp: 
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP1028McSetRS232Setting.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR (tyP1028McSetRS232Setting.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1028McSetRS232Setting ACCESS ADR(tyP1028McSetRS232Setting.tyRS232Set);
	
	//Backup Param
	tyP1028McSetRS232Setting.tyRS232SetBkUp	:= tyP1028McSetRS232Setting.tyRS232Set;
	
END_ACTION
