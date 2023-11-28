
ACTION Act_OptP0939RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagConv2Clp4Status = Error)) THEN
		
		eMagConv2Clp4Act	:= MagConv2ClpActIdle;
		eMagConvSelClp4Act	:= PneuActIdle;
		//Magazine Conveyor
		//FB
		tyP0939MagConv4.tyFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0939MagConv4.tyFB.tyBtnEnt.bValue				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bValue				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0939MagConv4.tyFB.tyBtnEnt.bRtLk					:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0939MagConv4.tyFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Direct
		tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0939MagConv4.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnStop.bValue				:= TRUE;
		
		tyP0939MagConv4.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0939MagConv4.tyDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Magazine Clamper
		//FB
		//Fixed/Bottom
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote/Top
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0939MagConv4.tyFB.tyBtnSelClamp.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bRtCompl		:= FALSE;
		
		tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue			:= FALSE;
		
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyFB.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed/Bottom
		tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote/Top
		tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl			:= FALSE;
		
		tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue				:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue				:= FALSE;
		
		tyP0939MagConv4.tyDC.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0939MagConv4.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0939MagConv4.tyCom.tyBtnSwitch.bValue := FALSE;
		
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			
			fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0939MagConv4.tyFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
END_ACTION
