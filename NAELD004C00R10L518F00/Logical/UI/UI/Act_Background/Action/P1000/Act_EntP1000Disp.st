
ACTION Act_EntP1000Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1000Lang.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1000Lang ACCESS ADR(tyP1000Lang.tyLang);
	
	//Backup Param
	tyP1000Lang.tyLangBkUp	:= tyP1000Lang.tyLang;
	
	//Display
	tyP1000Lang.tyLang.tyBtnEnglish.uiRtStat.0			:= NOT (p_tyNtParamCurr.bchineseprep OR p_tyNtParamCurr.bgermanprep);
	tyP1000Lang.tyLang.tyBtnChinese.uiRtStat.0			:= NOT (p_tyNtParamCurr.bchineseprep);
	tyP1000Lang.tyLang.tyBtnGerman.uiRtStat.0			:= NOT (p_tyNtParamCurr.bgermanprep);

END_ACTION
