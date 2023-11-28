
ACTION Act_OptP0921RstMnl: 
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eInShutterStatus = Error) OR (p_eInShutterStatus2 = Error) OR (p_eInShutterStatus3 = Error)) THEN
		
		eInShutterAct	:= PneuActIdle;
		eInShutterAct2	:= PneuActIdle;
		eInShutterAct3	:= PneuActIdle;
	
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue	:= TRUE;
		
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;

		//in shutt 2
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue	:= TRUE;
		
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= FALSE;

		//in shutt3
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue	:= TRUE;
		
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= FALSE;

	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eOutShutterStatus = Error) OR (p_eOutShutterStatus2 = Error) ) THEN
		
		eOutShutterAct	:= PneuActIdle;
		eOutShutterAct2	:= PneuActIdle;
	
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue		:= FALSE;
		
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue		:= FALSE;
		
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue		:= FALSE;
		
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue		:= FALSE;

	END_IF
	
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		
		//In Shutter
		tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterCom2.tyBtnSwitch.bValue		:= FALSE;
	
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
		
		//Out Shutter
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bValue   := FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bValue   := FALSE;
	
		fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat));
		
	END_IF
	
END_ACTION
