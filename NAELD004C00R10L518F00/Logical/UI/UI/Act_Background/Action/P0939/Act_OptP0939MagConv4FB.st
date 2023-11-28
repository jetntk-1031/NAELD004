
ACTION Act_OptP0939MagConv4FB:
	
	//Magazine Conveyor
	IF tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl = TRUE THEN
		eMagConv2Clp4Act	:= MagConv2ClpActStop;
		
		IF p_eMagConv2Clp4Stat = MagConv2ClpActStop AND p_eMagConv2Clp4Status = Done THEN
			eMagConv2Clp4Act	:= MagConv2ClpActIdle;
			
			tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnExit.bValue	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyFB.tyBtnEnt.bValue	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		eMagConv2Clp4Act	:= MagConv2ClpActEnt;
		
		IF p_eMagConv2Clp4Stat = MagConv2ClpActEnt AND p_eMagConv2Clp4Status = Done THEN
			eMagConv2Clp4Act	:= MagConv2ClpActIdle;
			
			tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0939MagConv4.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF (p_eMagConv2Clp4Stat = MagConv2ClpActPreExit AND p_eMagConv2Clp4Status = Done) THEN
		eMagConv2Clp4Act	:= MagConv2ClpActIdle;
			
		tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			
		tyP0939MagConv4.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
		tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	
	ELSIF (p_eMagConv2Clp4Stat = MagConv2ClpActExit AND p_eMagConv2Clp4Status = Done) THEN
		eMagConv2Clp4Act	:= MagConv2ClpActIdle;
					
		tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl	:= FALSE;
					
		tyP0939MagConv4.tyFB.tyBtnExit.bValue	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bRtLk	:= FALSE;
					
		tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= TRUE;
		
	ELSIF tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bValue	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0939MagConv4.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyDI.bMagConvEntSen4  THEN
			eMagConv2Clp4Act	:= MagConv2ClpActExit;
		ELSE
			IF p_tyDI.bMagPresentSen4 THEN
				eMagConv2Clp4Act	:= MagConv2ClpActPreExit;
			ELSE
				eMagConv2Clp4Act	:= MagConv2ClpActExit;
			END_IF
		END_IF		
	END_IF
	
	//Magazine Clamper
	IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Fixed/Bottom
		IF tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue		:= FALSE;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue		:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Remote/Top
		IF tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue	:= FALSE;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
			
		END_IF
		
		//Selection
		IF tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue	:= FALSE;
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelClamp.bRtCompl = TRUE THEN
			tyP0939MagConv4.tyFB.tyBtnSelClamp.bRtCompl	:= FALSE;
			
			tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue	:= TRUE;
			tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
			
		END_IF
		
		// Fixed Clamper
		IF tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp4Act	:= MagConv2ClpActFixClprUnclamp;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprUnclamp AND p_eMagConv2Clp4Status = Done THEN
				
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp4Status = Error THEN
				
				tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue = TRUE THEN
			eMagConv2Clp4Act	:= MagConv2ClpActFixClprClamp;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprClamp AND p_eMagConv2Clp4Status = Done THEN
				
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp4Status = Error THEN
			
				tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Remote Clamper
		IF tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue = TRUE THEN
			
			eMagConv2Clp4Act	:= MagConv2ClpActRmtClprUnclamp;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprUnclamp AND p_eMagConv2Clp4Status = Done THEN
				
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			ELSIF p_eMagConv2Clp4Status = Error THEN
				
				tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue = TRUE THEN
			eMagConv2Clp4Act	:= MagConv2ClpActRmtClprClamp;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprClamp AND p_eMagConv2Clp4Status = Done THEN
				
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			ELSIF p_eMagConv2Clp4Status = Error THEN
				tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Selection Clamper
		IF tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue = TRUE THEN
			
			eMagConvSelClp4Act	:= PneuActExt;
			
			IF p_eSelClamp4Stat = PneuActExt AND p_eSelClamp4Status = Done THEN
				
				eMagConvSelClp4Act	:= PneuActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp4Status = Error THEN
				eMagConvSelClp4Act	:= PneuActIdle;
				tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue = TRUE THEN
			eMagConvSelClp4Act	:= PneuActRet;
			
			IF p_eSelClamp4Stat = PneuActRet AND p_eSelClamp4Status = Done THEN
				
				eMagConvSelClp4Act	:= PneuActIdle;
				
				tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			ELSIF p_eSelClamp4Status = Error THEN
				eMagConvSelClp4Act	:= PneuActIdle;
				tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue	:= FALSE;
				
			END_IF
			
		END_IF
		
		//Update Status
		tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bMagConv2Clp4ClprFixClampCtrl;
		tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv2Clp4ClprFixClampCtrl;
		tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv2Clp4ClprRmtClampCtrl;
		tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv2Clp4ClprRmtClampCtrl;
		
		tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
		tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp4RetCtrl;
		tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp4ExtCtrl;
	END_IF
	
	//Mask
	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
		
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));

	ELSE
		
		IF p_eMagConv2Clp4Status = Error THEN
			
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
			
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl = TRUE THEN
			
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSIF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue = TRUE
			OR tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
			OR tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue = TRUE
			THEN
			
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		ELSE
			
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat));
			
		END_IF
	END_IF
	

	
	IF p_tyDI.bMagConvCAB717MagSen4 THEN
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat));
	END_IF
	
END_ACTION
