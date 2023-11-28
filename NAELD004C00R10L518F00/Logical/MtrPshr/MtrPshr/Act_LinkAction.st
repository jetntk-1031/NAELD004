(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		//	p_eAct ACCESS p_OpsTravULMtrPshrAct;
		IF p_bLinkPullConvPullerExtCtrl 
			AND p_bLinkPullConvPullerRetCtrl = FALSE
			AND p_bExtSen = FALSE
			THEN
				p_eAct := MtrPshrActExt;
			
		ELSIF p_bLinkPullConvPullerExtCtrl = FALSE 
			AND p_bLinkPullConvPullerRetCtrl
			AND p_bRetSen = FALSE
			THEN
				p_eAct := MtrPshrActRet;
		
		ELSE
				p_eAct := MtrPshrActIdle;
		END_IF
		
	ELSIF p_bManual = TRUE THEN
//		IF p_UIMtrPshrAct = MtrPshrActStop THEN
//			p_eAct := MtrPshrActStop;
//		ELSE
			IF p_bLinkPullConvPullerExtCtrl 
				AND p_bLinkPullConvPullerRetCtrl = FALSE
				AND p_bExtSen = FALSE
				THEN
				p_eAct := MtrPshrActExt;
			
			ELSIF p_bLinkPullConvPullerExtCtrl = FALSE 
				AND p_bLinkPullConvPullerRetCtrl
				AND p_bRetSen = FALSE
				THEN
				p_eAct := MtrPshrActRet;
		
			ELSE
				p_eAct := MtrPshrActIdle;
			END_IF
//		END_IF
		
	ELSE
		p_eAct := MtrPshrActIdle;
	END_IF
	
END_ACTION
