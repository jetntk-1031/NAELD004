
ACTION Act_OptP0921InletShutterDC2: 
	
	IF tyP0921InletNOutletShutter.tyInletShutterCom2.tyBtnSwitch.bValue = TRUE THEN
		IF p_bInShutterTwoCtrlOut2 = FALSE THEN
			IF tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue	:= FALSE;
				
				eInShutterAct2	:= PneuActSetRet;
				
				IF p_eInShutterStat2 = PneuActSetRet AND p_eInShutterStatus2 = Done THEN
					eInShutterAct2	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue	:= FALSE;
				
				eInShutterAct2	:= PneuActSetExt;
				
				IF p_eInShutterStat2 = PneuActSetExt AND p_eInShutterStatus2 = Done THEN
					eInShutterAct2	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue = TRUE) THEN
					eInShutterAct2	:= PneuActSetAll;
					
					IF p_eInShutterStat2 = PneuActSetAll AND p_eInShutterStatus2 = Done THEN
						eInShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue = FALSE) THEN	
					eInShutterAct2	:= PneuActSetRet;
					
					IF p_eInShutterStat2 = PneuActSetRet AND p_eInShutterStatus2 = Done THEN
						eInShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					

				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bValue = TRUE) THEN	
					eInShutterAct2	:= PneuActSetExt;
					
					IF p_eInShutterStat2 = PneuActSetExt AND p_eInShutterStatus2 = Done THEN
						eInShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eInShutterAct2	:= PneuActRstAll;
					
					IF p_eInShutterStat2 = PneuActRstAll AND p_eInShutterStatus2 = Done THEN
						eInShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB2.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	

END_ACTION
