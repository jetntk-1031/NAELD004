
ACTION Act_OptP0924TrolleyLckFB:
	

	IF tyP0924TrolleyLck.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0924TrolleyLck.tyFB.tyBtnRet.bRtCompl = TRUE THEN
			tyP0924TrolleyLck.tyFB.tyBtnRet.bRtCompl	:= FALSE;
			
			tyP0924TrolleyLck.tyFB.tyBtnRet.bValue		:= TRUE;
			tyP0924TrolleyLck.tyFB.tyBtnExt.bValue		:= FALSE;
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnExt.bRtCompl = TRUE THEN
			tyP0924TrolleyLck.tyFB.tyBtnExt.bRtCompl	:= FALSE;
			
			tyP0924TrolleyLck.tyFB.tyBtnExt.bValue		:= TRUE;
			tyP0924TrolleyLck.tyFB.tyBtnRet.bValue		:= FALSE;
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnRet2.bRtCompl = TRUE THEN
			tyP0924TrolleyLck.tyFB.tyBtnRet2.bRtCompl	:= FALSE;
			
			tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue		:= TRUE;
			tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue		:= FALSE;
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnExt2.bRtCompl = TRUE THEN
			tyP0924TrolleyLck.tyFB.tyBtnExt2.bRtCompl	:= FALSE;
			
			tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue		:= TRUE;
			tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue		:= FALSE;
		END_IF
		
		IF tyP0924TrolleyLck.tyFB.tyBtnRet.bValue = TRUE THEN
			//Trolley lock mag 1
			eTrolleyLckAct1	:= PneuActRet;
			
			IF p_eTrolleyLckStat = PneuActRet AND p_eTrolleyLckStatus = Done THEN
				eTrolleyLckAct1	:= PneuActIdle;
				tyP0924TrolleyLck.tyFB.tyBtnRet.bValue	:= FALSE;
			ELSIF p_eTrolleyLckStatus = Error THEN
				tyP0924TrolleyLck.tyFB.tyBtnRet.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnExt.bValue = TRUE THEN
			eTrolleyLckAct1	:= PneuActExt;
			
			IF p_eTrolleyLckStat = PneuActExt AND p_eTrolleyLckStatus = Done THEN
				eTrolleyLckAct1	:= PneuActIdle;
				tyP0924TrolleyLck.tyFB.tyBtnExt.bValue := FALSE;
			ELSIF p_eTrolleyLckStatus = Error THEN
				tyP0924TrolleyLck.tyFB.tyBtnExt.bValue := FALSE;
			END_IF
			
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue = TRUE THEN
			//Trolley lock Mag 2
			eTrolleyLckAct2	:= PneuActRet;
			
			IF p_eTrolleyLckStat2 = PneuActRet AND p_eTrolleyLckStatus2 = Done THEN
				eTrolleyLckAct2	:= PneuActIdle;
				tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue	:= FALSE;
			ELSIF p_eTrolleyLckStatus2 = Error THEN
				tyP0924TrolleyLck.tyFB.tyBtnRet2.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue = TRUE THEN
			eTrolleyLckAct2	:= PneuActExt;
			
			IF p_eTrolleyLckStat2 = PneuActExt AND p_eTrolleyLckStatus2 = Done THEN
				eTrolleyLckAct2	:= PneuActIdle;
				tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue := FALSE;
			ELSIF p_eTrolleyLckStatus2 = Error THEN
				tyP0924TrolleyLck.tyFB.tyBtnExt2.bValue := FALSE;
			END_IF
		END_IF
		
		//Update Direct Control Status
		tyP0924TrolleyLck.tyDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnRet.bValue		:= p_bTrolleyLckRetCtrl;
		tyP0924TrolleyLck.tyDC.tyBtnExt.bValue		:= p_bTrolleyLckExtCtrl;
		
		tyP0924TrolleyLck.tyDC.tyBtnRet2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnExt2.bRtCompl	:= FALSE;
		tyP0924TrolleyLck.tyDC.tyBtnRet2.bValue		:= p_bTrolleyLckRetCtrl2;
		tyP0924TrolleyLck.tyDC.tyBtnExt2.bValue		:= p_bTrolleyLckExtCtrl2;
		
	END_IF
	
	
	
END_ACTION
