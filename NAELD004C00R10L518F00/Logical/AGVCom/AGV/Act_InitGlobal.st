(** 2018-12-08 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkSafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkCoverSWSig ACCESS p_DICoverSWSig;
	p_bLinkAlarmWarning ACCESS p_AlarmWarning;
	p_bLinkAlarmInfo ACCESS p_AlarmInfo;
	p_bLinkError ACCESS p_AlarmErr;
	p_eLinkLDMag ACCESS p_NtParamProjMag;
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	
	//Pass Data To Internal Use
	p_bOpsRun ACCESS p_OpsRun;
	p_bManual ACCESS p_UIUIMnlMod;
	
	p_bPrep ACCESS p_NtParamProjAGVPrep;
	p_bEn ACCESS p_McParamAGVComEn;
	p_tyDTMagToAGV1 ACCESS p_AGVMag1DTMagToAGV;
	p_tyDTMagToAGV2 ACCESS p_AGVMag2DTMagToAGV;
	p_tyDTMagToAGV3 ACCESS p_AGVMag3DTMagToAGV;
	p_tyDTMagToAGV4 ACCESS p_AGVMag4DTMagToAGV;
	p_udiRstErr	ACCESS p_RstErrReset;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bIncorrectMagazine1 ACCESS p_OpsMagConvLD1IncorrectMagModel;
	p_bIncorrectMagazine2 ACCESS p_OpsMagConvLD2IncorrectMagModel;
	p_bIncorrectMagazine3 ACCESS p_OpsMagConvLD3IncorrectMagModel;
	p_bIncorrectMagazine4 ACCESS p_OpsMagConvLD4IncorrectMagModel;
	
	p_tyUIAGVToDTMagSimulateData ACCESS p_UIAGVSimulateSig;
	p_bUIAGVOnline ACCESS p_UIAGVSimulateOnline;
	p_bUIAGVSimulationOn ACCESS p_UIAGVSimulationOn;
	
	p_sJobNo ACCESS p_NtParamJobNo;
	
	p_bAGVRdyEnter1 ACCESS p_AGVMag1RdyEnter;
	p_bAGVRdyExit1 ACCESS p_AGVMag1RdyExit;
	p_bAGVRdyEnter2 ACCESS p_AGVMag2RdyEnter;
	p_bAGVRdyExit2 ACCESS p_AGVMag2RdyExit;
	p_bAGVRdyEnter3 ACCESS p_AGVMag3RdyEnter;
	p_bAGVRdyExit3 ACCESS p_AGVMag3RdyExit;
	p_bAGVRdyEnter4 ACCESS p_AGVMag4RdyEnter;
	p_bAGVRdyExit4 ACCESS p_AGVMag4RdyExit;
	
	p_bRequestToBring1 ACCESS p_Buffer1MagRemoved;
	p_bRequestToBring2 ACCESS p_Buffer2MagRemoved;
	p_bRequestToBring3 ACCESS p_Buffer3MagRemoved;
	p_bRequestToBring4 ACCESS p_Buffer4MagRemoved;
	p_bRequestToGet1 ACCESS p_DSSOT1DBA;
	p_bRequestToGet2 ACCESS p_DSSOT2DBA;
	p_bRequestToGet3 ACCESS p_DSSOT3DBA;
	p_bRequestToGet4 ACCESS p_DSSOT4DBA;
	
	p_bDIFleetManagerActive ACCESS p_DIFleetManagerActive;
	
	p_bUISOTMagError1	ACCESS p_UISOTMagErr1;		
	p_bUISOTMagError2	ACCESS p_UISOTMagErr2;		
	p_bUISOTMagError3	ACCESS p_UISOTMagErr3;	
	p_bUISOTMagError4	ACCESS p_UISOTMagErr4;
	
	p_bUISOTMagReady1	ACCESS p_UISOTMagRdy1;	
	p_bUISOTMagReady2	ACCESS p_UISOTMagRdy2;	
	p_bUISOTMagReady3	ACCESS p_UISOTMagRdy3;		
	p_bUISOTMagReady4	ACCESS p_UISOTMagRdy4;
	
	p_bUISOTMagAvailable1	ACCESS p_UISOTMagAvail1;	
	p_bUISOTMagAvailable2	ACCESS p_UISOTMagAvail2;	
	p_bUISOTMagAvailable3	ACCESS p_UISOTMagAvail3;	
	p_bUISOTMagAvailable4	ACCESS p_UISOTMagAvail4;
	
	p_bUISOTMagSizeLarge1	ACCESS p_UISOTMagSLarge1;	
	p_bUISOTMagSizeLarge2	ACCESS p_UISOTMagSLarge2;	
	p_bUISOTMagSizeLarge3 ACCESS p_UISOTMagSLarge3;	
	p_bUISOTMagSizeLarge4	ACCESS p_UISOTMagSLarge4;
		
	p_bUIRequestToBring1 ACCESS p_UIAIVReqBring1;
	p_bUIRequestToBring2 ACCESS p_UIAIVReqBring2;
	p_bUIRequestToBring3 ACCESS p_UIAIVReqBring3;
	p_bUIRequestToBring4 ACCESS p_UIAIVReqBring4;
	
	p_bUIRequestToGet1 ACCESS p_UIAIVReqGet1;
	p_bUIRequestToGet2 ACCESS p_UIAIVReqGet2;
	p_bUIRequestToGet3 ACCESS p_UIAIVReqGet3;
	p_bUIRequestToGet4 ACCESS p_UIAIVReqGet4;
	
	p_eAGVComProtocol ACCESS p_McParamAGVComProtocol;
	
	p_bSOTMagReady1 ACCESS p_USSOT1USB;
	p_bSOTMagReady2 ACCESS p_USSOT2USB;
	p_bSOTMagReady3 ACCESS p_USSOT3USB;
	p_bSOTMagReady4 ACCESS p_USSOT4USB;
	
	p_bSOTMagError1 ACCESS p_AlarmErr;
	p_bSOTMagError2 ACCESS p_AlarmErr;
	p_bSOTMagError3 ACCESS p_AlarmErr;
	p_bSOTMagError4 ACCESS p_AlarmErr;
	
	p_bSOTMagAvailable1 ACCESS p_DSSOT1DBA;
	p_bSOTMagAvailable2 ACCESS p_DSSOT2DBA;
	p_bSOTMagAvailable3 ACCESS p_DSSOT3DBA;
	p_bSOTMagAvailable4 ACCESS p_DSSOT4DBA;
	
	p_bSOTMagSizeLarge1 ACCESS p_DSSOT1MagSizeLarge;
	p_bSOTMagSizeLarge2 ACCESS p_DSSOT2MagSizeLarge;
	p_bSOTMagSizeLarge3 ACCESS p_DSSOT3MagSizeLarge;
	p_bSOTMagSizeLarge4 ACCESS p_DSSOT4MagSizeLarge;
	
	p_bDisableFMWarning ACCESS p_McParamDisableFMWarning;
	
	//For Siemen + We fab
	p_eCustomerReq ACCESS p_NtParamCustomerReq;

	p_bOpsMagConvLD1ReadRFID ACCESS p_OpsMagConvLD1ReadRFID;
	p_bOpsMagConvLD1WriteRFID ACCESS p_OpsMagConvLD1WriteRFID;

	p_bOpsMagConvLD2ReadRFID ACCESS p_OpsMagConvLD2ReadRFID;
	p_bOpsMagConvLD2WriteRFID ACCESS p_OpsMagConvLD2WriteRFID;
	
	p_bOpsMagConvLD3ReadRFID ACCESS p_OpsMagConvLD3ReadRFID;
	p_bOpsMagConvLD3WriteRFID ACCESS p_OpsMagConvLD3WriteRFID;

	(* Always Change If Project Change *)
	
END_ACTION
