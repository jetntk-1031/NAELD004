(** 2019-01-21 **)
ACTION Act_Background:
	
	//Digital Input Mapping With Physical Input
	IF p_tyDISettings.diSafetyRlySig > 0 AND p_tyDISettings.diSafetyRlySig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bSafetyRlySig	:= a_bPhysicalDI[p_tyDISettings.diSafetyRlySig];
	ELSE
		tyDInput.bSafetyRlySig	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diEStopSig > 0 AND p_tyDISettings.diEStopSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bEStopSig	:= a_bPhysicalDI[p_tyDISettings.diEStopSig];
	ELSE
		tyDInput.bEStopSig	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diCoverSWSig > 0 AND p_tyDISettings.diCoverSWSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCoverSWSig	:= a_bPhysicalDI[p_tyDISettings.diCoverSWSig];
	ELSE
		tyDInput.bCoverSWSig	:= TRUE;
	END_IF
	
	IF bSelfTest = FALSE THEN
		IF p_tyDISettings.diDSBA > 0 AND p_tyDISettings.diDSBA <= UDINT_TO_DINT(p_udiMax) THEN
			tyDInput.bDSBA	:= a_bPhysicalDI[p_tyDISettings.diDSBA];
		ELSE
			tyDInput.bDSBA	:= FALSE;
		END_IF
	ELSE
		tyDInput.bDSBA	:= p_bPullConvHvBrd;
	END_IF
	
	IF p_tyDISettings.diDSBB > 0 AND p_tyDISettings.diDSBB <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bDSBB	:= a_bPhysicalDI[p_tyDISettings.diDSBB];
	ELSE
		tyDInput.bDSBB	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diPullerExtRS > 0 AND p_tyDISettings.diPullerExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerExtRS	:= a_bPhysicalDI[p_tyDISettings.diPullerExtRS];
	ELSE
		tyDInput.bPullerExtRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diPullerRetRS > 0 AND p_tyDISettings.diPullerRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerRetRS	:= a_bPhysicalDI[p_tyDISettings.diPullerRetRS];
	ELSE
		tyDInput.bPullerRetRS	:= TRUE;
	END_IF
		
	IF p_tyDISettings.diPullerRotHmRS > 0 AND p_tyDISettings.diPullerRotHmRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerRotHmRS	:= a_bPhysicalDI[p_tyDISettings.diPullerRotHmRS];
	ELSE
		tyDInput.bPullerRotHmRS	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diPullerRotRmRS > 0 AND p_tyDISettings.diPullerRotRmRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerRotRmRS	:= a_bPhysicalDI[p_tyDISettings.diPullerRotRmRS];
	ELSE
		tyDInput.bPullerRotRmRS	:= FALSE;
	END_IF
	
	IF bSelfTest = FALSE THEN
		IF p_tyDISettings.diConvLftSen > 0 AND p_tyDISettings.diConvLftSen <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbConvLftSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvLftSenOnTm);
			fbConvLftSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvLftSenOffTm);
			fbConvLftSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvLftSen]);
		
			tyDInput.bConvLftSen	:= fbConvLftSigFltr.bSigOut;
		ELSE
			tyDInput.bConvLftSen	:= FALSE;
		END_IF
	ELSE
