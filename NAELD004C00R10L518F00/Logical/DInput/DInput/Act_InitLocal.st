(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiMax ACCESS ADR(c_udiDInputMax);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_tyDISettings ACCESS ADR(tyDISettings);
	p_sProgNm ACCESS ADR(sProgNm);
	
	p_diConvLftSenOnTm ACCESS ADR(diConvLftSenOnTm);
	p_diConvLftSenOffTm ACCESS ADR(diConvLftSenOffTm);
	p_diConvRgtSenOnTm ACCESS ADR(diConvRgtSenOnTm);
	p_diConvRgtSenOffTm ACCESS ADR(diConvRgtSenOffTm);
	p_diMagConvEntSenOnTm ACCESS ADR(diMagConvEntSenOnTm);
	p_diMagConvEntSenOffTm ACCESS ADR(diMagConvEntSenOffTm);
	p_diMagConvPresentSenOnTm ACCESS ADR(diMagConvPresentSenOnTm);
	p_diMagConvPresentSenOffTm ACCESS ADR(diMagConvPresentSenOffTm);
	p_diConvClrSenOnTm ACCESS ADR(diConvClrSenOnTm);
	p_diConvClrSenOffTm ACCESS ADR(diConvClrSenOffTm);
	p_diTrolleySenOnTm ACCESS ADR(diTrolleySenOnTm);
	p_diTrolleySenOffTm ACCESS ADR(diTrolleySenOffTm);

END_ACTION
