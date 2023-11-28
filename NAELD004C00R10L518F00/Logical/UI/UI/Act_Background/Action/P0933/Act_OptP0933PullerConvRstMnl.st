
ACTION Act_OptP0933RstMnl: 
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_ePullConvStatus = Error OR p_ePullerStatus = Error)) THEN
		
		ePullConvAct	:= ConvActIdle;
		ePullerAct		:= PneuActIdle;
		
		//FB - Motor
		tyP0933PullConv.tyFB.tyBtnCylEnt.bRtCompl				:= FALSE;
		tyP0933PullConv.tyFB.tyBtnEnt.bRtCompl					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnExit.bRtCompl					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bRtCompl					:= FALSE;
		
		tyP0933PullConv.tyFB.tyBtnCylEnt.bValue					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnEnt.bValue					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnExit.bValue					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bValue					:= TRUE;
		
		tyP0933PullConv.tyFB.tyBtnCylEnt.bRtLk					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnEnt.bRtLk						:= FALSE;
		tyP0933PullConv.tyFB.tyBtnExit.bRtLk					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0933PullConv.tyFB.tyBtnCylEnt.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyFB.tyBtnEnt.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyFB.tyBtnExit.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//FB - Pneu
		tyP0933PullConv.tyFB.tyBtnExt.bRtCompl					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRet.bRtCompl					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToHm.bRtCompl				:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToRm.bRtCompl				:= FALSE;
		
		tyP0933PullConv.tyFB.tyBtnExt.bValue					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRet.bValue					:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToHm.bValue				:= FALSE;
		tyP0933PullConv.tyFB.tyBtnRotToRm.bValue				:= FALSE;
		
		tyP0933PullConv.tyFB.tyBtnExt.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyFB.tyBtnRet.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyFB.tyBtnRotToHm.uiMaskRtStat.0		:= TRUE;
		tyP0933PullConv.tyFB.tyBtnRotToRm.uiMaskRtStat.0		:= TRUE;
		
		//DC - Motor
		tyP0933PullConv.tyDC.tyBtnStart.bRtCompl				:= FALSE;
		tyP0933PullConv.tyDC.tyBtnStop.bRtCompl					:= FALSE;
		
		tyP0933PullConv.tyDC.tyBtnStart.bValue					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0933PullConv.tyDC.tyBtnStart.bRtLk					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0933PullConv.tyDC.tyBtnStart.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//DC - Pneu
		tyP0933PullConv.tyDC.tyBtnExt.bRtCompl					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRet.bRtCompl					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRotToHm.bRtCompl				:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRotToRm.bRtCompl				:= FALSE;
		
		tyP0933PullConv.tyDC.tyBtnExt.bValue					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRet.bValue					:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRotToHm.bValue				:= FALSE;
		tyP0933PullConv.tyDC.tyBtnRotToRm.bValue				:= FALSE;
		
		tyP0933PullConv.tyDC.tyBtnExt.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyDC.tyBtnRet.uiMaskRtStat.0			:= TRUE;
		tyP0933PullConv.tyDC.tyBtnRotToHm.uiMaskRtStat.0		:= TRUE;
		tyP0933PullConv.tyDC.tyBtnRotToRm.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0933PullConv.tyCom.tyBtnSwitch.bValue := FALSE;
		
		fUIInRtStatHide(ADR(tyP0933PullConv.tyDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0933PullConv.tyFB.tyLyr.uiRtStat));
		
	END_IF
	
	
	eInShutterAct	:= PneuActIdle;
	eOutShutterAct	:= PneuActIdle;
		
	tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
	tyP0933PullConv.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
	tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
	tyP0933PullConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	
END_ACTION