//		fbConvLftSenTm(IN:= p_bPullConvHvBrd);
//		IF EDGEPOS(p_bPullConvHvBrd) THEN
//			tyDInput.bConvLftSen	:= TRUE;
//		ELSIF fbConvLftSenTm.Q THEN
//			tyDInput.bConvLftSen	:= FALSE;
//		END_IF
	END_IF
	
	IF bSelfTest = FALSE THEN
		IF p_tyDISettings.diConvRgtSen > 0 AND p_tyDISettings.diConvRgtSen <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbConvRgtSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvRgtSenOnTm);
			fbConvRgtSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvRgtSenOffTm);
			fbConvRgtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvRgtSen]);
			tyDInput.bConvRgtSen	:= fbConvRgtSigFltr.bSigOut;
		ELSE
			tyDInput.bConvRgtSen	:= FALSE;
		END_IF
	ELSE
		tyDInput.bConvRgtSen	:= p_bPullConvHvBrd;
	END_IF
		
		
	IF p_tyDISettings.diLifterTimingBeltSen > 0 AND p_tyDISettings.diLifterTimingBeltSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterTimingBeltSen	:= a_bPhysicalDI[p_tyDISettings.diLifterTimingBeltSen];
	ELSE
		tyDInput.bLifterTimingBeltSen	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diLifterSafetyLmtSW1 > 0 AND p_tyDISettings.diLifterSafetyLmtSW1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterSafetyLmtSW1	:= a_bPhysicalDI[p_tyDISettings.diLifterSafetyLmtSW1];
	ELSE
		tyDInput.bLifterSafetyLmtSW1	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diLifterSafetyLmtSW2 > 0 AND p_tyDISettings.diLifterSafetyLmtSW2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterSafetyLmtSW2	:= a_bPhysicalDI[p_tyDISettings.diLifterSafetyLmtSW2];
	ELSE
		tyDInput.bLifterSafetyLmtSW2	:= TRUE;
	END_IF
	
	//Magazine 1 Fixed Clamper RSs
	IF p_tyDISettings.diMag1FixedClampRS > 0 AND p_tyDISettings.diMag1FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedClampRS];
	ELSE
		tyDInput.bMag1FixedClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag1FixedUnclampRS > 0 AND p_tyDISettings.diMag1FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedUnclampRS];
	ELSE
		tyDInput.bMag1FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Remote Clamper RSs
	IF p_tyDISettings.diMag1RemoteClampRS > 0 AND p_tyDISettings.diMag1RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1RemoteClampRS];
	ELSE
		tyDInput.bMag1RemoteClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag1RemoteUnclampRS > 0 AND p_tyDISettings.diMag1RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1RemoteUnclampRS];
	ELSE
		tyDInput.bMag1RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Sel Clamper RSs
	IF p_tyDISettings.diMag1SelUnClampRS > 0 AND p_tyDISettings.diMag1SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SelUnClampRS];
	ELSE
		tyDInput.bMag1SelUnClampRS	:= FALSE;
	END_IF	
	
	//Magazine 2 Fixed Clamper RSs
	IF p_tyDISettings.diMag2FixedClampRS > 0 AND p_tyDISettings.diMag2FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedClampRS];
	ELSE
		tyDInput.bMag2FixedClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag2FixedUnclampRS > 0 AND p_tyDISettings.diMag2FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedUnclampRS];
	ELSE
		tyDInput.bMag2FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 2 Remote Clamper RSs
	IF p_tyDISettings.diMag2RemoteClampRS > 0 AND p_tyDISettings.diMag2RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2RemoteClampRS];
	ELSE
		tyDInput.bMag2RemoteClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag2RemoteUnclampRS > 0 AND p_tyDISettings.diMag2RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2RemoteUnclampRS];
	ELSE
		tyDInput.bMag2RemoteUnclampRS	:= TRUE;
	END_IF

	//Magazine 2 Sel Clamper RSs
	IF p_tyDISettings.diMag2SelUnClampRS > 0 AND p_tyDISettings.diMag2SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SelUnClampRS];
	ELSE
		tyDInput.bMag2SelUnClampRS	:= FALSE;
	END_IF
	
	//Magazine 3 Fixed Clamper RSs
	IF p_tyDISettings.diMag3FixedClampRS > 0 AND p_tyDISettings.diMag3FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedClampRS];
	ELSE
		tyDInput.bMag3FixedClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag3FixedUnclampRS > 0 AND p_tyDISettings.diMag3FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedUnclampRS];
	ELSE
		tyDInput.bMag3FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Remote Clamper RSs
	IF p_tyDISettings.diMag3RemoteClampRS > 0 AND p_tyDISettings.diMag3RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3RemoteClampRS];
	ELSE
		tyDInput.bMag3RemoteClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag3RemoteUnclampRS > 0 AND p_tyDISettings.diMag3RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3RemoteUnclampRS];
	ELSE
		tyDInput.bMag3RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Sel Clamper RSs
	IF p_tyDISettings.diMag3SelUnClampRS > 0 AND p_tyDISettings.diMag3SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SelUnClampRS];
	ELSE
		tyDInput.bMag3SelUnClampRS	:= FALSE;
	END_IF
	
	//Magazine 4 Fixed Clamper RSs
	IF p_tyDISettings.diMag4FixedClampRS > 0 AND p_tyDISettings.diMag4FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag4FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag4FixedClampRS];
	ELSE
		tyDInput.bMag4FixedClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag4FixedUnclampRS > 0 AND p_tyDISettings.diMag4FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag4FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag4FixedUnclampRS];
	ELSE
		tyDInput.bMag4FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 4 Remote Clamper RSs
	IF p_tyDISettings.diMag4RemoteClampRS > 0 AND p_tyDISettings.diMag4RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag4RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag4RemoteClampRS];
	ELSE
		tyDInput.bMag4RemoteClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag4RemoteUnclampRS > 0 AND p_tyDISettings.diMag4RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag4RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag4RemoteUnclampRS];
	ELSE
		tyDInput.bMag4RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 4 Sel Clamper RSs
	IF p_tyDISettings.diMag4SelUnClampRS > 0 AND p_tyDISettings.diMag4SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag4SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag4SelUnClampRS];
	ELSE
		tyDInput.bMag4SelUnClampRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterOpenRS > 0 AND p_tyDISettings.diInShutterOpenRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterOpenRS	:= a_bPhysicalDI[p_tyDISettings.diInShutterOpenRS];
	ELSE
		tyDInput.bInShutterOpenRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterCloseRS > 0 AND p_tyDISettings.diInShutterCloseRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterCloseRS	:= a_bPhysicalDI[p_tyDISettings.diInShutterCloseRS];
	ELSE
		tyDInput.bInShutterCloseRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterOpenRS > 0 AND p_tyDISettings.diOutShutterOpenRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterOpenRS	:= a_bPhysicalDI[p_tyDISettings.diOutShutterOpenRS];
	ELSE
		tyDInput.bOutShutterOpenRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterCloseRS > 0 AND p_tyDISettings.diOutShutterCloseRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterCloseRS	:= a_bPhysicalDI[p_tyDISettings.diOutShutterCloseRS];
	ELSE
		tyDInput.bOutShutterCloseRS	:= FALSE;
	END_IF
	
	IF bSelfTest = FALSE THEN
		IF p_tyDISettings.diMagPresentSen1 > 0 AND p_tyDISettings.diMagPresentSen1 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv1PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv1PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv1PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen1]);
			tyDInput.bMagPresentSen1	:= fbMagConv1PresentSigFltr.bSigOut;
		//	tyDInput.bMagPresentSen1	:= a_bPhysicalDI[p_tyDISettings.diMagPresentSen1];
		ELSE
			tyDInput.bMagPresentSen1	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagPresentSen2 > 0 AND p_tyDISettings.diMagPresentSen2 <= UDINT_TO_DINT(p_udiMax) THEN
			fbMagConv2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv2PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen2]);
			tyDInput.bMagPresentSen2	:= fbMagConv2PresentSigFltr.bSigOut;
			//	tyDInput.bMagPresentSen2	:= a_bPhysicalDI[p_tyDISettings.diMagPresentSen2];
		ELSE
			tyDInput.bMagPresentSen2	:= FALSE;
		END_IF
	
		IF p_tyDISettings.diMagPresentSen3 > 0 AND p_tyDISettings.diMagPresentSen3 <= UDINT_TO_DINT(p_udiMax) THEN
			fbMagConv3PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv3PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv3PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen3]);
			tyDInput.bMagPresentSen3	:= fbMagConv3PresentSigFltr.bSigOut;
			//	tyDInput.bMagPresentSen3	:= a_bPhysicalDI[p_tyDISettings.diMagPresentSen3];
		ELSE
			tyDInput.bMagPresentSen3	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagPresentSen4 > 0 AND p_tyDISettings.diMagPresentSen4 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv4PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv4PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv4PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen4]);
			tyDInput.bMagPresentSen4	:= fbMagConv4PresentSigFltr.bSigOut;
			//	tyDInput.bMagPresentSen4	:= a_bPhysicalDI[p_tyDISettings.diMagPresentSen4];
		ELSE
			tyDInput.bMagPresentSen4	:= FALSE;
		END_IF
	
		IF p_tyDISettings.diMagConvEntSen1 > 0 AND p_tyDISettings.diMagConvEntSen1 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv1EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv1EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv1EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen1]);
			tyDInput.bMagConvEntSen1	:= fbMagConv1EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen1	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagConvEntSen2 > 0 AND p_tyDISettings.diMagConvEntSen2 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv2EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv2EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv2EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen2]);
			tyDInput.bMagConvEntSen2	:= fbMagConv2EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen2	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagConvEntSen3 > 0 AND p_tyDISettings.diMagConvEntSen3 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv3EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv3EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv3EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen3]);
			tyDInput.bMagConvEntSen3	:= fbMagConv3EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen3	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagConvEntSen4 > 0 AND p_tyDISettings.diMagConvEntSen4 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv4EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv4EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv4EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen4]);
			tyDInput.bMagConvEntSen4	:= fbMagConv4EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen4	:= FALSE;
		END_IF
		
	ELSE
		
		CASE p_eLDMag OF
			LDMagDual: 
			
				fbSelfTestTm1(IN:= p_tyDO.bMag1ConvMtrIn = FALSE  AND p_tyDO.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					tyDInput.bMagPresentSen1 := TRUE;
				ELSIF p_tyDO.bMag1ConvMtrOut THEN
					tyDInput.bMagPresentSen1 := FALSE;
					tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF tyDInput.bMagConvEntSen1 THEN
					tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= p_tyDO.bMag2ConvMtrIn = FALSE  AND p_tyDO.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					tyDInput.bMagPresentSen2 := TRUE;
				ELSIF p_tyDO.bMag2ConvMtrOut THEN
					tyDInput.bMagPresentSen2 := FALSE;
					tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF tyDInput.bMagConvEntSen2 THEN
					tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
			LDMagTriple:
				
				fbSelfTestTm1(IN:= p_tyDO.bMag1ConvMtrIn = FALSE  AND p_tyDO.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					tyDInput.bMagPresentSen1 := TRUE;
				ELSIF p_tyDO.bMag1ConvMtrOut THEN
					tyDInput.bMagPresentSen1 := FALSE;
					tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF tyDInput.bMagConvEntSen1 THEN
					tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= p_tyDO.bMag2ConvMtrIn = FALSE  AND p_tyDO.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					tyDInput.bMagPresentSen2 := TRUE;
				ELSIF p_tyDO.bMag2ConvMtrOut THEN
					tyDInput.bMagPresentSen2 := FALSE;
					tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF tyDInput.bMagConvEntSen2 THEN
					tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
				fbSelfTestTm3(IN:= p_tyDO.bMag3ConvMtrIn = FALSE  AND p_tyDO.bMag3ConvMtrOut = FALSE);
				IF fbSelfTestTm3.Q THEN
					tyDInput.bMagPresentSen3 := TRUE;
				ELSIF p_tyDO.bMag3ConvMtrOut THEN
					tyDInput.bMagPresentSen3 := FALSE;
					tyDInput.bMagConvEntSen3 := TRUE;
				ELSIF tyDInput.bMagConvEntSen3 THEN
					tyDInput.bMagConvEntSen3 := FALSE;
				END_IF
		
			LDMagQuadruple:	
				
				fbSelfTestTm1(IN:= p_tyDO.bMag1ConvMtrIn = FALSE  AND p_tyDO.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					tyDInput.bMagPresentSen1 := TRUE;
				ELSIF p_tyDO.bMag1ConvMtrOut THEN
					tyDInput.bMagPresentSen1 := FALSE;
					tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF tyDInput.bMagConvEntSen1 THEN
					tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= p_tyDO.bMag2ConvMtrIn = FALSE  AND p_tyDO.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					tyDInput.bMagPresentSen2 := TRUE;
				ELSIF p_tyDO.bMag2ConvMtrOut THEN
					tyDInput.bMagPresentSen2 := FALSE;
					tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF tyDInput.bMagConvEntSen2 THEN
					tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
				fbSelfTestTm3(IN:= p_tyDO.bMag3ConvMtrIn = FALSE  AND p_tyDO.bMag3ConvMtrOut = FALSE);
				IF fbSelfTestTm3.Q THEN
					tyDInput.bMagPresentSen3 := TRUE;
				ELSIF p_tyDO.bMag3ConvMtrOut THEN
					tyDInput.bMagPresentSen3 := FALSE;
					tyDInput.bMagConvEntSen3 := TRUE;
				ELSIF tyDInput.bMagConvEntSen3 THEN
					tyDInput.bMagConvEntSen3 := FALSE;
				END_IF
				
				fbSelfTestTm4(IN:= p_tyDO.bMag4ConvMtrIn = FALSE  AND p_tyDO.bMag4ConvMtrOut = FALSE);
				IF fbSelfTestTm4.Q THEN
					tyDInput.bMagPresentSen4 := TRUE;
				ELSIF p_tyDO.bMag4ConvMtrOut THEN
					tyDInput.bMagPresentSen4 := FALSE;
					tyDInput.bMagConvEntSen4 := TRUE;
				ELSIF tyDInput.bMagConvEntSen4 THEN
					tyDInput.bMagConvEntSen4 := FALSE;
				END_IF		
		END_CASE	
	END_IF
	
	IF p_tyDISettings.diMag1AGVInPosSen1 > 0 AND p_tyDISettings.diMag1AGVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1AGVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag1AGVInPosSen1];
	ELSE
		tyDInput.bMag1AGVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1AGVInPosSen2 > 0 AND p_tyDISettings.diMag1AGVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1AGVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag1AGVInPosSen2];
	ELSE
		tyDInput.bMag1AGVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2AGVInPosSen1 > 0 AND p_tyDISettings.diMag2AGVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2AGVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag2AGVInPosSen1];
	ELSE
		tyDInput.bMag2AGVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2AGVInPosSen2 > 0 AND p_tyDISettings.diMag2AGVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2AGVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag2AGVInPosSen2];
	ELSE
		tyDInput.bMag2AGVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3AGVInPosSen1 > 0 AND p_tyDISettings.diMag3AGVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3AGVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag3AGVInPosSen1];
	ELSE
		tyDInput.bMag3AGVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3AGVInPosSen2 > 0 AND p_tyDISettings.diMag3AGVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3AGVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag3AGVInPosSen2];
	ELSE
		tyDInput.bMag3AGVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1OrientChkSen1 > 0 AND p_tyDISettings.diMag1OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag1OrientChkSen1];
	ELSE
		tyDInput.bMag1OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1OrientChkSen2 > 0 AND p_tyDISettings.diMag1OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag1OrientChkSen2];
	ELSE
		tyDInput.bMag1OrientChkSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2OrientChkSen1 > 0 AND p_tyDISettings.diMag2OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag2OrientChkSen1];
	ELSE
		tyDInput.bMag2OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2OrientChkSen2 > 0 AND p_tyDISettings.diMag2OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag2OrientChkSen2];
	ELSE
		tyDInput.bMag2OrientChkSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3OrientChkSen1 > 0 AND p_tyDISettings.diMag3OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag3OrientChkSen1];
	ELSE
		tyDInput.bMag3OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3OrientChkSen2 > 0 AND p_tyDISettings.diMag3OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag3OrientChkSen2];
	ELSE
		tyDInput.bMag3OrientChkSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diDSWidthChkSen > 0 AND p_tyDISettings.diDSWidthChkSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bDSWidthChkSen	:= a_bPhysicalDI[p_tyDISettings.diDSWidthChkSen];
	ELSE
		tyDInput.bDSWidthChkSen	:= FALSE;
	END_IF
	
	//Magazine 1 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen1 > 0 AND p_tyDISettings.diMagConvHeightSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen1];
	ELSE
		tyDInput.bMagConvHeightSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen2 > 0 AND p_tyDISettings.diMagConvHeightSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen2];
	ELSE
		tyDInput.bMagConvHeightSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen3 > 0 AND p_tyDISettings.diMagConvHeightSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen3];
	ELSE
		tyDInput.bMagConvHeightSen3	:= FALSE;
	END_IF
	
	//Magazine 4 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen4 > 0 AND p_tyDISettings.diMagConvHeightSen4 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen4	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen4];
	ELSE
		tyDInput.bMagConvHeightSen4	:= FALSE;
	END_IF
	
	//Magazine 1 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen1 > 0 AND p_tyDISettings.diMagConvSmallMagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen1];
	ELSE
		tyDInput.bMagConvSmallMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen2 > 0 AND p_tyDISettings.diMagConvSmallMagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen2];
	ELSE
		tyDInput.bMagConvSmallMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen3 > 0 AND p_tyDISettings.diMagConvSmallMagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen3];
	ELSE
		tyDInput.bMagConvSmallMagSen3	:= FALSE;
	END_IF
	
	//Magazine 4 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen4 > 0 AND p_tyDISettings.diMagConvSmallMagSen4 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen4	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen4];
	ELSE
		tyDInput.bMagConvSmallMagSen4	:= FALSE;
	END_IF
	
	//Magazine 1 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen1 > 0 AND p_tyDISettings.diMagConvLargeMagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen1];
	ELSE
		tyDInput.bMagConvLargeMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen2 > 0 AND p_tyDISettings.diMagConvLargeMagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen2];
	ELSE
		tyDInput.bMagConvLargeMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen3 > 0 AND p_tyDISettings.diMagConvLargeMagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen3];
	ELSE
		tyDInput.bMagConvLargeMagSen3	:= FALSE;
	END_IF
	
	//Magazine 4 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen4 > 0 AND p_tyDISettings.diMagConvLargeMagSen4 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen4	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen4];
	ELSE
		tyDInput.bMagConvLargeMagSen4	:= FALSE;
	END_IF
	
	//Magazine 1 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen1 > 0 AND p_tyDISettings.diMagConvCAB717MagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen1];
	ELSE
		tyDInput.bMagConvCAB717MagSen1	:= FALSE;
	END_IF

	//Magazine 2 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen2 > 0 AND p_tyDISettings.diMagConvCAB717MagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen2];
	ELSE
		tyDInput.bMagConvCAB717MagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen3 > 0 AND p_tyDISettings.diMagConvCAB717MagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen3];
	ELSE
		tyDInput.bMagConvCAB717MagSen3	:= FALSE;
	END_IF
	
	//Magazine 4 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen4 > 0 AND p_tyDISettings.diMagConvCAB717MagSen4 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen4	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen4];
	ELSE
		tyDInput.bMagConvCAB717MagSen4	:= FALSE;
	END_IF
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyDInput.bFleetManagerReady	:= p_tyTagFromMes.bActive;
	
		McSetAGVCommHardIO:
			//Fleet Manager Active Status
			IF p_tyDISettings.diFleetManagerReady > 0 AND p_tyDISettings.diFleetManagerReady <= UDINT_TO_DINT(p_udiMax) THEN
				tyDInput.bFleetManagerReady	:= a_bPhysicalDI[p_tyDISettings.diFleetManagerReady];
			ELSE
				tyDInput.bFleetManagerReady	:= FALSE;
			END_IF
			
		McSetAGVCommDisabled:
			tyDInput.bFleetManagerReady	:= FALSE;
	END_CASE
		
	IF p_bLinkNtParamProjSOTSenPrep OR p_eLinkAGVComProtocol = McSetAGVCommHardIO THEN
			IF p_bUIAGVSimulationOn = FALSE THEN
				//SOT Configuration
				IF p_tyDISettings.diSOT1Receive > 0 AND p_tyDISettings.diSOT1Receive <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT1Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT1Receive];
				ELSE
					tyDInput.bSOT1Receive	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT1AIVError > 0 AND p_tyDISettings.diSOT1AIVError <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT1AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVError];
				ELSE
					tyDInput.bSOT1AIVError	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT1AIVSizeLarge > 0 AND p_tyDISettings.diSOT1AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT1AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVSizeLarge];
				ELSE
					tyDInput.bSOT1AIVSizeLarge	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT1AIVReady > 0 AND p_tyDISettings.diSOT1AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT1AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVReady];
				ELSE
					tyDInput.bSOT1AIVReady	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT1AIVAvailable > 0 AND p_tyDISettings.diSOT1AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT1AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVAvailable];
				ELSE
					tyDInput.bSOT1AIVAvailable	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT2Receive > 0 AND p_tyDISettings.diSOT2Receive <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT2Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT2Receive];
				ELSE
					tyDInput.bSOT2Receive	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT2AIVError > 0 AND p_tyDISettings.diSOT2AIVError <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT2AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVError];
				ELSE
					tyDInput.bSOT2AIVError	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT2AIVSizeLarge > 0 AND p_tyDISettings.diSOT2AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT2AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVSizeLarge];
				ELSE
					tyDInput.bSOT2AIVSizeLarge	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT2AIVReady > 0 AND p_tyDISettings.diSOT2AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT2AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVReady];
				ELSE
					tyDInput.bSOT2AIVReady	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT2AIVAvailable > 0 AND p_tyDISettings.diSOT2AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT2AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVAvailable];
				ELSE
					tyDInput.bSOT2AIVAvailable	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT3Receive > 0 AND p_tyDISettings.diSOT3Receive <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT3Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT3Receive];
				ELSE
					tyDInput.bSOT3Receive	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT3AIVError > 0 AND p_tyDISettings.diSOT3AIVError <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT3AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVError];
				ELSE
					tyDInput.bSOT3AIVError	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT3AIVSizeLarge > 0 AND p_tyDISettings.diSOT3AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT3AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVSizeLarge];
				ELSE
					tyDInput.bSOT3AIVSizeLarge	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT3AIVReady > 0 AND p_tyDISettings.diSOT3AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT3AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVReady];
				ELSE
					tyDInput.bSOT3AIVReady	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT3AIVAvailable > 0 AND p_tyDISettings.diSOT3AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT3AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVAvailable];
				ELSE
					tyDInput.bSOT3AIVAvailable	:= FALSE;
				END_IF
				
				
				IF p_tyDISettings.diSOT4Receive > 0 AND p_tyDISettings.diSOT4Receive <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT4Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT4Receive];
				ELSE
					tyDInput.bSOT4Receive	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT4AIVError > 0 AND p_tyDISettings.diSOT4AIVError <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT4AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVError];
				ELSE
					tyDInput.bSOT4AIVError	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT4AIVSizeLarge > 0 AND p_tyDISettings.diSOT4AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT4AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVSizeLarge];
				ELSE
					tyDInput.bSOT4AIVSizeLarge	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT4AIVReady > 0 AND p_tyDISettings.diSOT4AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT4AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVReady];
				ELSE
					tyDInput.bSOT4AIVReady	:= FALSE;
				END_IF
				
				IF p_tyDISettings.diSOT4AIVAvailable > 0 AND p_tyDISettings.diSOT4AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
					tyDInput.bSOT4AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVAvailable];
				ELSE
					tyDInput.bSOT4AIVAvailable	:= FALSE;
				END_IF
			ELSE
				tyDInput.bSOT1Receive	:= p_tySOTSimulate1.tyBtnInPos;
				tyDInput.bSOT1AIVError	:= p_tySOTSimulate1.tyBtnError;
				tyDInput.bSOT1AIVReady		:= p_tySOTSimulate1.tyBtnRdy;
				tyDInput.bSOT1AIVAvailable	:= p_tySOTSimulate1.tyBtnAvail;
				
				tyDInput.bSOT2Receive	:= p_tySOTSimulate2.tyBtnInPos;
				tyDInput.bSOT2AIVError	:= p_tySOTSimulate2.tyBtnError;
				tyDInput.bSOT2AIVReady		:= p_tySOTSimulate2.tyBtnRdy;
				tyDInput.bSOT2AIVAvailable	:= p_tySOTSimulate2.tyBtnAvail;
				
				tyDInput.bSOT3Receive	:= p_tySOTSimulate3.tyBtnInPos;
				tyDInput.bSOT3AIVError	:= p_tySOTSimulate3.tyBtnError;
				tyDInput.bSOT3AIVReady		:= p_tySOTSimulate3.tyBtnRdy;
				tyDInput.bSOT3AIVAvailable	:= p_tySOTSimulate3.tyBtnAvail;
				
				tyDInput.bSOT4Receive	:= p_tySOTSimulate4.tyBtnInPos;
				tyDInput.bSOT4AIVError	:= p_tySOTSimulate4.tyBtnError;
				tyDInput.bSOT4AIVReady		:= p_tySOTSimulate4.tyBtnRdy;
				tyDInput.bSOT4AIVAvailable	:= p_tySOTSimulate4.tyBtnAvail;
			END_IF
	
		
	ELSIF p_bLinkNtParamProjSOTSenPrep = FALSE THEN
		
		CASE p_eLinkAGVComProtocol OF
			McSetAGVCommOPCUA:
				IF p_bUIAGVSimulationOn = FALSE THEN
					tyDInput.bFleetManagerReady	:= p_tyTagFromMes.bActive;
					
					tyDInput.bSOT1Receive := TRUE;
					tyDInput.bSOT1AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[1].bError;
					tyDInput.bSOT1AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[1].bSizeLarge;
					tyDInput.bSOT1AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[1].bReady;
					tyDInput.bSOT1AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[1].bAvailable;
					
					tyDInput.bSOT2Receive := TRUE;
					tyDInput.bSOT2AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[2].bError;
					tyDInput.bSOT2AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[2].bSizeLarge;
					tyDInput.bSOT2AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[2].bReady;
					tyDInput.bSOT2AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[2].bAvailable;
					
					tyDInput.bSOT3Receive := TRUE;
					tyDInput.bSOT3AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[3].bError;
					tyDInput.bSOT3AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[3].bSizeLarge;
					tyDInput.bSOT3AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[3].bReady;
					tyDInput.bSOT3AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[3].bAvailable;
			
					tyDInput.bSOT4Receive := TRUE;
					tyDInput.bSOT4AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[4].bError;
					tyDInput.bSOT4AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[4].bSizeLarge;
					tyDInput.bSOT4AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[4].bReady;
					tyDInput.bSOT4AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[4].bAvailable;
					
				ELSE
					tyDInput.bSOT1Receive	:= p_tySOTSimulate1.tyBtnInPos;
					tyDInput.bSOT1AIVError	:= p_tySOTSimulate1.tyBtnError;
					tyDInput.bSOT1AIVReady		:= p_tySOTSimulate1.tyBtnRdy;
					tyDInput.bSOT1AIVAvailable	:= p_tySOTSimulate1.tyBtnAvail;
				
					tyDInput.bSOT2Receive	:= p_tySOTSimulate2.tyBtnInPos;
					tyDInput.bSOT2AIVError	:= p_tySOTSimulate2.tyBtnError;
					tyDInput.bSOT2AIVReady		:= p_tySOTSimulate2.tyBtnRdy;
					tyDInput.bSOT2AIVAvailable	:= p_tySOTSimulate2.tyBtnAvail;
				
					tyDInput.bSOT3Receive	:= p_tySOTSimulate3.tyBtnInPos;
					tyDInput.bSOT3AIVError	:= p_tySOTSimulate3.tyBtnError;
					tyDInput.bSOT3AIVReady		:= p_tySOTSimulate3.tyBtnRdy;
					tyDInput.bSOT3AIVAvailable	:= p_tySOTSimulate3.tyBtnAvail;
				
					tyDInput.bSOT4Receive	:= p_tySOTSimulate4.tyBtnInPos;
					tyDInput.bSOT4AIVError	:= p_tySOTSimulate4.tyBtnError;
					tyDInput.bSOT4AIVReady		:= p_tySOTSimulate4.tyBtnRdy;
					tyDInput.bSOT4AIVAvailable	:= p_tySOTSimulate4.tyBtnAvail;
				END_IF
			
			
			McSetAGVCommDisabled:
				tyDInput.bSOT1Receive := FALSE;
				tyDInput.bSOT1AIVError := FALSE;
				tyDInput.bSOT1AIVSizeLarge := FALSE;
				tyDInput.bSOT1AIVReady := FALSE;
				tyDInput.bSOT1AIVAvailable := FALSE;
					
				tyDInput.bSOT2Receive := FALSE;
				tyDInput.bSOT2AIVError := FALSE;
				tyDInput.bSOT2AIVSizeLarge := FALSE;
				tyDInput.bSOT2AIVReady := FALSE;
				tyDInput.bSOT2AIVAvailable := FALSE;
					
				tyDInput.bSOT3Receive := FALSE;
				tyDInput.bSOT3AIVError := FALSE;
				tyDInput.bSOT3AIVSizeLarge := FALSE;
				tyDInput.bSOT3AIVReady := FALSE;
				tyDInput.bSOT3AIVAvailable	:= FALSE;
			
				tyDInput.bSOT4Receive := FALSE;
				tyDInput.bSOT4AIVError := FALSE;
				tyDInput.bSOT4AIVSizeLarge := FALSE;
				tyDInput.bSOT4AIVReady := FALSE;
				tyDInput.bSOT4AIVAvailable	:= FALSE;
		END_CASE
	END_IF		
		
	IF p_tyDISettings.diPullerExtSlwSen > 0 AND p_tyDISettings.diPullerExtSlwSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerExtSlwSen	:= a_bPhysicalDI[p_tyDISettings.diPullerExtSlwSen];
	ELSE
		tyDInput.bPullerExtSlwSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diPullerRetSlwSen > 0 AND p_tyDISettings.diPullerRetSlwSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerRetSlwSen	:= a_bPhysicalDI[p_tyDISettings.diPullerRetSlwSen];
	ELSE
		tyDInput.bPullerRetSlwSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMtrPullerTorqueSig > 0 AND p_tyDISettings.diMtrPullerTorqueSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMtrPullerTorqueSig	:= a_bPhysicalDI[p_tyDISettings.diMtrPullerTorqueSig];
	ELSE
		tyDInput.bMtrPullerTorqueSig	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMtrPullerAlmSig > 0 AND p_tyDISettings.diMtrPullerAlmSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMtrPullerAlmSig	:= a_bPhysicalDI[p_tyDISettings.diMtrPullerAlmSig];
	ELSE
		tyDInput.bMtrPullerAlmSig	:= TRUE;
	END_IF
		
	IF p_tyDISettings.diPullerAntiJam > 0 AND p_tyDISettings.diPullerAntiJam <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPullerAntiJam	:= a_bPhysicalDI[p_tyDISettings.diPullerAntiJam];
	ELSE
		tyDInput.bPullerAntiJam	:= TRUE;
	END_IF

	IF p_tyDISettings.diMag1SafetyBarExtRS > 0 AND p_tyDISettings.diMag1SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SafetyBarExtRS];
	ELSE
		tyDInput.bMag1SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1SafetyBarRetRS > 0 AND p_tyDISettings.diMag1SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SafetyBarRetRS];
	ELSE
		tyDInput.bMag1SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2SafetyBarExtRS > 0 AND p_tyDISettings.diMag2SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SafetyBarExtRS];
	ELSE
		tyDInput.bMag2SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2SafetyBarRetRS > 0 AND p_tyDISettings.diMag2SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SafetyBarRetRS];
	ELSE
		tyDInput.bMag2SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3SafetyBarExtRS > 0 AND p_tyDISettings.diMag3SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SafetyBarExtRS];
	ELSE
		tyDInput.bMag3SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3SafetyBarRetRS > 0 AND p_tyDISettings.diMag3SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SafetyBarRetRS];
	ELSE
		tyDInput.bMag3SafetyBarRetRS	:= FALSE;
	END_IF
		
	IF p_tyDISettings.diMagWidthChkSen > 0 AND p_tyDISettings.diMagWidthChkSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagWidthChkSen	:= a_bPhysicalDI[p_tyDISettings.diMagWidthChkSen];
	ELSE
		tyDInput.bMagWidthChkSen	:= TRUE;
	END_IF
	
	//curtain sensor
	IF p_tyDISettings.diCurtainSensor > 0 AND p_tyDISettings.diCurtainSensor <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCurtainSensor	:= a_bPhysicalDI[p_tyDISettings.diCurtainSensor];
	ELSE
		tyDInput.bCurtainSensor	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diBypCurtainSensorPB > 0 AND p_tyDISettings.diBypCurtainSensorPB <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bBypCurtainSensorPB	:= a_bPhysicalDI[p_tyDISettings.diBypCurtainSensorPB];
	ELSE
		tyDInput.bBypCurtainSensorPB	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diCurtainSafetySig2 > 0 AND p_tyDISettings.diCurtainSafetySig2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCurtainSafetySig2	:= a_bPhysicalDI[p_tyDISettings.diCurtainSafetySig2];
	ELSE
		tyDInput.bCurtainSafetySig2	:= FALSE;
	END_IF
	//##
	
	IF p_tyDISettings.diInShutterOpenRS2 > 0 AND p_tyDISettings.diInShutterOpenRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterOpenRS2	:= a_bPhysicalDI[p_tyDISettings.diInShutterOpenRS2];
	ELSE
		tyDInput.bInShutterOpenRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterCloseRS2 > 0 AND p_tyDISettings.diInShutterCloseRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterCloseRS2	:= a_bPhysicalDI[p_tyDISettings.diInShutterCloseRS2];
	ELSE
		tyDInput.bInShutterCloseRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterOpenRS3 > 0 AND p_tyDISettings.diInShutterOpenRS3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterOpenRS3	:= a_bPhysicalDI[p_tyDISettings.diInShutterOpenRS3];
	ELSE
		tyDInput.bInShutterOpenRS3	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterCloseRS3 > 0 AND p_tyDISettings.diInShutterCloseRS3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterCloseRS3	:= a_bPhysicalDI[p_tyDISettings.diInShutterCloseRS3];
	ELSE
		tyDInput.bInShutterCloseRS3	:= FALSE;
	END_IF
		
	IF p_tyDISettings.diMag1FixedSideDetect > 0 AND p_tyDISettings.diMag1FixedSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedSideDetect];
	ELSE
		tyDInput.bMag1FixedSideDetect	:= FALSE;
	END_IF
			
	IF p_tyDISettings.diMag1RemoteSideDetect > 0 AND p_tyDISettings.diMag1RemoteSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1RemoteSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag1RemoteSideDetect];
	ELSE
		tyDInput.bMag1RemoteSideDetect	:= FALSE;
	END_IF
				
	IF p_tyDISettings.diMag2FixedSideDetect > 0 AND p_tyDISettings.diMag2FixedSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedSideDetect];
	ELSE
		tyDInput.bMag2FixedSideDetect	:= FALSE;
	END_IF
			
	IF p_tyDISettings.diMag2RemoteSideDetect > 0 AND p_tyDISettings.diMag2RemoteSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2RemoteSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag2RemoteSideDetect];
	ELSE
		tyDInput.bMag2RemoteSideDetect	:= FALSE;
	END_IF
					
	IF p_tyDISettings.diMag3FixedSideDetect > 0 AND p_tyDISettings.diMag3FixedSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedSideDetect];
	ELSE
		tyDInput.bMag3FixedSideDetect	:= FALSE;
	END_IF
			
	IF p_tyDISettings.diMag3RemoteSideDetect > 0 AND p_tyDISettings.diMag3RemoteSideDetect <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3RemoteSideDetect	:= a_bPhysicalDI[p_tyDISettings.diMag3RemoteSideDetect];
	ELSE
		tyDInput.bMag3RemoteSideDetect	:= FALSE;
	END_IF		
	
	//Orientation with highmagdetsen
	IF p_tyDISettings.diHighMagDetSen1 > 0 AND p_tyDISettings.diHighMagDetSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen1	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen1];
	ELSE
		tyDInput.bHighMagDetSen1	:= FALSE;
	END_IF
	IF p_tyDISettings.diHighMagDetSen2 > 0 AND p_tyDISettings.diHighMagDetSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen2	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen2];
	ELSE
		tyDInput.bHighMagDetSen2	:= FALSE;
	END_IF
	IF p_tyDISettings.diHighMagDetSen3 > 0 AND p_tyDISettings.diHighMagDetSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen3	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen3];
	ELSE
		tyDInput.bHighMagDetSen3	:= FALSE;
	END_IF

	IF p_tyDISettings.diConvClrSen > 0 AND p_tyDISettings.diConvClrSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbConvClrSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvClrSenOnTm);
		fbConvClrSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvClrSenOffTm);
		fbConvClrSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvClrSen]);
		
		tyDInput.bConvClrSen	:= fbConvClrSigFltr.bSigOut;
	ELSE
		tyDInput.bConvClrSen	:= FALSE;
	END_IF
	
	//ADD
	IF p_tyDISettings.diDSSafetySig > 0 AND p_tyDISettings.diDSSafetySig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bDSSafetySig	:= a_bPhysicalDI[p_tyDISettings.diDSSafetySig];;
	ELSE
		tyDInput.bDSSafetySig	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diDSUnlockCoverSig > 0 AND p_tyDISettings.diDSUnlockCoverSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bDSUnlockCoverSig	:= a_bPhysicalDI[p_tyDISettings.diDSUnlockCoverSig];;
	ELSE
		tyDInput.bDSUnlockCoverSig	:= FALSE;
	END_IF
	
		//Outlet shutter2
	IF p_tyDISettings.diOutShutterOpenRS2 > 0 AND p_tyDISettings.diOutShutterOpenRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterOpenRS2	:= a_bPhysicalDI[p_tyDISettings.diOutShutterOpenRS2];
	ELSE
		tyDInput.bOutShutterOpenRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterCloseRS2 > 0 AND p_tyDISettings.diOutShutterCloseRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterCloseRS2	:= a_bPhysicalDI[p_tyDISettings.diOutShutterCloseRS2];
	ELSE
		tyDInput.bOutShutterCloseRS2	:= FALSE;
	END_IF

		//Trolley 
	IF p_tyDISettings.diTrolleyExtRS1 > 0 AND p_tyDISettings.diTrolleyExtRS1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bTrolleyExtRS1	:= a_bPhysicalDI[p_tyDISettings.diTrolleyExtRS1];
	ELSE
		tyDInput.bTrolleyExtRS1	:= FALSE;
	END_IF
	IF p_tyDISettings.diTrolleyExtRS2 > 0 AND p_tyDISettings.diTrolleyExtRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bTrolleyExtRS2	:= a_bPhysicalDI[p_tyDISettings.diTrolleyExtRS2];
	ELSE
		tyDInput.bTrolleyExtRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diTrolleyPreSen1 > 0 AND p_tyDISettings.diTrolleyPreSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbTrolley1PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diTrolleySenOnTm); //1200ms delay (locally)
		fbTrolley1PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diTrolleySenOffTm);
		fbTrolley1PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diTrolleyPreSen1]);
		tyDInput.bTrolleyPreSen1	:= fbTrolley1PresentSigFltr.bSigOut;
	ELSE
		tyDInput.bTrolleyPreSen1	:= FALSE;
	END_IF
	IF p_tyDISettings.diTrolleyPreSen2 > 0 AND p_tyDISettings.diTrolleyPreSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbTrolley2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diTrolleySenOnTm); //1200ms delay (locally)
		fbTrolley2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diTrolleySenOffTm);
		fbTrolley2PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diTrolleyPreSen2]);
		tyDInput.bTrolleyPreSen2	:= fbTrolley2PresentSigFltr.bSigOut;
	ELSE
		tyDInput.bTrolleyPreSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diSlotLckSenMag1 > 0 AND p_tyDISettings.diSlotLckSenMag1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bSlotLckSenMag1	:= a_bPhysicalDI[p_tyDISettings.diSlotLckSenMag1];
	ELSE
		tyDInput.bSlotLckSenMag1	:= FALSE;
	END_IF
	IF p_tyDISettings.diSlotLckSenMag2 > 0 AND p_tyDISettings.diSlotLckSenMag2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bSlotLckSenMag2	:= a_bPhysicalDI[p_tyDISettings.diSlotLckSenMag2];
	ELSE
		tyDInput.bSlotLckSenMag2	:= FALSE;
	END_IF

	
	//For Simulation Only
	IF DiagCpuIsSimulated() = TRUE THEN
		tyDInput.bSafetyRlySig			:= TRUE;
		tyDInput.bEStopSig				:= TRUE;
		tyDInput.bCoverSWSig			:= TRUE;
		tyDInput.bLifterTimingBeltSen	:= TRUE;
		tyDInput.bLifterSafetyLmtSW1	:= TRUE;
		tyDInput.bLifterSafetyLmtSW2	:= TRUE;
		tyDInput.bCurtainSafetySig2		:= TRUE;
		tyDInput.bMtrPullerAlmSig		:= TRUE;
		bSimServoEn	:= FALSE;
	END_IF
	
	//EStop
	IF (tyDInput.bEStopSig = FALSE) AND (eStatus1 <> Error) THEN
		eStatus1	:= Error;
		udiStatus1	:= 10000;	//Emergency SSel Button Pressed
	END_IF
	
	//Cover Switch
	IF (tyDInput.bCoverSWSig = FALSE) AND (eStatus2 <> Error) THEN
		eStatus2	:= Error;
		udiStatus2	:= 10001;	//Door / Conver Opened
	END_IF
	
	//Lifter Timing Belt
	IF (tyDInput.bLifterTimingBeltSen = FALSE) AND (eStatus3 <> Error) THEN
		eStatus3	:= Error;
		udiStatus3	:= 10002;	//Lifter Timing Belt Broken
	END_IF
	
	//Lifter Safety Limit Switch
	IF (tyDInput.bLifterSafetyLmtSW1 = FALSE OR tyDInput.bLifterSafetyLmtSW2 = FALSE) AND (eStatus4 <> Error) THEN
		eStatus4	:= Error;
		udiStatus4	:= 10003;	//Lifter Reached Safety Limit Switch
	END_IF
	
	//Safety Relay
