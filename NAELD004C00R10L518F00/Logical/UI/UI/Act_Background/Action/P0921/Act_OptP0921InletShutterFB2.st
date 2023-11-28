
ACTION Act_OptP0921InletShutterFB2: 

	IF tyP0921InletNOutletShutter.tyInletShutterCom2.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue = TRUE THEN
			eInShutterAct2	:= PneuActRet;
				
			IF p_eInShutterStat2 = PneuActRet AND p_eInShutterStatus2 = Done THEN
				eInShutterAct2	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eInShutterStatus2 = Error THEN
				tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue = TRUE THEN
			eInShutterAct2	:= PneuActExt;
		
			IF p_eInShutterStat2 = PneuActExt AND p_eInShutterStatus2 = Done THEN
				eInShutterAct2	:= PneuActIdle;
		
				tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue := FALSE; 
			ELSIF p_eInShutterStatus2 = Error THEN	
				tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue := FALSE; 
			END_IF	
		END_IF
		
		//Update Direct Control Status
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;	
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue	:= p_bInShutterRetCtrl2;
		tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue	:= p_bInShutterExtCtrl2;	

	END_IF
		
	
END_ACTION
