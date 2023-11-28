(** 2019-05-20 **)
ACTION Act_Link:
	IF p_eNtParamCustomerReq = Siemens THEN
		p_bTLAmber ACCESS p_TLBuzWhite;
	ELSE
		p_bTLAmber ACCESS p_TLBuzAmber;
	END_IF
	
	p_bPullerExtCtrl	:= p_bLinkPullerExtCtrl OR p_bLinkPullConvExtCtrl;
	p_bPullerRetCtrl	:= p_bLinkPullerRetCtrl OR p_bLinkPullConvRetCtrl;
	
	IF p_bManual THEN
		
		p_bSOTMagError1	ACCESS p_UISOTMagErr1;		
		p_bSOTMagError2	ACCESS p_UISOTMagErr2;		
		p_bSOTMagError3	ACCESS p_UISOTMagErr3;	
		p_bSOTMagError4	ACCESS p_UISOTMagErr4;		
		p_bSOTMagReady1	ACCESS p_UISOTMagRdy1;	
		p_bSOTMagReady2	ACCESS p_UISOTMagRdy2;	
		p_bSOTMagReady3	ACCESS p_UISOTMagRdy3;		
		p_bSOTMagReady4	ACCESS p_UISOTMagRdy4;		
		p_bSOTMagAvailable1	ACCESS p_UISOTMagAvail1;	
		p_bSOTMagAvailable2	ACCESS p_UISOTMagAvail2;	
		p_bSOTMagAvailable3	ACCESS p_UISOTMagAvail3;	
		p_bSOTMagAvailable4	ACCESS p_UISOTMagAvail4;	
		p_bSOTMagSizeLarge1	ACCESS p_UISOTMagSLarge1;	
		p_bSOTMagSizeLarge2	ACCESS p_UISOTMagSLarge2;	
		p_bSOTMagSizeLarge3 ACCESS p_UISOTMagSLarge3;	
		p_bSOTMagSizeLarge4	ACCESS p_UISOTMagSLarge4;
		
		p_bRequestToBring1 ACCESS p_UIAIVReqBring1;
		p_bRequestToBring2 ACCESS p_UIAIVReqBring2;
		p_bRequestToBring3 ACCESS p_UIAIVReqBring3;
		p_bRequestToBring4 ACCESS p_UIAIVReqBring4;
		
		p_bRequestToGet1 ACCESS p_UIAIVReqGet1;
		p_bRequestToGet2 ACCESS p_UIAIVReqGet2;
		p_bRequestToGet3 ACCESS p_UIAIVReqGet3;
		p_bRequestToGet4 ACCESS p_UIAIVReqGet4;
		
	ELSIF p_bLinkOpsRun THEN
		
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
		
		p_bRequestToBring1 ACCESS p_Buffer1MagRemoved;
		p_bRequestToBring2 ACCESS p_Buffer2MagRemoved;
		p_bRequestToBring3 ACCESS p_Buffer3MagRemoved;
		p_bRequestToBring4 ACCESS p_Buffer4MagRemoved;
		
		p_bRequestToGet1 ACCESS p_DSSOT1DBA;
		p_bRequestToGet2 ACCESS p_DSSOT2DBA;
		p_bRequestToGet3 ACCESS p_DSSOT3DBA;
		p_bRequestToGet4 ACCESS p_DSSOT4DBA;
	
	ELSE
		p_bSOTMagReady1 := FALSE;
		p_bSOTMagReady2 := FALSE;
		p_bSOTMagReady3 := FALSE;
		p_bSOTMagReady4 := FALSE;
		
		p_bSOTMagError1 ACCESS p_AlarmErr;
		p_bSOTMagError2 ACCESS p_AlarmErr;
		p_bSOTMagError3 ACCESS p_AlarmErr;
		p_bSOTMagError4 ACCESS p_AlarmErr;
		
		p_bSOTMagAvailable1 := FALSE;
		p_bSOTMagAvailable2 := FALSE;
		p_bSOTMagAvailable3 := FALSE;
		p_bSOTMagAvailable4 := FALSE;
		
		p_bSOTMagSizeLarge1 := FALSE;
		p_bSOTMagSizeLarge2 := FALSE;
		p_bSOTMagSizeLarge3 := FALSE;
		p_bSOTMagSizeLarge4 := FALSE;
		
		p_bRequestToBring1 := FALSE;
		p_bRequestToBring2 := FALSE;
		p_bRequestToBring3 := FALSE;
		p_bRequestToBring4 := FALSE;
		
		p_bRequestToGet1 := FALSE;
		p_bRequestToGet2 := FALSE;
		p_bRequestToGet3 := FALSE;
		p_bRequestToGet4 := FALSE;
	END_IF
	
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommDisabled:
			IF p_bLinkNtParamProjSOTSenPrep THEN
				bAgvComIODisabled := FALSE;
			ELSE
				bAgvComIODisabled := TRUE;
			END_IF
			
		McSetAGVCommHardIO:
				bAgvComIODisabled := FALSE;
		
	END_CASE
	
	
	IF p_bManual THEN
		p_bBypCurtainSen ACCESS p_UIMnlBypCurtainSen;    //byp
//		p_bBypCurtainSen ACCESS p_DIBypCurtainSensorPB; 
		p_bRstCurtainSen ACCESS p_UISafetyCurtainReset;  //reset rly
		p_bBypCurtainPBLED ACCESS p_UIMnlBypCurtainPBLED;	//pb led
		
	ELSIF p_bLinkOpsRun THEN
				
		IF p_bLinkOpsBypCurtainSen OR p_bLinkAGVCommRdy1 OR p_bLinkAGVCommRdy2 OR p_bLinkAGVCommRdy3 THEN
			p_bBypCurtainSen     := TRUE;
			p_bBypCurtainPBLED	 := p_bLinkOpsBypCurtainLED;
		ELSE
			p_bBypCurtainSen	 := FALSE;
			p_bBypCurtainPBLED	 := p_bLinkOpsBypCurtainLED;
		END_IF

//		p_bBypCurtainPBLED ACCESS p_OpsTravLifLDBypCurtainLED;	//JOHN
//		p_bBypCurtainSenCtrl ACCESS p_OpsTravLifLDBypCurtainSenCtrl; //JOHN
	
	ELSE //stop
		p_bRstCurtainSen ACCESS p_UISafetyCurtainReset;
		p_bBypCurtainSen ACCESS p_UIMnlBypCurtainSen;//ADR(bBypCurtainSen);
		p_bBypCurtainPBLED ACCESS p_UIMnlBypCurtainPBLED;//ADR(bBypCurtainPBLED);
	END_IF
	
	
END_ACTION