//	fbSafetyRlyRstTm(IN := NOT(p_bRstErrSafetyRlyRst));
//	IF (tyDInput.bSafetyRlySig = FALSE) AND (eStatus5 <> Error AND eStatus1 <> Error AND eStatus2 <> Error) AND fbSafetyRlyRstTm.Q AND tyDInput.bEStopSig AND tyDInput.bCoverSWSig THEN
//		eStatus5	:= Error;
//		udiStatus5	:= 10004;	//Safety Relay Signal Off
//	END_IF
		

	//Curtain Sensor
//	IF tyDInput.bSafetyRlySig THEN
//		fbCurtainSafetyRstTm(IN := NOT(p_bRstCurtainSenCtrl));
//		IF (tyDInput.bCurtainSafetySig2 = FALSE) AND (eStatus6 <> Error) AND fbCurtainSafetyRstTm.Q
//			AND (p_bOpsTravLifLDBypCurtainSenCtrl <> TRUE) AND p_bRstCurtainSenCtrl =FALSE THEN	// JOHN , one pulse to reset
//			eStatus6	:= Error;
//			udiStatus6	:= 10005;	//Curtain Sensor Activated
//		END_IF
//	END_IF
	//Only For Curtain Sensor Preparation
	IF p_bCurtainSenPrep THEN
		fbCurtainSafetyRstTm(IN := NOT(p_bRstCurtainSenCtrl));
		IF (NOT tyDInput.bCurtainSafetySig2) AND (eStatus6 <> Error) AND fbCurtainSafetyRstTm.Q
			AND (p_tyDO.bBypCurtainSen = FALSE) AND p_bRstCurtainSenCtrl = FALSE THEN
			
			IF NOT tyDInput.bSafetyRlySig THEN
			ELSE	
				eStatus6	:= Error;
				udiStatus6	:= 10005;
			END_IF	
		END_IF
	END_IF
	
	IF p_bLinkStartupRun THEN
		fbSafetyRlyRstTm(IN := NOT(p_bRstErrSafetyRlyRst));
		IF (tyDInput.bSafetyRlySig = FALSE) AND fbSafetyRlyRstTm.Q THEN
			bSafetySigErrNoBuz	:= TRUE;
		END_IF	
	ELSIF bSafetySigErrNoBuz = FALSE THEN	
		fbSafetyRlyRstTm(IN := NOT(p_bRstErrSafetyRlyRst));
		IF (tyDInput.bSafetyRlySig = FALSE) AND (eStatus3 <> Error AND (eStatus2<>Error AND eStatus1<>Error)) AND fbSafetyRlyRstTm.Q AND tyDInput.bEStopSig AND tyDInput.bCoverSWSig THEN
			eStatus3	:= Error;
			udiStatus3	:= 10004; //Safety Relay Signal is Off
		END_IF
	END_IF
	
	//Reset Error
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
	END_IF
	
	IF (eStatus2 = Error) AND bRstErr THEN
		eStatus2	:= Idle;
		udiStatus2	:= 0;
	END_IF
	
	IF (eStatus3 = Error) AND bRstErr THEN
		eStatus3	:= Idle;
		udiStatus3	:= 0;
	END_IF
	
	IF (eStatus4 = Error) AND bRstErr THEN
		eStatus4	:= Idle;
		udiStatus4	:= 0;
	END_IF
	
	IF (eStatus5 = Error) AND bRstErr THEN
		eStatus5	:= Idle;
		udiStatus5	:= 0;
	END_IF
	
	IF (eStatus6 = Error) AND bRstErr THEN
		eStatus6	:= Idle;
		udiStatus6	:= 0;
	END_IF
END_ACTION
