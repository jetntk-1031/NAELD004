
ACTION Act_OptP0921InletShutterDC3: 
	
	IF tyP0921InletNOutletShutter.tyInletShutterCom3.tyBtnSwitch.bValue = TRUE THEN
		IF p_bInShutterTwoCtrlOut = FALSE THEN
			IF tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue	:= FALSE;
				
				eInShutterAct3	:= PneuActSetRet;
				
				IF p_eInShutterStat3 = PneuActSetRet AND p_eInShutterStatus3 = Done THEN
					eInShutterAct3	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue	:= FALSE;
				
				eInShutterAct3	:= PneuActSetExt;
				
				IF p_eInShutterStat3 = PneuActSetExt AND p_eInShutterStatus3 = Done THEN
					eInShutterAct3	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue = TRUE) THEN
					eInShutterAct3	:= PneuActSetAll;
					
					IF p_eInShutterStat3 = PneuActSetAll AND p_eInShutterStatus3 = Done THEN
						eInShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue = FALSE) THEN	
					eInShutterAct3	:= PneuActSetRet;
					
					IF p_eInShutterStat3 = PneuActSetRet AND p_eInShutterStatus3 = Done THEN
						eInShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen2.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue = FALSE) THEN	
					eInShutterAct2	:= PneuActSetRet;
					
					IF p_eInShutterStat2 = PneuActSetRet AND p_eInShutterStatus2 = Done THEN
						eInShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen2.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF

				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen3.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue = FALSE) THEN	
					eInShutterAct3	:= PneuActSetRet;
					
					IF p_eInShutterStat3 = PneuActSetRet AND p_eInShutterStatus3 = Done THEN
						eInShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen3.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF

				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bValue = TRUE) THEN	
					eInShutterAct3	:= PneuActSetExt;
					
					IF p_eInShutterStat3 = PneuActSetExt AND p_eInShutterStatus3 = Done THEN
						eInShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eInShutterAct3	:= PneuActRstAll;
					
					IF p_eInShutterStat3 = PneuActRstAll AND p_eInShutterStatus3 = Done THEN
						eInShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB3.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	

END_ACTION
