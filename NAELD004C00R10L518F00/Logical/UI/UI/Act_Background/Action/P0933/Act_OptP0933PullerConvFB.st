
ACTION Act_OptP0933PullerConvFB: 
	
	//Parameter
	diMnlMtrPshrExtSpd	:= tyP0933PullConv.tyFB.tyNumExtSpd.diValue;
	//diMnlMtrPshrExtTorq	:= tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue;
//	diMnlMtrPshrExtTorq	:= 30 + ((72/90)*(tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue - 10)); //70 = 100N -30N
//	diMnlMtrPshrExtTorq := 15 + (((tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue -10)/10)*167/100); //15-30 N used
//	diMnlMtrPshrExtTorq := p_tyNtParamCurr.tyPPTorqParam.usiStartTorque + (((tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue -10)/10)*p_tyNtParamCurr.tyPPTorqParam.uiRatio/100); //17-50 N used
	diMnlMtrPshrExtTorq := p_tyNtParamCurr.tyPPTorqParam.usiStartTorque + REAL_TO_DINT(DINT_TO_REAL(tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValue -10)*UINT_TO_REAL(p_tyNtParamCurr.tyPPTorqParam.uiRatio)/1000.0);
	//Alarm  
	IF p_bAlarmErr THEN
		tyP0933PullConv.tyFB.tyBtnStop.bRtCompl := TRUE;
	END_IF
	
	//Conveyor
	IF tyP0933PullConv.tyFB.tyBtnStop.bRtCompl = TRUE THEN
		diMnlPPJogSpd	:= 0;
		ePullConvAct	:= ConvActPullerRstAll;
		
		IF  p_ePullConvStat = ConvActPullerRstAll AND p_ePullConvStatus = Done THEN
			
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnCylEnt.bValue		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnCylEnt.bRtLk		:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnEnt.bValue		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnEnt.bRtLk			:= FALSE;
		
			tyP0933PullConv.tyFB.tyBtnExit.bRtCompl		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnExit.bValue		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnExit.bRtLk		:= FALSE;
		
			tyP0933PullConv.tyFB.tyBtnStop.bRtCompl		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnStop.bValue		:= TRUE;
			tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF	
		
	ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl = TRUE THEN	
		tyP0933PullConv.tyFB.tyBtnCylEnt.bValue		:= TRUE;
		tyP0933PullConv.tyFB.tyBtnCylEnt.bRtLk		:= TRUE;
		
		tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
		diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
		ePullConvAct	:= ConvActEntPuller;
		
		fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
		IF p_ePullConvStat = ConvActEntPuller AND p_ePullConvStatus = Done THEN
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl	:= FALSE;
		
			tyP0933PullConv.tyFB.tyBtnCylEnt.bValue		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnCylEnt.bRtLk		:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
			tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
			
		fUIInRtStatHide(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		END_IF	
		
	ELSIF tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl = TRUE THEN	
		tyP0933PullConv.tyFB.tyBtnEnt.bValue	:= TRUE;
		tyP0933PullConv.tyFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0933PullConv.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		ePullConvAct	:= ConvActEnt;
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		
		IF p_ePullConvStat = ConvActEnt AND p_ePullConvStatus = Done THEN
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnStop.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
			
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		END_IF
		
	ELSIF tyP0933PullConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0933PullConv.tyFB.tyBtnExit.bValue	:= TRUE;
		tyP0933PullConv.tyFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0933PullConv.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		ePullConvAct	:= ConvActExit;
		
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		
		IF p_ePullConvStat = ConvActExit AND p_ePullConvStatus = Done THEN
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnExit.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
			
			tyP0933PullConv.tyFB.tyBtnStop.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
			
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		END_IF
		
	END_IF
	
	//Puller
	IF (p_tyNtParamCurr.bProjPullerRotCylPrep = TRUE OR p_tyNtParamCurr.bProjMotorizedPullerPrep) AND tyP0933PullConv.tyFB.tyBtnStop.bRtCompl = FALSE THEN
		
		IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
			IF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl = TRUE THEN
				tyP0933PullConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
				
				tyP0933PullConv.tyFB.tyBtnRet.bValue	:= TRUE;
				tyP0933PullConv.tyFB.tyBtnExt.bValue	:= FALSE;
				
			ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl = TRUE THEN
				tyP0933PullConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
				
				tyP0933PullConv.tyFB.tyBtnExt.bValue	:= TRUE;
				tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			END_IF
			
			IF tyP0933PullConv.tyFB.tyBtnRet.bValue = TRUE THEN
				ePullConvAct	:= ConvActPullerRet;
				diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
				
				tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePullConvStat = ConvActPullerRet AND p_ePullConvStatus = Done THEN
					ePullConvAct	:= ConvActIdle;
					diMnlPPJogSpd	:= 0;
					tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
					
				ELSIF p_ePullConvStatus = Error THEN
					tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
					diMnlPPJogSpd	:= 0;
				END_IF
				
			ELSIF tyP0933PullConv.tyFB.tyBtnExt.bValue = TRUE THEN
				ePullConvAct	:= ConvActPullerExt;
				diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
				tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePullConvStat = ConvActPullerExt AND p_ePullConvStatus = Done THEN
					ePullConvAct	:= ConvActIdle;
					diMnlPPJogSpd	:= 0;
					tyP0933PullConv.tyFB.tyBtnExt.bValue := FALSE;
					
				ELSIF p_ePullConvStatus = Error THEN
					tyP0933PullConv.tyFB.tyBtnExt.bValue := FALSE;
					diMnlPPJogSpd	:= 0;
				END_IF
				
			END_IF
			
			//Update Status
			tyP0933PullConv.tyDC.tyBtnRet.bValue	:= p_bPullConvPullerRetCtrl;
			tyP0933PullConv.tyDC.tyBtnExt.bValue	:= p_bPullConvPullerExtCtrl;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.bProjPullerRotCylPrep = FALSE AND tyP0933PullConv.tyFB.tyBtnStop.bRtCompl = FALSE
		THEN
		
		IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
			IF tyP0933PullConv.tyFB.tyBtnRet.bRtCompl = TRUE THEN
				tyP0933PullConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
				
				tyP0933PullConv.tyFB.tyBtnRet.bValue	:= TRUE;
				tyP0933PullConv.tyFB.tyBtnExt.bValue	:= FALSE;
				
			ELSIF tyP0933PullConv.tyFB.tyBtnExt.bRtCompl = TRUE THEN
				tyP0933PullConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
				
				tyP0933PullConv.tyFB.tyBtnExt.bValue	:= TRUE;
				tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			END_IF
			
			IF tyP0933PullConv.tyFB.tyBtnRet.bValue = TRUE THEN
				ePullerAct	:= PneuActRet;
				
				tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePullerStat = PneuActRet AND p_ePullerStatus = Done THEN
					ePullerAct	:= PneuActIdle;
					
					tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
					
				ELSIF p_ePullerStatus = Error THEN
					tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
					
				END_IF
				
			ELSIF tyP0933PullConv.tyFB.tyBtnExt.bValue = TRUE THEN
				ePullerAct	:= PneuActExt;
				
				tyP0933PullConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PullConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePullerStat = PneuActExt AND p_ePullerStatus = Done THEN
					ePullerAct	:= PneuActIdle;
					
					tyP0933PullConv.tyFB.tyBtnExt.bValue := FALSE;
					
				ELSIF p_ePullerStatus = Error THEN
					tyP0933PullConv.tyFB.tyBtnExt.bValue := FALSE;
					
				END_IF
				
			END_IF
			
			//Update Status
			tyP0933PullConv.tyDC.tyBtnRet.bValue	:= p_bPullerRetCtrl;
			tyP0933PullConv.tyDC.tyBtnExt.bValue	:= p_bPullerExtCtrl;
			
		END_IF
	
	ELSE
		
		tyP0933PullConv.tyFB.tyBtnExt.bRtCompl		:= FALSE;
		tyP0933PullConv.tyFB.tyBtnExt.bValue		:= FALSE;
		tyP0933PullConv.tyFB.tyBtnExt.bRtLk			:= FALSE;
		
		tyP0933PullConv.tyFB.tyBtnRet.bRtCompl		:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRet.bValue		:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRet.bRtLk			:= FALSE;
		
	END_IF
	
	//Rotating Cylinder
	IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
		IF tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl = TRUE THEN
			tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl	:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnRotToHm.bValue	:= TRUE;
			tyP0933PullConv.tyFB.tyBtnRotToRm.bValue	:= FALSE;
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl = TRUE THEN
			tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl	:= FALSE;
			
			tyP0933PullConv.tyFB.tyBtnRotToRm.bValue	:= TRUE;
			tyP0933PullConv.tyFB.tyBtnRotToHm.bValue	:= FALSE;
			
		END_IF
		
		IF tyP0933PullConv.tyFB.tyBtnRotToHm.bValue = TRUE THEN
			ePullConvAct	:= ConvActRotHome;
			
			IF p_ePullConvStat = ConvActRotHome AND p_ePullConvStatus = Done THEN
				ePullConvAct	:= ConvActIdle;
				
				tyP0933PullConv.tyFB.tyBtnRotToHm.bValue	:= FALSE;
				
			ELSIF p_ePullConvStatus = Error THEN
				tyP0933PullConv.tyFB.tyBtnRotToHm.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToRm.bValue = TRUE THEN
			ePullConvAct	:= ConvActRotRemote;
			
			IF p_ePullConvStat = ConvActRotRemote AND p_ePullConvStatus = Done THEN
				ePullConvAct	:= ConvActIdle;
				
				tyP0933PullConv.tyFB.tyBtnRotToRm.bValue := FALSE;
				
			ELSIF p_ePullConvStatus = Error THEN
				tyP0933PullConv.tyFB.tyBtnRotToRm.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Update Status
		tyP0933PullConv.tyDC.tyBtnRotToHm.bValue	:= NOT p_bPullConvRotRemoteCtrl;
		tyP0933PullConv.tyDC.tyBtnRotToRm.bValue	:= p_bPullConvRotRemoteCtrl;
		
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
		
		fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
	ELSE
	
		IF p_ePullConvStatus = Error THEN
			
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl = TRUE THEN
			
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0933PullConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
			
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0933PullConv.tyFB.tyBtnExt.bValue = TRUE OR tyP0933PullConv.tyFB.tyBtnRet.bValue = TRUE THEN	
			
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0933PullConv.tyFB.tyBtnRotToHm.bValue = TRUE OR tyP0933PullConv.tyFB.tyBtnRotToRm.bValue = TRUE THEN	
			
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSE
			
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		END_IF	
	END_IF
	
	IF p_bLifterBtmSltAPosDiff OR (p_bTravAPosDiff AND p_bTravBPosDiff AND p_bTravCPosDiff)
		OR p_tyDI.bInShutterOpenRS = FALSE
		THEN
		//	fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat));
		//	fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat));
	END_IF
	
	IF p_tyDI.bPullerExtRS = FALSE THEN
		fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat));
	END_IF
	
	
	
	//Shutter Control
	IF tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
	tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat	:= TRUE;
	tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat	:= TRUE;
	
END_ACTION
