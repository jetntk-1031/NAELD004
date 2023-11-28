(** 2019-01-20 **)
ACTION Act_Main:
	
	tyTagToMes.sMachineName := p_sJobNo;
	tyTagToMes.bError := p_bLinkError;
	tyTagToMes.bWarning := p_bLinkAlarmWarning OR p_bLinkAlarmInfo;
	
	bFleetManagerActive := p_bDIFleetManagerActive;
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommHardIO:
			fbFMOnTimeout(IN:= bFleetManagerActive);
			fbFMOffTimeout(IN:= bFleetManagerActive = FALSE);
			IF fbFMOnTimeout.Q OR fbFMOffTimeout.Q THEN
				IF p_bDisableFMWarning = FALSE THEN
					udiStatus1 := 10006;
				ELSE
					udiStatus1 := 0;
				END_IF
			ELSE
				udiStatus1 := 0;
			END_IF
		McSetAGVCommDisabled:
			udiStatus1 := 0;
	END_CASE	
	
	CASE p_eLinkLDMag OF
		LDMagDual:
			tyTagToMes.nNumberOfPlatforms:= 2;
			
		LDMagTriple:
			tyTagToMes.nNumberOfPlatforms:= 3;
			
		LDMagQuadruple:
			tyTagToMes.nNumberOfPlatforms:= 4;
	END_CASE
	

	//Online Pulse Status- 500ms Pulse
	fbConnectionAGVTm(IN:= tyTagToMes.bActive = FALSE);
	IF fbConnectionAGVTm.Q THEN
		tyTagToMes.bActive := TRUE;
		//	bInternalAGVOnline := TRUE;
	END_IF
	
	fbConnectionAGVTm1(IN:= tyTagToMes.bActive);
	IF fbConnectionAGVTm1.Q THEN
		tyTagToMes.bActive := FALSE;
		//	bInternalAGVOnline := FALSE;
	END_IF

	
	
	//Simulation from HMI
	IF p_bUIAGVSimulationOn THEN
		bAGVOnline := p_bUIAGVOnline;
		
		tyAGVToDTMag.bVEHAuto := p_tyUIAGVToDTMagSimulateData.bVEHAuto;
		tyAGVToDTMag.bVEHInPos1 := p_tyUIAGVToDTMagSimulateData.bVEHInPos1;
		tyAGVToDTMag.bVEHInPos2 := p_tyUIAGVToDTMagSimulateData.bVEHInPos2;
		tyAGVToDTMag.bVEHInPos3 := p_tyUIAGVToDTMagSimulateData.bVEHInPos3;
		tyAGVToDTMag.bVEHInPos4 := p_tyUIAGVToDTMagSimulateData.bVEHInPos4;
		tyAGVToDTMag.bVEH1Occupied := p_tyUIAGVToDTMagSimulateData.bVEH1Occupied;
		tyAGVToDTMag.bVEH2Occupied := p_tyUIAGVToDTMagSimulateData.bVEH2Occupied;
		tyAGVToDTMag.bVEH3Occupied := p_tyUIAGVToDTMagSimulateData.bVEH3Occupied;
		tyAGVToDTMag.bVEH4Occupied := p_tyUIAGVToDTMagSimulateData.bVEH4Occupied;
		bInternalAGVSimulateOn := TRUE;
		
	END_IF
	
	IF EDGEPOS( p_bUIAGVSimulationOn = FALSE) THEN
		bAGVOnline := FALSE;
		
		tyAGVToDTMag.bVEHAuto := FALSE;
		tyAGVToDTMag.bVEHInPos1 := FALSE;
		tyAGVToDTMag.bVEHInPos2 := FALSE;
		tyAGVToDTMag.bVEHInPos3 := FALSE;
		tyAGVToDTMag.bVEHInPos4 := FALSE;
		tyAGVToDTMag.bVEH1Occupied := FALSE;
		tyAGVToDTMag.bVEH2Occupied := FALSE;
		tyAGVToDTMag.bVEH3Occupied := FALSE;
		tyAGVToDTMag.bVEH4Occupied := FALSE;
		bInternalAGVSimulateOn := FALSE;
		
	END_IF
	
	
	
	IF p_bOpsRun AND p_eLinkAGVComProtocol = McSetAGVCommOPCUA THEN
		bInternalAGVOnline := TRUE;
		tyTagToMes.bAuto_Run := TRUE;
		//Magazine Conveyor 1
		tyDTMagToAGV.bCI1Auto					:= p_tyDTMagToAGV1.bCI1Auto;
		tyDTMagToAGV.bCI1Rdy  					:= p_tyDTMagToAGV1.bCI1Rdy;
		tyDTMagToAGV.bCI1MagazineEmpty			:= p_tyDTMagToAGV1.bCI1MagazineEmpty;
		tyDTMagToAGV.bCI1Occupied				:= p_tyDTMagToAGV1.bCI1Occupied;
		tyDTMagToAGV.bCI1Running				:= p_tyDTMagToAGV1.bCI1Running;
		tyDTMagToAGV.bCI1IncorrectMagazineModel	:= p_bIncorrectMagazine1;
		
		tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= p_bRequestToBring1;
		tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= p_bRequestToGet1;
		tyTagToMes.tyTagStatOfPlatforms[1].bError			:= p_bSOTMagError1;
		tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= p_bSOTMagSizeLarge1;
		tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= p_bSOTMagReady1;
		tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= p_bSOTMagAvailable1;
		
		//Magazine Conveyor 2
		tyDTMagToAGV.bCI2Auto					:= p_tyDTMagToAGV2.bCI2Auto;
		tyDTMagToAGV.bCI2Rdy  					:= p_tyDTMagToAGV2.bCI2Rdy;
		tyDTMagToAGV.bCI2MagazineEmpty			:= p_tyDTMagToAGV2.bCI2MagazineEmpty;
		tyDTMagToAGV.bCI2Occupied				:= p_tyDTMagToAGV2.bCI2Occupied;
		tyDTMagToAGV.bCI2Running				:= p_tyDTMagToAGV2.bCI2Running;
		tyDTMagToAGV.bCI2IncorrectMagazineModel	:= p_bIncorrectMagazine2;
		
		tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= p_bRequestToBring2;
		tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= p_bRequestToGet2;
		tyTagToMes.tyTagStatOfPlatforms[2].bError			:= p_bSOTMagError2;
		tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= p_bSOTMagSizeLarge2;
		tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= p_bSOTMagReady2;
		tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= p_bSOTMagAvailable2;
		
		//Magazine Conveyor 3
		tyDTMagToAGV.bCI3Auto					:= p_tyDTMagToAGV3.bCI3Auto;
		tyDTMagToAGV.bCI3Rdy  					:= p_tyDTMagToAGV3.bCI3Rdy;
		tyDTMagToAGV.bCI3MagazineEmpty			:= p_tyDTMagToAGV3.bCI3MagazineEmpty;
		tyDTMagToAGV.bCI3Occupied				:= p_tyDTMagToAGV3.bCI3Occupied;
		tyDTMagToAGV.bCI3Running				:= p_tyDTMagToAGV3.bCI3Running;
		tyDTMagToAGV.bCI3IncorrectMagazineModel	:= p_bIncorrectMagazine3;
	
		tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= p_bRequestToBring3;
		tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= p_bRequestToGet3;
		tyTagToMes.tyTagStatOfPlatforms[3].bError			:= p_bSOTMagError3;
		tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= p_bSOTMagSizeLarge3;
		tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= p_bSOTMagReady3;
		tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= p_bSOTMagAvailable3;
		
		//Magazine Conveyor 4
		tyDTMagToAGV.bCI4Auto					:= p_tyDTMagToAGV4.bCI4Auto;
		tyDTMagToAGV.bCI4Rdy  					:= p_tyDTMagToAGV4.bCI4Rdy;
		tyDTMagToAGV.bCI4MagazineEmpty			:= p_tyDTMagToAGV4.bCI4MagazineEmpty;
		tyDTMagToAGV.bCI4Occupied				:= p_tyDTMagToAGV4.bCI4Occupied;
		tyDTMagToAGV.bCI4Running				:= p_tyDTMagToAGV4.bCI4Running;
		tyDTMagToAGV.bCI4IncorrectMagazineModel	:= p_bIncorrectMagazine4;
	
		tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToBring	:= p_bRequestToBring4;
		tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToGet		:= p_bRequestToGet4;
		tyTagToMes.tyTagStatOfPlatforms[4].bError			:= p_bSOTMagError4;
		tyTagToMes.tyTagStatOfPlatforms[4].bSizeLarge		:= p_bSOTMagSizeLarge4;
		tyTagToMes.tyTagStatOfPlatforms[4].bReady			:= p_bSOTMagReady4;
		tyTagToMes.tyTagStatOfPlatforms[4].bAvailable		:= p_bSOTMagAvailable4;
		//To AGV Side to do Check Machine On
	
		bMachineOnline := TRUE;
			
		//Siemens + Wefabricate
		CASE p_eCustomerReq OF 
			Siemens: 
				tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= p_bOpsMagConvLD1ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= p_bOpsMagConvLD1WriteRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= p_bOpsMagConvLD2ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= p_bOpsMagConvLD2WriteRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= p_bOpsMagConvLD3ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= p_bOpsMagConvLD3WriteRFID;
			We_Fabricate:
				tyTagToMes.tyTagStatOfPlatforms[1].bMagLoaded 	:= p_bOpsMagConvLD1ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bMagLoaded 	:= p_bOpsMagConvLD2ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bMagLoaded 	:= p_bOpsMagConvLD3ReadRFID;
		END_CASE
		
	ELSE
		bInternalAGVOnline := FALSE;
		tyTagToMes.bAuto_Run := FALSE;
		//Magazine Conveyor 1
		tyDTMagToAGV.bCI1Auto					:= FALSE;
		tyDTMagToAGV.bCI1Rdy  					:= FALSE;
		tyDTMagToAGV.bCI1Running				:= FALSE;
		
		//Magazine Conveyor 2
		tyDTMagToAGV.bCI2Auto					:= FALSE;
		tyDTMagToAGV.bCI2Rdy  					:= FALSE;
		tyDTMagToAGV.bCI2Running				:= FALSE;
		
		//Magazine Conveyor 3
		tyDTMagToAGV.bCI3Auto					:= FALSE;
		tyDTMagToAGV.bCI3Rdy  					:= FALSE;
		tyDTMagToAGV.bCI3Running				:= FALSE;
		
		//Magazine Conveyor 4
		tyDTMagToAGV.bCI4Auto					:= FALSE;
		tyDTMagToAGV.bCI4Rdy  					:= FALSE;
		tyDTMagToAGV.bCI4Running				:= FALSE;
		
		bMachineOnline := FALSE;
		
		//Siemens
		tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= FALSE;

		IF p_bManual THEN
			
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= p_bUIRequestToBring1;
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= p_bUIRequestToGet1;
			tyTagToMes.tyTagStatOfPlatforms[1].bError			:= p_bUISOTMagError1;
			tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= p_bUISOTMagSizeLarge1;
			tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= p_bUISOTMagReady1;
			tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= p_bUISOTMagAvailable1;
			
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= p_bUIRequestToBring2;
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= p_bUIRequestToGet2;
			tyTagToMes.tyTagStatOfPlatforms[2].bError			:= p_bUISOTMagError2;
			tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= p_bUISOTMagSizeLarge2;
			tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= p_bUISOTMagReady2;
			tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= p_bUISOTMagAvailable2;
			
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= p_bUIRequestToBring3;
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= p_bUIRequestToGet3;
			tyTagToMes.tyTagStatOfPlatforms[3].bError			:= p_bUISOTMagError3;
			tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= p_bUISOTMagSizeLarge3;
			tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= p_bUISOTMagReady3;
			tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= p_bUISOTMagAvailable3;
			
			tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToBring	:= p_bUIRequestToBring4;
			tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToGet		:= p_bUIRequestToGet4;
			tyTagToMes.tyTagStatOfPlatforms[4].bError			:= p_bUISOTMagError4;
			tyTagToMes.tyTagStatOfPlatforms[4].bSizeLarge		:= p_bUISOTMagSizeLarge4;
			tyTagToMes.tyTagStatOfPlatforms[4].bReady			:= p_bUISOTMagReady4;
			tyTagToMes.tyTagStatOfPlatforms[4].bAvailable		:= p_bUISOTMagAvailable4;
			
		ELSE
			
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= FALSE;
			
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= FALSE;	
			
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= FALSE;
			
			tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[4].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[4].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[4].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[4].bAvailable		:= FALSE;
			
		END_IF
		
	END_IF
		
	
	



END_ACTION
