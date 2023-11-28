
ACTION Act_OptP0924TrolleyLckDC:
	
	IF tyP0924TrolleyLck.tyCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bTrolleyLckTwoCtrlOut = FALSE THEN
			
			IF tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl = TRUE THEN
				tyP0924TrolleyLck.tyDC.tyBtnRet.bValue	:= TRUE;
				tyP0924TrolleyLck.tyDC.tyBtnExt.bValue	:= FALSE;
				
				eTrolleyLckAct1	:= PneuActSetRet; //4
				
				IF p_eTrolleyLckStat = PneuActSetRet AND p_eTrolleyLckStatus = Done THEN
					eTrolleyLckAct1	:= PneuActIdle;
					
					tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl = TRUE THEN
				tyP0924TrolleyLck.tyDC.tyBtnExt.bValue	:= TRUE;
				tyP0924TrolleyLck.tyDC.tyBtnRet.bValue	:= FALSE;
				
				eTrolleyLckAct1	:= PneuActSetExt; //3
				
				IF p_eTrolleyLckStat = PneuActSetExt AND p_eTrolleyLckStatus = Done THEN
					eTrolleyLckAct1	:= PneuActIdle;
					
					tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl = TRUE THEN
				tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue	:= TRUE;
				tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue	:= FALSE;
			
				eTrolleyLckAct2	:= PneuActSetRet; //4
			
				IF p_eTrolleyLckStat2 = PneuActSetRet AND p_eTrolleyLckStatus2 = Done THEN
					eTrolleyLckAct2	:= PneuActIdle;
				
					tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
				END_IF
			
			ELSIF tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl = TRUE THEN
				tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue	:= TRUE;
				tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue	:= FALSE;
			
				eTrolleyLckAct2	:= PneuActSetExt; //3
			
				IF p_eTrolleyLckStat2 = PneuActSetExt AND p_eTrolleyLckStatus2 = Done THEN
					eTrolleyLckAct2	:= PneuActIdle;
				
					tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
				END_IF
			END_IF	
					
		ELSE
			//Trolley 1---------------
			IF (tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl = TRUE) THEN
				
				IF (tyP0924TrolleyLck.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt.bValue = TRUE) THEN
					eTrolleyLckAct1	:= PneuActSetAll;
					
					IF p_eTrolleyLckStat = PneuActSetAll AND p_eTrolleyLckStatus = Done THEN
						eTrolleyLckAct1	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0924TrolleyLck.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt.bValue = FALSE) THEN	
					eTrolleyLckAct1	:= PneuActSetRet;
					
					IF p_eTrolleyLckStat = PneuActSetRet AND p_eTrolleyLckStatus = Done THEN
						eTrolleyLckAct1	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0924TrolleyLck.tyDC.tyBtnRet.bValue = FALSE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt.bValue = TRUE) THEN	
					eTrolleyLckAct1	:= PneuActSetExt;
					
					IF p_eTrolleyLckStat = PneuActSetExt AND p_eTrolleyLckStatus = Done THEN
						eTrolleyLckAct1	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eTrolleyLckAct1	:= PneuActRstAll;
					
					IF p_eTrolleyLckStat = PneuActRstAll AND p_eTrolleyLckStatus = Done THEN
						eTrolleyLckAct1	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			//Trolley 2---------------
			IF (tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl = TRUE) OR (tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl = TRUE) THEN
				
				IF (tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue = TRUE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue = TRUE) THEN
					eTrolleyLckAct2	:= PneuActSetAll;
					
					IF p_eTrolleyLckStat2 = PneuActSetAll AND p_eTrolleyLckStatus2 = Done THEN
						eTrolleyLckAct2	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue = TRUE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue = FALSE) THEN	
					eTrolleyLckAct2	:= PneuActSetRet;
					
					IF p_eTrolleyLckStat2 = PneuActSetRet AND p_eTrolleyLckStatus2 = Done THEN
						eTrolleyLckAct2	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue = FALSE) AND (tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue = TRUE) THEN	
					eTrolleyLckAct2	:= PneuActSetExt;
					
					IF p_eTrolleyLckStat2 = PneuActSetExt AND p_eTrolleyLckStatus2 = Done THEN
						eTrolleyLckAct2	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eTrolleyLckAct2	:= PneuActRstAll;
					
					IF p_eTrolleyLckStat2 = PneuActRstAll AND p_eTrolleyLckStatus2 = Done THEN
						eTrolleyLckAct2	:= PneuActIdle;
						
						tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
						tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
		END_IF
		
		tyP0924TrolleyLck.tyFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt.bValue		:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet.bValue		:= FALSE;
				
		tyP0924TrolleyLck.tyFB.tyBtnExt2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue		:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue		:= FALSE;

	END_IF
	
END_ACTION
