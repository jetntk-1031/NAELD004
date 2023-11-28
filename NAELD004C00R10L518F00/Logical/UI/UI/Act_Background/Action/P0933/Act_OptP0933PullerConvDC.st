
ACTION Act_OptP0933PullerConvDC: 
	
	//Conveyor
	IF tyP0933PullConv.tyDC.tyBtnStop.bRtCompl = TRUE THEN	
		ePullConvAct	:= ConvActStop;
		
		IF p_ePullConvStat = ConvActStop AND p_ePullConvStatus = Done THEN
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0933PullConv.tyDC.tyBtnStop.bValue		:= TRUE;
			tyP0933PullConv.tyDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0933PullConv.tyDC.tyBtnStart.bRtCompl	:= FALSE;
			tyP0933PullConv.tyDC.tyBtnStart.bValue		:= FALSE;
			tyP0933PullConv.tyDC.tyBtnStart.bRtLk		:= FALSE;
		END_IF	
		
	ELSIF tyP0933PullConv.tyDC.tyBtnStart.bRtCompl = TRUE THEN	
		tyP0933PullConv.tyDC.tyBtnStart.bValue	:= TRUE;
		tyP0933PullConv.tyDC.tyBtnStart.bRtLk	:= TRUE;
		
		tyP0933PullConv.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0933PullConv.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		ePullConvAct	:= ConvActSetMtrSigOnOrLToR;
		
		IF p_ePullConvStat = ConvActSetMtrSigOnOrLToR AND p_ePullConvStatus = Done THEN
			ePullConvAct	:= ConvActIdle;
			
			tyP0933PullConv.tyDC.tyBtnStart.bRtCompl	:= FALSE;
		END_IF	
		
	END_IF
	
	//Puller
	IF p_tyNtParamCurr.bProjPullerRotCylPrep = TRUE THEN
		
		IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
			
			IF p_bPullConvPullerTwoOutputCtrl = FALSE THEN
				
				IF tyP0933PullConv.tyDC.tyBtnRet.bRtCompl = TRUE THEN
					tyP0933PullConv.tyDC.tyBtnRet.bValue	:= TRUE;
					tyP0933PullConv.tyDC.tyBtnExt.bValue	:= FALSE;
					
					ePullConvAct	:= ConvActPullerSetRet;
					
					IF p_ePullConvStat = ConvActPullerSetRet AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF tyP0933PullConv.tyDC.tyBtnExt.bRtCompl = TRUE THEN
					tyP0933PullConv.tyDC.tyBtnExt.bValue	:= TRUE;
					tyP0933PullConv.tyDC.tyBtnRet.bValue	:= FALSE;
					
					ePullConvAct	:= ConvActPullerSetExt;
					
					IF p_ePullConvStat = ConvActPullerSetExt AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			ELSE
				
				IF (tyP0933PullConv.tyDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0933PullConv.tyDC.tyBtnExt.bRtCompl = TRUE) THEN
					IF (tyP0933PullConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = TRUE) THEN
						ePullConvAct	:= ConvActPullerSetAll;
						
						IF p_ePullConvStat = ConvActPullerSetAll AND p_ePullConvStatus = Done THEN
							ePullConvAct	:= ConvActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSIF (tyP0933PullConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = FALSE) THEN
						ePullConvAct	:= ConvActPullerSetRet;
						
						IF p_ePullConvStat = ConvActPullerSetRet AND p_ePullConvStatus = Done THEN
							ePullConvAct	:= ConvActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSIF (tyP0933PullConv.tyDC.tyBtnRet.bValue = FALSE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = TRUE) THEN
						ePullConvAct	:= ConvActPullerSetExt;
						
						IF p_ePullConvStat = ConvActPullerSetExt AND p_ePullConvStatus = Done THEN
							ePullConvAct	:= ConvActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSE
						ePullConvAct	:= ConvActPullerRstAll;
						
						IF p_ePullConvStat = ConvActPullerRstAll AND p_ePullConvStatus = Done THEN
							ePullConvAct	:= ConvActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					END_IF
					
				END_IF
				
			END_IF
			
			tyP0933PullConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnExt.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
			
		END_IF
		
	ELSE
		
		IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
			
			IF p_bPullerTwoCtrlOut = FALSE THEN
				
				IF tyP0933PullConv.tyDC.tyBtnRet.bRtCompl = TRUE THEN
					tyP0933PullConv.tyDC.tyBtnRet.bValue	:= TRUE;
					tyP0933PullConv.tyDC.tyBtnExt.bValue	:= FALSE;
					
					ePullerAct	:= PneuActSetRet;
					
					IF p_ePullerStat = PneuActSetRet AND p_ePullerStatus = Done THEN
						ePullerAct	:= PneuActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF tyP0933PullConv.tyDC.tyBtnExt.bRtCompl = TRUE THEN
					tyP0933PullConv.tyDC.tyBtnExt.bValue	:= TRUE;
					tyP0933PullConv.tyDC.tyBtnRet.bValue	:= FALSE;
					
					ePullerAct	:= PneuActSetExt;
					
					IF p_ePullerStat = PneuActSetExt AND p_ePullerStatus = Done THEN
						ePullerAct	:= PneuActIdle;
						
						tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			ELSE
				
				IF (tyP0933PullConv.tyDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0933PullConv.tyDC.tyBtnExt.bRtCompl = TRUE) THEN
					IF (tyP0933PullConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = TRUE) THEN
						
						ePullerAct	:= PneuActSetAll;
						
						IF p_ePullerStat = PneuActSetAll AND p_ePullerStatus = Done THEN
							ePullerAct	:= PneuActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSIF (tyP0933PullConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = FALSE) THEN
						
						ePullerAct	:= PneuActSetRet;
						
						IF p_ePullerStat = PneuActSetRet AND p_ePullerStatus = Done THEN
							ePullerAct	:= PneuActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSIF (tyP0933PullConv.tyDC.tyBtnRet.bValue = FALSE) AND (tyP0933PullConv.tyDC.tyBtnExt.bValue = TRUE) THEN
						
						ePullerAct	:= PneuActSetExt;
						
						IF p_ePullerStat = PneuActSetExt AND p_ePullerStatus = Done THEN
							ePullerAct	:= PneuActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					ELSE
						
						ePullerAct	:= PneuActRstAll;
						
						IF p_ePullerStat = PneuActRstAll AND p_ePullerStatus = Done THEN
							ePullerAct	:= PneuActIdle;
							
							tyP0933PullConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
							tyP0933PullConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
						END_IF
						
					END_IF
					
				END_IF
				
			END_IF
			
			tyP0933PullConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnExt.bValue	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
			tyP0933PullConv.tyFB.tyBtnRet.bValue	:= FALSE;
			
		END_IF
		
	END_IF
	
		
	
	//Rotating Cylinder
	IF tyP0933PullConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bPullConvRotTwoOutputCtrl = FALSE THEN
			
			IF tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl = TRUE THEN
				tyP0933PullConv.tyDC.tyBtnRotToHm.bValue	:= TRUE;
				tyP0933PullConv.tyDC.tyBtnRotToRm.bValue	:= FALSE;
				
				ePullConvAct	:= ConvActRotSetHome;
				
				IF p_ePullConvStat = ConvActRotSetHome AND p_ePullConvStatus = Done THEN
					ePullConvAct	:= ConvActIdle;
					
					tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl = TRUE THEN
				tyP0933PullConv.tyDC.tyBtnRotToRm.bValue	:= TRUE;
				tyP0933PullConv.tyDC.tyBtnRotToHm.bValue	:= FALSE;
				
				ePullConvAct	:= ConvActRotSetRmt;
				
				IF p_ePullConvStat = ConvActRotSetRmt AND p_ePullConvStatus = Done THEN
					ePullConvAct	:= ConvActIdle;
					
					tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
		ELSE
			
			IF (tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl = TRUE) OR (tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl = TRUE) THEN
				IF (tyP0933PullConv.tyDC.tyBtnRotToHm.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnRotToRm.bValue = TRUE) THEN
					ePullConvAct	:= ConvActRotSetAll;
					
					IF p_ePullConvStat = ConvActRotSetAll AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl	:= FALSE;
						tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0933PullConv.tyDC.tyBtnRotToHm.bValue = TRUE) AND (tyP0933PullConv.tyDC.tyBtnRotToRm.bValue = FALSE) THEN
					ePullConvAct	:= ConvActRotSetHome;
					
					IF p_ePullConvStat = ConvActRotSetHome AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl	:= FALSE;
						tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0933PullConv.tyDC.tyBtnRotToHm.bValue = FALSE) AND (tyP0933PullConv.tyDC.tyBtnRotToRm.bValue = TRUE) THEN
					ePullConvAct	:= ConvActRotSetRmt;
					
					IF p_ePullConvStat = ConvActRotSetRmt AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl	:= FALSE;
						tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl	:= FALSE;
					END_IF
					
				ELSE
					ePullConvAct	:= ConvActRotRstAll;
					
					IF p_ePullConvStat = ConvActRotRstAll AND p_ePullConvStatus = Done THEN
						ePullConvAct	:= ConvActIdle;
						
						tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl	:= FALSE;
						tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF
			
		END_IF
		
		tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl	:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToRm.bValue	:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl	:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToHm.bValue	:= FALSE;
		
	END_IF
	
	
	//For Motorized Puller
	IF tyP0933PullConv.tyDC.tyBtnAlarmRst.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnAlarmRst.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetAlmRst;
			
			IF p_eMtrPshrStat = MtrPshrActSetAlmRst AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnAlarmRst.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstAlmRst;
			
			IF p_eMtrPshrStat = MtrPshrActRstAlmRst AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnAlarmRst.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PullConv.tyDC.tyBtnBrake.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnBrake.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetBrake;
			
			IF p_eMtrPshrStat = MtrPshrActSetBrake AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnBrake.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstBrake;
			
			IF p_eMtrPshrStat = MtrPshrActRstBrake AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnBrake.bRtCompl	:= FALSE;
			END_IF
		END_IF
		

		
	ELSIF tyP0933PullConv.tyDC.tyBtnSigOn.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnSigOn.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSigOn;
			
			IF p_eMtrPshrStat = MtrPshrActSetSigOn AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSigOn.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSigOn;
			
			IF p_eMtrPshrStat = MtrPshrActRstSigOn AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSigOn.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PullConv.tyDC.tyBtnSpdBinBit0.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnSpdBinBit0.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit0;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit0 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit0.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit0;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit0 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit0.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PullConv.tyDC.tyBtnSpdBinBit1.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnSpdBinBit1.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit1;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit1 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit1.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit1;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit1 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit1.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PullConv.tyDC.tyBtnSpdBinBit2.bRtCompl = TRUE THEN
		
		IF tyP0933PullConv.tyDC.tyBtnSpdBinBit2.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit2;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit2 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit2.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit2;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit2 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PullConv.tyDC.tyBtnSpdBinBit2.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	END_IF
	
	//Mask
	IF p_ePullConvStatus = Error OR p_ePullerStatus = Error THEN
		
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRotToHm.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRotToRm.uiMaskRtStat));
		
	ELSIF tyP0933PullConv.tyDC.tyBtnStart.bValue = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRotToHm.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnRotToRm.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnRet.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnRotToHm.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyBtnRotToRm.uiMaskRtStat));
		
	END_IF
	
	
	//Mask
//	tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error OR tyP0933PullConv.tyDC.tyBtnRet.bValue);
	tyP0933PullConv.tyDC.tyBtnRet.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error OR tyP0933PullConv.tyDC.tyBtnExt.bValue);
	tyP0933PullConv.tyDC.tyBtnSigOn.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PullConv.tyDC.tyBtnAlarmRst.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PullConv.tyDC.tyBtnBrake.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PullConv.tyDC.tyBtnSpdBinBit0.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PullConv.tyDC.tyBtnSpdBinBit1.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PullConv.tyDC.tyBtnSpdBinBit2.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	
	IF p_bLifterBtmSltAPosDiff OR (p_bTravAPosDiff AND p_bTravBPosDiff AND p_bTravCPosDiff)
		OR p_eMtrPshrStatus = Error
		THEN
		fUIInRtStatOff(ADR(tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat));
	END_IF
	
END_ACTION
