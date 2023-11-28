(** 2019-05-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_NtParamStat		:= ADR(eStat);
	p_NtParamStatus		:= ADR(eStatus);
	p_NtParamStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_NtParamAlmData	:= ADR(tyAlmData);
	
	//Output
	p_NtParamFileNotFound				:= ADR(bFileNotFound);
	
	p_NtParamCurr						:= ADR(tyNtParamCurr);
	
	p_NtParamDISettings					:= ADR(tyNtParamCurr.tyDISettings);
	p_NtParamDOSettings					:= ADR(tyNtParamCurr.tyDOSettings);
	p_NtParamAWPusherPrep				:= ADR(tyNtParamCurr.bAWPusherPrep);
	p_NtParamAWPrep						:= ADR(tyNtParamCurr.bAWPrep);
	p_NtParamLFPrep						:= ADR(tyNtParamCurr.bLFPrep);
	p_NtParamLeaderMc					:= ADR(tyNtParamCurr.bLeaderMc);
	p_NtParamLFUsrSetPrep				:= ADR(tyNtParamCurr.bLFUsrSetPrep);
	p_NtParamLFWidthLimit				:= ADR(tyNtParamCurr.diLFWidthLimit);
	p_NtParamLFProdWidthChk				:= ADR(tyNtParamCurr.bLFProdWidthChk);
	p_NtParamDSWidthChkPrep				:= ADR(tyNtParamCurr.bDSWidthChkPrep);
	p_NtParamLCSLFPrep					:= ADR(tyNtParamCurr.bLCSLFPrep);
	p_NtParamLCSReqRcpPrep				:= ADR(tyNtParamCurr.bLCSReqRcpPrep);
	p_NtParamLCSManageRcpPrep			:= ADR(tyNtParamCurr.bLCSManageRcpPrep);
	p_NtParamLCSLiveDatPrep				:= ADR(tyNtParamCurr.bLCSLiveDatPrep);
	p_NtParamIPCSMEMA9851ExtdPrep		:= ADR(tyNtParamCurr.bIPCSMEMA9851ExtdPrep);
	p_NtParamVSMEMAPrep					:= ADR(tyNtParamCurr.bVSMEMAPrep);
	p_NtParamHermesPrep					:= ADR(tyNtParamCurr.bHermesPrep);
	p_NtParamHermesRmtPrep				:= ADR(tyNtParamCurr.bHermesRmtPrep);
	p_NtParamSSaverPrep					:= ADR(tyNtParamCurr.bSSaverPrep);
	p_NtParamWidthOffset				:= ADR(tyNtParamCurr.diWidthOffsetInUM);
	p_NtParamPushPulAWidthOffset		:= ADR(tyNtParamCurr.diAWPushPulOffsetInUM);
	p_NtParamJobNo						:= ADR(tyNtParamCurr.sJobNo);
	p_NtParamNtAddr						:= ADR(tyNtParamCurr.usiNtAddr);
	p_NtParamShutterWaitTmr				:= ADR(tyNtParamCurr.tShutterWaitTmr);
	p_NtParamProjAGVInPosSenPrep		:= ADR(tyNtParamCurr.bProjAGVInPosSenPrep);
	
	p_NtParamProjLaneBPrep				:= ADR(tyNtParamCurr.bProjLaneBPrep);
	p_NtParamProjTopToBtmDefault		:= ADR(tyNtParamCurr.bProjTopToBtmDefault);
	p_NtParamProjLongBrdPrep			:= ADR(tyNtParamCurr.bProjLongBrdPrep);
	p_NtParamProjInletShutPrep			:= ADR(tyNtParamCurr.bProjInletShutPrep);
	p_NtParamProjOutletShutPrep			:= ADR(tyNtParamCurr.bProjOutletShutPrep);
	p_NtParamProjMag1ConvPrep			:= ADR(tyNtParamCurr.bProjMag1ConvPrep);
	p_NtParamProjMag2ConvPrep			:= ADR(tyNtParamCurr.bProjMag2ConvPrep);
	p_NtParamProjMag3ConvPrep			:= ADR(tyNtParamCurr.bProjMag3ConvPrep);
	p_NtParamProjMag4ConvPrep			:= ADR(tyNtParamCurr.bProjMag4ConvPrep);
	p_NtParamProjMagOrientChkSenPrep	:= ADR(tyNtParamCurr.bProjMagOrientChkSenPrep);
	p_NtParamProjAGVPrep				:= ADR(tyNtParamCurr.bProjAGVPrep);
	p_NtParamProjBypsInitConvPrep		:= ADR(tyNtParamCurr.bProjBypsInitConvPrep);
	p_NtParamProjRlsNewProdPrep			:= ADR(tyNtParamCurr.bProjRlsNewProdPrep);
	p_NtParamProjBtnInsertRmvMag		:= ADR(tyNtParamCurr.bProjBtnInsertRmvMag);
	p_NtParamProjMagMinSlt				:= ADR(tyNtParamCurr.diProjMagMinSlt);
	p_NtParamProjMagMaxSlt				:= ADR(tyNtParamCurr.diProjMagMaxSlt);
	p_NtParamProjMag					:= ADR(tyNtParamCurr.eProjMag);
	p_NtParamProjConvDir				:= ADR(tyNtParamCurr.eProjConvDir);
	p_NtParamProjMagConvDir				:= ADR(tyNtParamCurr.eProjMagConvDir);
	p_NtParamProjMagAutoVerifyPrep		:= ADR(tyNtParamCurr.bMagAutoVerifyPrep);
	p_NtParamProjMotorizedPullerPrep	:= ADR(tyNtParamCurr.bProjMotorizedPullerPrep);
	p_NtParamProjMagSafetyBarPrep		:= ADR(tyNtParamCurr.bProjMagSafetyBarPrep);
	p_NtParamProjLifterMagPlatform		:= ADR(tyNtParamCurr.bProjLifterMagPlatform);
	
	p_NtParamUsrFolderProgNm			:= ADR(tyNtParamCurr.sUsrFolderProgNm);
	
	p_NtParamLibVersionProgNm			:= ADR(tyNtParamCurr.sLibVersionProgNm);
	
	p_NtParamTimeProgNm					:= ADR(tyNtParamCurr.sTimeProgNm);
	
	p_NtParamHWInfoProgNm				:= ADR(tyNtParamCurr.sHWInfoProgNm);
	p_NtParamHWInfoDevice				:= ADR(tyNtParamCurr.sHWInfoDevice);
	

	p_NtParamTLBuzMode					:= ADR(tyNtParamCurr.eTLBuzMode);
	
	p_NtParamTLChgRcpBlinkTm		:= ADR(tyNtParamCurr.tTLChgRcpBlinkTm);
	
	p_NtParamTLErrBlinkTm			:= ADR(tyNtParamCurr.tTLErrBlinkTm);
	p_NtParamBuzErrOnTm				:= ADR(tyNtParamCurr.tBuzErrOnTm);
	p_NtParamBuzErrRestTm			:= ADR(tyNtParamCurr.tBuzErrRestTm);
	p_NtParamBuzErrOnCntr			:= ADR(tyNtParamCurr.usiBuzErrOnCntr);
	p_NtParamBuzErrStopSeqEn		:= ADR(tyNtParamCurr.bBuzErrStopSeqEn);
	p_NtParamBuzErrStopSeqCntr		:= ADR(tyNtParamCurr.usiBuzErrStopSeqCntr);
	
	p_NtParamTLWarnBlinkTm			:= ADR(tyNtParamCurr.tTLWarnBlinkTm);
	p_NtParamBuzWarnOnTm			:= ADR(tyNtParamCurr.tBuzWarnOnTm);
	p_NtParamBuzWarnRestTm			:= ADR(tyNtParamCurr.tBuzWarnRestTm);
	p_NtParamBuzWarnOnCntr			:= ADR(tyNtParamCurr.usiBuzWarnOnCntr);
	p_NtParamBuzWarnStopSeqEn		:= ADR(tyNtParamCurr.bBuzWarnStopSeqEn);
	p_NtParamBuzWarnStopSeqCntr		:= ADR(tyNtParamCurr.usiBuzWarnStopSeqCntr);
	
	p_NtParamTLWarn1BlinkTm			:= ADR(tyNtParamCurr.tTLWarn1BlinkTm);
	p_NtParamBuzWarn1OnTm			:= ADR(tyNtParamCurr.tBuzWarn1OnTm);
	p_NtParamBuzWarn1RestTm			:= ADR(tyNtParamCurr.tBuzWarn1RestTm);
	p_NtParamBuzWarn1OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn1OnCntr);
	p_NtParamBuzWarn1StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn1StopSeqEn);
	p_NtParamBuzWarn1StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn1StopSeqCntr);
	
	p_NtParamTLWarn2BlinkTm			:= ADR(tyNtParamCurr.tTLWarn2BlinkTm);
	p_NtParamBuzWarn2OnTm			:= ADR(tyNtParamCurr.tBuzWarn2OnTm);
	p_NtParamBuzWarn2RestTm			:= ADR(tyNtParamCurr.tBuzWarn2RestTm);
	p_NtParamBuzWarn2OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn2OnCntr);
	p_NtParamBuzWarn2StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn2StopSeqEn);
	p_NtParamBuzWarn2StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn2StopSeqCntr);
	
	p_NtParamTLWarn3BlinkTm			:= ADR(tyNtParamCurr.tTLWarn3BlinkTm);
	p_NtParamBuzWarn3OnTm			:= ADR(tyNtParamCurr.tBuzWarn3OnTm);
	p_NtParamBuzWarn3RestTm			:= ADR(tyNtParamCurr.tBuzWarn3RestTm);
	p_NtParamBuzWarn3OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn3OnCntr);
	p_NtParamBuzWarn3StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn3StopSeqEn);
	p_NtParamBuzWarn3StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn3StopSeqCntr);
	
	p_NtParamTLWarn4BlinkTm			:= ADR(tyNtParamCurr.tTLWarn4BlinkTm);
	p_NtParamBuzWarn4OnTm			:= ADR(tyNtParamCurr.tBuzWarn4OnTm);
	p_NtParamBuzWarn4RestTm			:= ADR(tyNtParamCurr.tBuzWarn4RestTm);
	p_NtParamBuzWarn4OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn4OnCntr);
	p_NtParamBuzWarn4StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn4StopSeqEn);
	p_NtParamBuzWarn4StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn4StopSeqCntr);
	
	p_NtParamTLWarn5BlinkTm			:= ADR(tyNtParamCurr.tTLWarn5BlinkTm);
	p_NtParamBuzWarn5OnTm			:= ADR(tyNtParamCurr.tBuzWarn5OnTm);
	p_NtParamBuzWarn5RestTm			:= ADR(tyNtParamCurr.tBuzWarn5RestTm);
	p_NtParamBuzWarn5OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn5OnCntr);
	p_NtParamBuzWarn5StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn5StopSeqEn);
	p_NtParamBuzWarn5StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn5StopSeqCntr);
	
	p_NtParamBuzAlertOnTm			:= ADR(tyNtParamCurr.tBuzAlertOnTm);
	p_NtParamBuzAlertRestTm			:= ADR(tyNtParamCurr.tBuzAlertRestTm);
	p_NtParamBuzAlertOnCntr			:= ADR(tyNtParamCurr.usiBuzAlertOnCntr);
	p_NtParamBuzAlertStopSeqEn		:= ADR(tyNtParamCurr.bBuzAlertStopSeqEn);
	p_NtParamBuzAlertStopSeqCntr	:= ADR(tyNtParamCurr.usiBuzAlertStopSeqCntr);
	
	p_NtParamTLBlueBlinkTm			:= ADR(tyNtParamCurr.tTLBlueBlinkTm);
	p_NtParamTLAmberBlinkTm			:= ADR(tyNtParamCurr.tTLAmberBlinkTm);
	p_NtParamTLWhiteBlinkTm			:= ADR(tyNtParamCurr.tTLWhiteBlinkTm);
	p_NtParamTLRedBlinkTm			:= ADR(tyNtParamCurr.tTLRedBlinkTm);
	p_NtParamTLGreenBlinkTm			:= ADR(tyNtParamCurr.tTLGreenBlinkTm);
	
	p_NtParamAlmProgNm					:= ADR(tyNtParamCurr.sAlmProgNm);
	p_NtParamAlmFileKeepDay				:= ADR(tyNtParamCurr.udiAlmFileKeepDay);
	
	p_NtParamProdRcpProgNm				:= ADR(tyNtParamCurr.sProdRcpProgNm);
	p_NtParamProdRcpListFileNm			:= ADR(tyNtParamCurr.sProdRcpListFileNm);
	p_NtParamProdRcpSingleFileNm		:= ADR(tyNtParamCurr.sProdRcpSingleFileNm);
	
	p_NtParamMpProdRcpProgNm			:= ADR(tyNtParamCurr.sMpProdRcpProgNm);
	p_NtParamMpProdRcpFileNm			:= ADR(tyNtParamCurr.sMpProdRcpFileNm);
	p_NtParamMpProdRcpPVNm				:= ADR(tyNtParamCurr.sMpProdRcpPVNm);
	
	p_NtParamMagRcpProgNm				:= ADR(tyNtParamCurr.sMagRcpProgNm);
	p_NtParamMagRcpListFileNm			:= ADR(tyNtParamCurr.sMagRcpListFileNm);
	p_NtParamMagRcpSingleFileNm			:= ADR(tyNtParamCurr.sMagRcpSingleFileNm);
	
	p_NtParamMagRcpProgNm1				:= ADR(tyNtParamCurr.sMagRcpProgNm1);
	p_NtParamMagRcpListFileNm1			:= ADR(tyNtParamCurr.sMagRcpListFileNm1);
	p_NtParamMagRcpSingleFileNm1		:= ADR(tyNtParamCurr.sMagRcpSingleFileNm1);
	
	p_NtParamMcParamProgNm				:= ADR(tyNtParamCurr.sMcParamProgNm);
	p_NtParamMcParamFileNm				:= ADR(tyNtParamCurr.sMcParamFileNm);
	
	p_NtParamUsrMgmtProgNm				:= ADR(tyNtParamCurr.sUsrMgmtProgNm);
	
	p_NtParamBffr1ProgNm				:= ADR(tyNtParamCurr.sBffr1ProgNm);
	p_NtParamBffr1FileNm				:= ADR(tyNtParamCurr.sBffr1FileNm);
	p_NtParamBffr1FIFO					:= ADR(tyNtParamCurr.bBffr1FIFO);
	
	p_NtParamBffr2ProgNm				:= ADR(tyNtParamCurr.sBffr2ProgNm);
	p_NtParamBffr2FileNm				:= ADR(tyNtParamCurr.sBffr2FileNm);
	p_NtParamBffr2FIFO					:= ADR(tyNtParamCurr.bBffr2FIFO);
	
	p_NtParamBffr3ProgNm				:= ADR(tyNtParamCurr.sBffr3ProgNm);
	p_NtParamBffr3FileNm				:= ADR(tyNtParamCurr.sBffr3FileNm);
	p_NtParamBffr3FIFO					:= ADR(tyNtParamCurr.bBffr3FIFO);
	
	p_NtParamBffr4ProgNm				:= ADR(tyNtParamCurr.sBffr4ProgNm);
	p_NtParamBffr4FileNm				:= ADR(tyNtParamCurr.sBffr4FileNm);
	p_NtParamBffr4FIFO					:= ADR(tyNtParamCurr.bBffr4FIFO);
	
	p_NtParamUSSMEMA1ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA1ProgNm);
	p_NtParamUSSMEMA1RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA1RstDlyTm);
	p_NtParamUSSMEMA1SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA1SigInChkTm);
	
	p_NtParamUSSMEMA2ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA2ProgNm);
	p_NtParamUSSMEMA2RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA2RstDlyTm);
	p_NtParamUSSMEMA2SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA2SigInChkTm);
	
	p_NtParamUSSMEMA3ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA3ProgNm);
	p_NtParamUSSMEMA3RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA3RstDlyTm);
	p_NtParamUSSMEMA3SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA3SigInChkTm);
	
	p_NtParamUSSMEMA4ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA4ProgNm);
	p_NtParamUSSMEMA4RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA4RstDlyTm);
	p_NtParamUSSMEMA4SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA4SigInChkTm);
	
	p_NtParamDSSMEMA1ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA1ProgNm);
	p_NtParamDSSMEMA1RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA1RstDlyTm);
	p_NtParamDSSMEMA1SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA1SigInChkTm);
	
	p_NtParamDSSMEMA2ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA2ProgNm);
	p_NtParamDSSMEMA2RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA2RstDlyTm);
	p_NtParamDSSMEMA2SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA2SigInChkTm);
	
	p_NtParamDSSMEMA3ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA3ProgNm);
	p_NtParamDSSMEMA3RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA3RstDlyTm);
	p_NtParamDSSMEMA3SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA3SigInChkTm);
	
	p_NtParamDSSMEMA4ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA4ProgNm);
	p_NtParamDSSMEMA4RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA4RstDlyTm);
	p_NtParamDSSMEMA4SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA4SigInChkTm);
	
	p_NtParamDSSMEMAAProgNm				:= ADR(tyNtParamCurr.sDSSMEMAAProgNm);
	p_NtParamDSSMEMAARstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMAARstDlyTm);
	p_NtParamDSSMEMAASigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMAASigInChkTm);
	
	p_NtParamDSSMEMABProgNm				:= ADR(tyNtParamCurr.sDSSMEMABProgNm);
	p_NtParamDSSMEMABRstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMABRstDlyTm);
	p_NtParamDSSMEMABSigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMABSigInChkTm);
	
	p_NtParamInShutterProgNm			:= ADR(tyNtParamCurr.sInShutterProgNm);
	p_NtParamInShutterTwoCtrlIn			:= ADR(tyNtParamCurr.bInShutterTwoCtrlIn);
	p_NtParamInShutterExtTO				:= ADR(tyNtParamCurr.tInShutterExtTO);
	p_NtParamInShutterRetTO				:= ADR(tyNtParamCurr.tInShutterRetTO);
	
	p_NtParamOutShutterProgNm			:= ADR(tyNtParamCurr.sOutShutterProgNm);
	p_NtParamOutShutterTwoCtrlIn		:= ADR(tyNtParamCurr.bOutShutterTwoCtrlIn);
	p_NtParamOutShutterExtTO			:= ADR(tyNtParamCurr.tOutShutterExtTO);
	p_NtParamOutShutterRetTO			:= ADR(tyNtParamCurr.tOutShutterRetTO);
	
	p_NtParamPullConvProgNm				:= ADR(tyNtParamCurr.sPullConvProgNm);
	p_NtParamPullConvOnDirMod			:= ADR(tyNtParamCurr.bPullConvOnDirMod);
	p_NtParamPullConvMtrOffDlyTm		:= ADR(tyNtParamCurr.tPullConvMtrOffDlyTm);
	p_NtParamPullConvPullExtTO			:= ADR(tyNtParamCurr.tPullConvPullExtTO);
	p_NtParamPullConvPullRetTO			:= ADR(tyNtParamCurr.tPullConvPullRetTO);
	p_NtParamPullConvRotHomeTO			:= ADR(tyNtParamCurr.tPullConvRotHomeTO);
	p_NtParamPullConvRotRemoteTO		:= ADR(tyNtParamCurr.tPullConvRotRemoteTO);
	
	p_NtParamMagConv1ProgNm				:= ADR(tyNtParamCurr.sMagConv1ProgNm);
	p_NtParamMagConv1OnDirMod			:= ADR(tyNtParamCurr.bMagConv1OnDirMod);
	p_NtParamMagConv1MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv1MtrOffDlyTm);
	p_NtParamMagConv1ClprClampTO		:= ADR(tyNtParamCurr.tMagConv1ClprClampTO);
	p_NtParamMagConv1ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv1ClprUnclampTO);
	
	p_NtParamMagConv2ProgNm				:= ADR(tyNtParamCurr.sMagConv2ProgNm);
	p_NtParamMagConv2OnDirMod			:= ADR(tyNtParamCurr.bMagConv2OnDirMod);
	p_NtParamMagConv2MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv2MtrOffDlyTm);
	p_NtParamMagConv2ClprClampTO		:= ADR(tyNtParamCurr.tMagConv2ClprClampTO);
	p_NtParamMagConv2ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv2ClprUnclampTO);
	
	p_NtParamMagConv3ProgNm				:= ADR(tyNtParamCurr.sMagConv3ProgNm);
	p_NtParamMagConv3OnDirMod			:= ADR(tyNtParamCurr.bMagConv3OnDirMod);
	p_NtParamMagConv3MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv3MtrOffDlyTm);
	p_NtParamMagConv3ClprClampTO		:= ADR(tyNtParamCurr.tMagConv3ClprClampTO);
	p_NtParamMagConv3ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv3ClprUnclampTO);
	
	p_NtParamMagConv4ProgNm				:= ADR(tyNtParamCurr.sMagConv4ProgNm);
	p_NtParamMagConv4OnDirMod			:= ADR(tyNtParamCurr.bMagConv4OnDirMod);
	p_NtParamMagConv4MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv4MtrOffDlyTm);
	p_NtParamMagConv4ClprClampTO		:= ADR(tyNtParamCurr.tMagConv4ClprClampTO);
	p_NtParamMagConv4ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv4ClprUnclampTO);
		
	p_NtParamMtrPshrProgNm				:= ADR(tyNtParamCurr.sMtrPshrProgNm);
	p_NtParamMtrPshrDir					:= ADR(tyNtParamCurr.bMtrPshrDir);
	p_NtParamMtrPshrAlmRstTm			:= ADR(tyNtParamCurr.tMtrPshrAlmRstTm);
	p_NtParamMtrPshrAlmTrigTm			:= ADR(tyNtParamCurr.tMtrPshrAlmTrigTm);
	p_NtParamMtrPshrExtTO				:= ADR(tyNtParamCurr.tMtrPshrExtTO);
	p_NtParamMtrPshrRetTO				:= ADR(tyNtParamCurr.tMtrPshrRetTO);
	p_NtParamMtrPshrExtSlowSpd			:= ADR(tyNtParamCurr.diMtrPshrExtSlowSpd);
	p_NtParamMtrPshrRetSlowSpd			:= ADR(tyNtParamCurr.diMtrPshrRetSlowSpd);
	p_NtParamMtrPshrExtNomSpd			:= ADR(tyNtParamCurr.diMtrPshrExtNomSpd);
	p_NtParamMtrPshrExtTorq				:= ADR(tyNtParamCurr.diMtrPshrExtTorq);
	p_NtParamMtrPshrRetTorq				:= ADR(tyNtParamCurr.diMtrPshrRetTorq);
	p_NtParamMtrPshrStartTorq			:= ADR(tyNtParamCurr.diMtrPshrStartTorq);
	
	p_NtParamAWPushPulProgNm			:= ADR(tyNtParamCurr.sAWPushPullProgNm);
	p_NtParamAWPushPulDevice			:= ADR(tyNtParamCurr.sAWPushPullDevice);
	p_NtParamAWPushPulNode				:= ADR(tyNtParamCurr.usiAWPushPullNode);
	p_NtParamAWPushPulDir				:= ADR(tyNtParamCurr.bAWPushPullDir);
	p_NtParamAWPushPulDirBl				:= ADR(tyNtParamCurr.bAWPushPullDirBl);
	p_NtParamAWPushPulPitchInUM			:= ADR(tyNtParamCurr.diAWPushPullPitchInUM);
	p_NtParamAWPushPulMovBlDistInUM		:= ADR(tyNtParamCurr.diAWPushPullMovBlDistInUM);
	p_NtParamAWPushPulParamInHm			:= ADR(tyNtParamCurr.tyAWPushPullParamInHm);
	p_NtParamAWPushPulParamInConvert	:= ADR(tyNtParamCurr.tyAWPushPullParamInConvert);
	p_NtParamAWPushPulParam				:= ADR(tyNtParamCurr.tyAWPushPullParam);
	p_NtParamAWPushPulAcc				:= ADR(tyNtParamCurr.tyAWPushPullParam.diAccInMS);
	p_NtParamAWPushPulDec				:= ADR(tyNtParamCurr.tyAWPushPullParam.diDecInMS);
	p_NtParamAWPushPulAutoSpd			:= ADR(tyNtParamCurr.tyAWPushPullParam.diAutoSpdInUMPS);
	p_NtParamAWPushPulTuning			:= ADR(tyNtParamCurr.tyAWPushPullTuning);
	p_NtParamAWPushPulMotorType			:= ADR(tyNtParamCurr.eAWPushPullServoMotorType);
	
	p_NtParamAWProgNm					:= ADR(tyNtParamCurr.sAWProgNm);
	p_NtParamAWDevice					:= ADR(tyNtParamCurr.sAWDevice);
	p_NtParamAWNode						:= ADR(tyNtParamCurr.usiAWNode);
	p_NtParamAWDir						:= ADR(tyNtParamCurr.bAWDir);
	p_NtParamAWDirBl					:= ADR(tyNtParamCurr.bAWDirBl);
	p_NtParamAWPitchInUM				:= ADR(tyNtParamCurr.diAWPitchInUM);
	p_NtParamAWMovBlDistInUM			:= ADR(tyNtParamCurr.diAWMovBlDistInUM);
	p_NtParamAWParamInHm				:= ADR(tyNtParamCurr.tyAWParamInHm);
	p_NtParamAWParamInConvert			:= ADR(tyNtParamCurr.tyAWParamInConvert);
	p_NtParamAWParam					:= ADR(tyNtParamCurr.tyAWParam);
	p_NtParamAWAcc						:= ADR(tyNtParamCurr.tyAWParam.diAccInMS);
	p_NtParamAWDec						:= ADR(tyNtParamCurr.tyAWParam.diDecInMS);
	p_NtParamAWAutoSpd					:= ADR(tyNtParamCurr.tyAWParam.diAutoSpdInUMPS);
	p_NtParamAWTuning					:= ADR(tyNtParamCurr.tyAWTuning);
	p_NtParamAWMotorType				:= ADR(tyNtParamCurr.eAWServoMotorType);
	
	p_NtParamTravProgNm					:= ADR(tyNtParamCurr.sTravProgNm);
	p_NtParamTravDevice					:= ADR(tyNtParamCurr.sTravDevice);
	p_NtParamTravNode					:= ADR(tyNtParamCurr.usiTravNode);
	p_NtParamTravDir					:= ADR(tyNtParamCurr.bTravDir);
	p_NtParamTravParamInHm				:= ADR(tyNtParamCurr.tyTravParamInHm);
	p_NtParamTravParamInConvert			:= ADR(tyNtParamCurr.tyTravParamInConvert);
	p_NtParamTravParam					:= ADR(tyNtParamCurr.tyTravParam);
	p_NtParamTravAcc					:= ADR(tyNtParamCurr.tyTravParam.diAccInMS);
	p_NtParamTravDec					:= ADR(tyNtParamCurr.tyTravParam.diDecInMS);
	p_NtParamTravAutoSpd				:= ADR(tyNtParamCurr.tyTravParam.diAutoSpdInUMPS);
	p_NtParamTravTuning					:= ADR(tyNtParamCurr.tyTravTuning);
	p_NtParamTravLongBrdAutoSpd			:= ADR(tyNtParamCurr.diTravAutoSpdLongBrdInUMPS);
	p_NtParamTravMotorType				:= ADR(tyNtParamCurr.eTravServoMotorType);
	
	p_NtParamLifterProgNm				:= ADR(tyNtParamCurr.sLifterProgNm);
	p_NtParamLifterDevice				:= ADR(tyNtParamCurr.sLifterDevice);
	p_NtParamLifterNode					:= ADR(tyNtParamCurr.usiLifterNode);
	p_NtParamLifterDir					:= ADR(tyNtParamCurr.bLifterDir);
	p_NtParamLifterParamInHm			:= ADR(tyNtParamCurr.tyLifterParamInHm);
	p_NtParamLifterParamInConvert		:= ADR(tyNtParamCurr.tyLifterParamInConvert);
	p_NtParamLifterParam				:= ADR(tyNtParamCurr.tyLifterParam);
	p_NtParamLifterAcc					:= ADR(tyNtParamCurr.tyLifterParam.diAccInMS);
	p_NtParamLifterDec					:= ADR(tyNtParamCurr.tyLifterParam.diDecInMS);
	p_NtParamLifterAutoSpd				:= ADR(tyNtParamCurr.tyLifterParam.diAutoSpdInUMPS);
	p_NtParamLifterTuning				:= ADR(tyNtParamCurr.tyLifterTuning);
	p_NtParamLifterMotorType			:= ADR(tyNtParamCurr.eLifterServoMotorType);
	
	p_NtParamDIProgNm					:= ADR(tyNtParamCurr.sDIProgNm);
	
	p_NtParamAIVSvrProgNm				:= ADR(tyNtParamCurr.sAGVSvrProgNm);
	
	p_NtParamAGVMag1ProgNm				:= ADR(tyNtParamCurr.sAGVMag1ProgNm);
	p_NtParamAGVMag2ProgNm				:= ADR(tyNtParamCurr.sAGVMag2ProgNm);
	p_NtParamAGVMag3ProgNm				:= ADR(tyNtParamCurr.sAGVMag3ProgNm);
	p_NtParamAGVMag4ProgNm				:= ADR(tyNtParamCurr.sAGVMag4ProgNm);
	
	p_NtParamHermesProgNm				:= ADR(tyNtParamCurr.sHermesProgNm);
	p_NtParamHermesRetainFileNm			:= ADR(tyNtParamCurr.sHermesRetainFileNm);
	p_NtParamHermesConfigFileNm			:= ADR(tyNtParamCurr.sHermesConfigFileNm);
	
	p_NtParamDSHermesAProgNm			:= ADR(tyNtParamCurr.sDSHermesAProgNm);
	p_NtParamDSHermesAFileKeepDay		:= ADR(tyNtParamCurr.udiDSHermesAFileKeepDay);
	p_NtParamDSHermesAAliveTmInSec		:= ADR(tyNtParamCurr.udiDSHermesAAliveTmInSec);
	p_NtParamDSHermesAConnTO			:= ADR(tyNtParamCurr.tDSHermesAConnTO);
	
	p_NtParamDSHermesBProgNm			:= ADR(tyNtParamCurr.sDSHermesBProgNm);
	p_NtParamDSHermesBFileKeepDay		:= ADR(tyNtParamCurr.udiDSHermesBFileKeepDay);
	p_NtParamDSHermesBAliveTmInSec		:= ADR(tyNtParamCurr.udiDSHermesBAliveTmInSec);
	p_NtParamDSHermesBConnTO			:= ADR(tyNtParamCurr.tDSHermesBConnTO);
	
	p_NtParamRmtHermesProgNm			:= ADR(tyNtParamCurr.sRmtHermesProgNm);
	p_NtParamRmtHermesConfigFileNm		:= ADR(tyNtParamCurr.sRmtHermesConfigFileNm);
	p_NtParamRmtHermesFileKeepDay		:= ADR(tyNtParamCurr.udiRmtHermesFileKeepDay);
	p_NtParamRmtHermesAliveTmInSec		:= ADR(tyNtParamCurr.udiRmtHermesAliveTmInSec);
	p_NtParamRmtHermesSndBffrSize		:= ADR(tyNtParamCurr.udiRmtHermesSndBffrSize);
	p_NtParamRmtHermesRcvBffrSize		:= ADR(tyNtParamCurr.udiRmtHermesRcvBffrSize);
	
	p_NtParamLFLeaderProgNm				:= ADR(tyNtParamCurr.sLFLeaderProgNm);
	p_NtParamLFLeaderOnlineChkDlyTm		:= ADR(tyNtParamCurr.tLFLeaderOnlineChkDlyTm);
	p_NtParamLFLeaderSetTmOffDlyTm		:= ADR(tyNtParamCurr.tLFLeaderSetTmOffDlyTm);
	
	p_NtParamLFFollowerProgNm			:= ADR(tyNtParamCurr.sLFFollowerProgNm);
	
	p_NtParamFollower1ProgNm			:= ADR(tyNtParamCurr.sFollower1ProgNm);
	p_NtParamFollower2ProgNm			:= ADR(tyNtParamCurr.sFollower2ProgNm);
	
	p_NtParamLCSProgNm					:= ADR(tyNtParamCurr.sLCSProgNm);
	
	p_NtParamLCSMngRcpProgNm			:= ADR(tyNtParamCurr.sLCSMngRcpProgNm);
	
	p_NtParamLCSLFProgNm				:= ADR(tyNtParamCurr.sLCSLFProgNm);
	
	p_NtParamOpsTravLifLDProgNm			:= ADR(tyNtParamCurr.sOpsTravLifLDProgNm);
	
	p_NtParamOpsMagLD1ProgNm			:= ADR(tyNtParamCurr.sOpsMagLD1ProgNm);
	
	p_NtParamOpsMagLD2ProgNm			:= ADR(tyNtParamCurr.sOpsMagLD2ProgNm);
	
	p_NtParamOpsMagLD3ProgNm			:= ADR(tyNtParamCurr.sOpsMagLD3ProgNm);
	
	p_NtParamOpsMagLD4ProgNm			:= ADR(tyNtParamCurr.sOpsMagLD4ProgNm);
	
	p_NtParamOpsMagConvLD1ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvLD1ProgNm);
	
	p_NtParamOpsMagConvLD2ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvLD2ProgNm);
	
	p_NtParamOpsMagConvLD3ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvLD3ProgNm);
	
	p_NtParamOpsMagConvLD4ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvLD4ProgNm);
	
	p_NtParamOpsLifMagLDProgNm			:= ADR(tyNtParamCurr.sOpsLifMagLDProgNm);
	
	p_NtParamProdRcpMinWidth			:= ADR(tyNtParamCurr.tyProdRcpWidth.diMin);
	p_NtParamProdRcpMaxWidth			:= ADR(tyNtParamCurr.tyProdRcpWidth.diMax);
	p_NtParamProdRcpMinMinSlt			:= ADR(tyNtParamCurr.tyProdRcpMinSlt.diMin);
	p_NtParamProdRcpMaxMinSlt			:= ADR(tyNtParamCurr.tyProdRcpMinSlt.diMax);
	p_NtParamProdRcpMinMaxSlt			:= ADR(tyNtParamCurr.tyProdRcpMaxSlt.diMin);
	p_NtParamProdRcpMaxMaxSlt			:= ADR(tyNtParamCurr.tyProdRcpMaxSlt.diMax);
	p_NtParamProdRcpMinPitch			:= ADR(tyNtParamCurr.tyProdRcpPitch.diMin);
	p_NtParamProdRcpMaxPitch			:= ADR(tyNtParamCurr.tyProdRcpPitch.diMax);
	p_NtParamProdRcpMinMcModA			:= ADR(tyNtParamCurr.tyProdRcpMcModA.diMin);
	p_NtParamProdRcpMaxMcModA			:= ADR(tyNtParamCurr.tyProdRcpMcModA.diMax);
	p_NtParamProdRcpMinMcModAB			:= ADR(tyNtParamCurr.tyProdRcpMcModAB.diMin);
	p_NtParamProdRcpMaxMcModAB			:= ADR(tyNtParamCurr.tyProdRcpMcModAB.diMax);
	
	p_NtParamPullerProgNm				:= ADR(tyNtParamCurr.sPullerProgNm);
	p_NtParamPullerTwoCtrlIn			:= ADR(tyNtParamCurr.bPullerTwoCtrlIn);
	p_NtParamPullerExtTO				:= ADR(tyNtParamCurr.tPullerExtTO);
	p_NtParamPullerRetTO				:= ADR(tyNtParamCurr.tPullerRetTO);
	p_NtParamProjPullerRotCylPrep		:= ADR(tyNtParamCurr.bProjPullerRotCylPrep);
	p_NtParamProjPullerExtMaxSlt		:= ADR(tyNtParamCurr.diProjPullerExtMaxSlt);
	p_NtParamProjPullerExtMinSlt		:= ADR(tyNtParamCurr.diProjPullerExtMinSlt);
	
	p_NtParamSelClamp1ProgNm			:= ADR(tyNtParamCurr.sSelClamp1ProgNm);
	p_NtParamSelClamp1TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp1TwoCtrlIn);
	p_NtParamSelClamp1ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp1ExtDlyTm);
	p_NtParamSelClamp1RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp1RetDlyTm);
	
	p_NtParamSelClamp2ProgNm			:= ADR(tyNtParamCurr.sSelClamp2ProgNm);
	p_NtParamSelClamp2TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp2TwoCtrlIn);
	p_NtParamSelClamp2ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp2ExtDlyTm);
	p_NtParamSelClamp2RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp2RetDlyTm);
	
	p_NtParamSelClamp3ProgNm			:= ADR(tyNtParamCurr.sSelClamp3ProgNm);
	p_NtParamSelClamp3TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp3TwoCtrlIn);
	p_NtParamSelClamp3ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp3ExtDlyTm);
	p_NtParamSelClamp3RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp3RetDlyTm);

	p_NtParamSelClamp4ProgNm			:= ADR(tyNtParamCurr.sSelClamp4ProgNm);
	p_NtParamSelClamp4TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp4TwoCtrlIn);
	p_NtParamSelClamp4ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp4ExtDlyTm);
	p_NtParamSelClamp4RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp4RetDlyTm);
	
	p_NtParamProjDBAOnRgtSen			:= ADR (tyNtParamCurr.bProjDBAOnRgtSen);
	
	p_NtParamLFWidth2Prep				:= ADR(tyNtParamCurr.bLFProdWidth2Prep);
	p_NtParamLFFllowerOnlineChkDlyTm	:= ADR(tyNtParamCurr.tLFFollowerOnlineChkDlyTm);
	
	p_NtParamUSSOT1ProgNm				:= ADR(tyNtParamCurr.sUSSOT1ProgNm);
	p_NtParamUSSOT1RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT1RstDlyTm);
	p_NtParamUSSOT1SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT1SigInChkTm);
	
	p_NtParamUSSOT2ProgNm				:= ADR(tyNtParamCurr.sUSSOT2ProgNm);
	p_NtParamUSSOT2RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT2RstDlyTm);
	p_NtParamUSSOT2SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT2SigInChkTm);
	
	p_NtParamUSSOT3ProgNm				:= ADR(tyNtParamCurr.sUSSOT3ProgNm);
	p_NtParamUSSOT3RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT3RstDlyTm);
	p_NtParamUSSOT3SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT3SigInChkTm);
	
	p_NtParamUSSOT4ProgNm				:= ADR(tyNtParamCurr.sUSSOT4ProgNm);
	p_NtParamUSSOT4RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT4RstDlyTm);
	p_NtParamUSSOT4SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT4SigInChkTm);
	
	p_NtParamDSSOT1ProgNm				:= ADR(tyNtParamCurr.sDSSOT1ProgNm);
	p_NtParamDSSOT1RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT1RstDlyTm);
	p_NtParamDSSOT1SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT1SigInChkTm);
	
	p_NtParamDSSOT2ProgNm				:= ADR(tyNtParamCurr.sDSSOT2ProgNm);
	p_NtParamDSSOT2RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT2RstDlyTm);
	p_NtParamDSSOT2SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT2SigInChkTm);
	
	p_NtParamDSSOT3ProgNm				:= ADR(tyNtParamCurr.sDSSOT3ProgNm);
	p_NtParamDSSOT3RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT3RstDlyTm);
	p_NtParamDSSOT3SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT3SigInChkTm);
	
	p_NtParamDSSOT4ProgNm				:= ADR(tyNtParamCurr.sDSSOT4ProgNm);
	p_NtParamDSSOT4RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT4RstDlyTm);
	p_NtParamDSSOT4SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT4SigInChkTm);
	
	p_NtParamProjSOTSenPrep				:= ADR(tyNtParamCurr.bProjSOTSensorPrep);
	
	p_NtParamMcProgNm					:= ADR(tyNtParamCurr.sMachineProgNm);
	p_NtParamMc1ProgNm					:= ADR(tyNtParamCurr.sMachine1ProgNm);
	
	p_NtParamProjUSBPrep				:= ADR(tyNtParamCurr.bUSBScannerPrep);
	p_NtParamUSBProgNm					:= ADR(tyNtParamCurr.sUSBRdrProgNm);
	
	p_NtParamSOTReadyOnFirst			:= ADR(tyNtParamCurr.bSOTReadyOnFirst);
	
	p_NtParamShowMESName				:= ADR(tyNtParamCurr.bShowMESName);
	p_NtParamShowFMorMESActive			:= ADR(tyNtParamCurr.bShowFMorMESActive);
	
	p_NtParamRS232Prep					:= ADR(tyNtParamCurr.bRS232ScannerPrep);
	p_NtParamRS232ProgNm				:= ADR(tyNtParamCurr.sRS232ProgNm);

	p_NtParamProdRcpMinMtrPshrExtSpd	:= ADR(tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin);
	p_NtParamProdRcpMaxMtrPshrExtSpd	:= ADR(tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax);
	p_NtParamProdRcpMinMtrPshrExtToq	:= ADR(tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin);
	p_NtParamProdRcpMaxMtrPshrExtToq	:= ADR(tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax);
	
	p_NtParamMag1SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag1SafetyBarProgNm);
	p_NtParamMag1SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag1SafetyBarTwoCtrlIn);
	p_NtParamMag1SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag1SafetyBarExtTO);
	p_NtParamMag1SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag1SafetyBarRetTO);
	
	p_NtParamMag2SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag2SafetyBarProgNm);
	p_NtParamMag2SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag2SafetyBarTwoCtrlIn);
	p_NtParamMag2SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag2SafetyBarExtTO);
	p_NtParamMag2SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag2SafetyBarRetTO);
	
	p_NtParamMag3SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag3SafetyBarProgNm);
	p_NtParamMag3SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag3SafetyBarTwoCtrlIn);
	p_NtParamMag3SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag3SafetyBarExtTO);
	p_NtParamMag3SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag3SafetyBarRetTO);
		
	p_NtParamMag4SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag4SafetyBarProgNm);
	p_NtParamMag4SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag4SafetyBarTwoCtrlIn);
	p_NtParamMag4SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag4SafetyBarExtTO);
	p_NtParamMag4SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag4SafetyBarRetTO);
	
	p_NtParamPullerHeightInMM			:= ADR(tyNtParamCurr.diPullerHeightInMM);
	
	p_NtParamProjDsFixToFixRail		:= ADR(tyNtParamCurr.bProjDSFixToFixRail);
	p_NtParamProjWorkOrderOPCUA		:= ADR(tyNtParamCurr.bProjWorkOrderOPCUA);
	
	p_NtParamProjServoPullPusherPrep	:= ADR(tyNtParamCurr.bProjServoPullerPusherPrep);
	p_NtParamPPProgNm					:= ADR(tyNtParamCurr.sPPProgNm);
	p_NtParamPPDevice					:= ADR(tyNtParamCurr.sPPDevice);
	p_NtParamPPNode						:= ADR(tyNtParamCurr.usiPPNode);
	p_NtParamPPDir						:= ADR(tyNtParamCurr.bPPDir);
	p_NtParamPPDirBl					:= ADR(tyNtParamCurr.bPPDirBl);
	p_NtParamPPPitchInUM				:= ADR(tyNtParamCurr.diPPPitchInUM);
	p_NtParamPPMovBlDistInUM			:= ADR(tyNtParamCurr.diPPMovBlDistInUM);
	p_NtParamPPParamInHm				:= ADR(tyNtParamCurr.tyPPParamInHm);
	p_NtParamPPParamInConvert			:= ADR(tyNtParamCurr.tyPPParamInConvert);
	p_NtParamPPParam					:= ADR(tyNtParamCurr.tyPPParam);
	p_NtParamPPAcc						:= ADR(tyNtParamCurr.tyPPParam.diAccInMS);
	p_NtParamPPDec						:= ADR(tyNtParamCurr.tyPPParam.diDecInMS);
	p_NtParamPPAutoSpd					:= ADR(tyNtParamCurr.tyPPParam.diAutoSpdInUMPS);
	p_NtParamPPTuning					:= ADR(tyNtParamCurr.tyPPTuning);
	p_NtParamPPMotorType				:= ADR(tyNtParamCurr.ePPServoMotorType);
	
	p_NtParamProjCurtainSenPrep			:= ADR(tyNtParamCurr.bProjCurtainSenPrep);
	p_NtParamProjMagHeightChkPrep		:= ADR(tyNtParamCurr.bProjMagHeightChkPrep);
	p_NtParamTravGotoMagWidthChkPt1		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt1);
	p_NtParamTravGotoMagWidthChkPt2		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt2);
	p_NtParamTravGotoMagWidthChkPt3		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt3);
	
	p_NtParamPPTorqParam				:= ADR(tyNtParamCurr.tyPPTorqParam);
	p_NtParamProjLifTravMnlLoad			:= ADR(tyNtParamCurr.bProjLifTravMnlLoad);
	p_NtParamCustomerReq				:= ADR(tyNtParamCurr.eCustomerReq);
	p_NtParamProjShutter2Prep			:= ADR(tyNtParamCurr.bProjShutter2Prep);
	p_NtParamProjShutter3Prep			:= ADR(tyNtParamCurr.bProjShutter3Prep);

	//new for Hermes 1.3
	p_NtParamHermesSvyPrep			:= ADR(tyNtParamCurr.bHermesSvyPrep);
	p_NtParamHermesSvyFirstMc		:= ADR(tyNtParamCurr.bHermesSvyFirstMcInTheLine);//First Machine in the line, set for Loader / Destacker
	p_NtParamHermesSvyMagTypeMc		:= ADR(tyNtParamCurr.bHermesSvyMagTypeMc);//Magazine type Machine
	p_NtParamSvyHermesProgNm		:= ADR(tyNtParamCurr.sSvyHermesProgNm);
	p_NtParamSvyHermesConfigFileNm	:= ADR(tyNtParamCurr.sSvyHermesConfigFileNm);
	p_NtParamSvyHermesFileKeepDay	:= ADR(tyNtParamCurr.udiSvyHermesFileKeepDay);
	p_NtParamSvyHermesAliveTmInSec	:= ADR(tyNtParamCurr.udiSvyHermesAliveTmInSec);
	p_NtParamSvyHermesConnTO		:= ADR(tyNtParamCurr.tSvyHermesConnTO);
	p_NtParamSvyHermesRetainFileNm	:= ADR(tyNtParamCurr.sSvyHermesRetainFileNm);
	p_NtParamDSHermesRetainFileNm	:= ADR(tyNtParamCurr.sDSHermesRetainFileNm); //50 Board Data retain file name
	p_NtParamDSHermesMcCycleTm	    := ADR(tyNtParamCurr.rMachineCycleTime); //Machine Board Transfer Cycle Time
	p_NtParamDSHermesAWCycleTm	    := ADR(tyNtParamCurr.rAutoWidthCycleTime); //Machine Autowidth Cycle Time
	p_NtParamHermesScannerPrep    	:= ADR(tyNtParamCurr.bHermesScannerPrep);
	p_NtParamHermesInput            := ADR(tyNtParamCurr.iInput);//Total Input = How many inlet
	p_NtParamHermesOutput           := ADR(tyNtParamCurr.iOutput);//Total Outlet  = How many outlet
	
	p_NtParamAutoRcpPrep			:= ADR(tyNtParamCurr.bProjAutoRcpPrep);
	p_NtParamAutoRcpParamLmt		:= ADR(tyNtParamCurr.tyAutoRcpParamLmt);
	p_NtParamAutoRcpPrecededBy		:= ADR(tyNtParamCurr.eAutoRcpPrecededBy);

	//Add
	p_NtParmProjChinesePrep				:= ADR(tyNtParamCurr.bchineseprep);
	p_NtParmProjGermanPrep				:= ADR(tyNtParamCurr.bgermanprep);
	
	p_NtParamProjOutShutter2Prep	:= ADR(tyNtParamCurr.bProjOutShutter2Prep);
	p_NtParamProjCntrPullLmt		:= ADR(tyNtParamCurr.siProjCntrPullLmt);   //pull brd limit 
	p_NtParamTrolleyLckPrep			:= ADR(tyNtParamCurr.bProjTrolleyLckPrep);
	p_NtParamTrolleyLckProgNm		:= ADR(tyNtParamCurr.sTrolleyLckProgNm);
	p_NtParamTrolleyLckTwoCtrlIn	:= ADR(tyNtParamCurr.bTrolleyLckTwoCtrlIn);
	p_NtParamTrolleyLckExtTO		:= ADR(tyNtParamCurr.tTrolleyLckExtTO);
	p_NtParamTrolleyLckRetTO		:= ADR(tyNtParamCurr.tTrolleyLckRetTO);
		
	p_NtParamTrolleyLckProgNm2		:= ADR(tyNtParamCurr.sTrolleyLckProgNm2);
	p_NtParamTrolleyLckTwoCtrlIn2	:= ADR(tyNtParamCurr.bTrolleyLckTwoCtrlIn2);
	p_NtParamTrolleyLckExtTO2		:= ADR(tyNtParamCurr.tTrolleyLckExtTO2);
	p_NtParamTrolleyLckRetTO2		:= ADR(tyNtParamCurr.tTrolleyLckRetTO2);

	(* Always Change If Project Change *)
	
END_PROGRAM