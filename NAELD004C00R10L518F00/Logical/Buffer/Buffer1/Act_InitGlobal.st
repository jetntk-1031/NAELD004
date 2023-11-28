(** 2019-04-26 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag1ConvPrep;
//	p_eLinkOpsMagLDBufferAct ACCESS p_OpsMagLD1BufferAct;
	p_eLinkOpsMagConvLDBufferAct ACCESS p_OpsMagConvLD1BufferAct;
	
	p_bLinkMcParamProdSelTopToBtm ACCESS p_NtParamProjTopToBtmDefault;//p_ProdRcpCurrRcp1TopToBtm;
	p_bLinkPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bLinkPresentSen2 ACCESS p_DIMagConvEntSen1;
	
	p_eLinkMag ACCESS p_NtParamProjMag;	
	p_usiLinkMod ACCESS p_ProdRcpCurrRcp1McMod;
	
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_diLinkMinSlt ACCESS p_ProdRcpCurrRcp1MinSltValue;
	p_diLinkMaxSlt ACCESS p_ProdRcpCurrRcp1MaxSltValue;
	p_diLinkPitch ACCESS p_ProdRcpCurrRcp1Pitch;
	p_diLinkBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diLinkLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
	
	p_diLinkSltToSltDist1 ACCESS p_MagRcpCurrRcpSltToSlt1;
	p_diLinkMinSlt1 ACCESS p_ProdRcpCurrRcp1MinSltRear;
	p_diLinkMaxSlt1 ACCESS p_ProdRcpCurrRcp1MaxSltRear;
	p_diLinkPitch1 ACCESS p_ProdRcpCurrRcp1PitchRear;
	p_diLinkBffrTtlSlt1 ACCESS p_MagRcpCurrRcpTtlSlt1;
	p_diLinkLifterBtmPosInUM1 ACCESS p_MagRcpCurrRcpMag1Slt1Pos1;

	p_bLinkNtParamProjRotCylPrep ACCESS p_NtParamProjPullerRotCylPrep;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_diNtParamProjMagMaxSlt ACCESS p_NtParamProjMagMaxSlt; //initial
	p_eLinkOpsLifMagLDBufferAct ACCESS p_OpsLifMagLDBufferAct1;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bHermesSvyPrep ACCESS p_NtParamHermesSvyPrep; //queryWO
	p_bMcParamHermesSvyEn ACCESS p_McParamHermesSvyEn;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_bMcParamMesRFIDEn ACCESS p_McParamMesRFIDEn;	

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sFileName ACCESS p_NtParamBffr1FileNm;
	p_bManual ACCESS p_UIMnlMod;
	p_dtCurrDT ACCESS p_TimeCurrDT;
//	p_diMinSlt ACCESS p_ProdRcpCurrRcp1MinSltValue;
//	p_diMaxSlt ACCESS p_ProdRcpCurrRcp1MaxSltValue;
//	p_diPitch ACCESS p_ProdRcpCurrRcp1Pitch;
//	p_diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
//	p_diLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
	p_diLifterCurrPosInUM ACCESS p_LifterBtmActualPos;
	p_bFIFO ACCESS p_NtParamBffr1FIFO;
//	p_bMagPresentSensor ACCESS p_DIMagPresentSen1;
	p_sCurrRcpNm ACCESS p_ProdRcpCurrRcp1Nm;
	p_sProgNm ACCESS p_NtParamBffr1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
