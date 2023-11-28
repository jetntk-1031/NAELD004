
ACTION Act_OptP0921InletShutterFB3: 

	IF tyP0921InletNOutletShutter.tyInletShutterCom3.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue = TRUE THEN
			eInShutterAct3	:= PneuActRet;
				
			IF p_eInShutterStat3 = PneuActRet AND p_eInShutterStatus3 = Done THEN
				eInShutterAct3	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eInShutterStatus3 = Error THEN
				tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue = TRUE THEN
			eInShutterAct3	:= PneuActExt;
		
			IF p_eInShutterStat3 = PneuActExt AND p_eInShutterStatus3 = Done THEN
				eInShutterAct3	:= PneuActIdle;
		
				tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue := FALSE; 
			ELSIF p_eInShutterStatus3 = Error THEN	
				tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue := FALSE; 
			END_IF	
		END_IF
		
		//Update Direct Control Status
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;	
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue	:= p_bInShutterRetCtrl3;
		tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue	:= p_bInShutterExtCtrl3;	

	END_IF
		
	
END_ACTION
