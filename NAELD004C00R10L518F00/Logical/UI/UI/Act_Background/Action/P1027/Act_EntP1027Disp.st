
ACTION Act_EntP1027Disp: 
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP1027McSetUSBSetting.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1027McSetUSBSetting ACCESS ADR(tyP1027McSetUSBSetting.tyUSBSet);

	
	//Backup Param
	tyP1027McSetUSBSetting.tyUSBSetBkUp	:= tyP1027McSetUSBSetting.tyUSBSet;

	
END_ACTION
