
ACTION Act_OptP0910WriteDO:
	
	//TL Safety Relay
	IF tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bValue = TRUE THEN
			eRstErrAct	:= RstErrActSetSafetyRlyRst;
			
			IF p_eRstErrStat = RstErrActSetSafetyRlyRst AND p_eRstErrStatus = Done THEN	
				eRstErrAct	:= RstErrActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eRstErrAct	:= RstErrActRstSafetyRlyRst;
		
			IF p_eRstErrStat = RstErrActRstSafetyRlyRst AND p_eRstErrStatus = Done THEN	
				eRstErrAct	:= RstErrActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	// TL Green
	IF tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLGreen.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetGreen;
			
			IF p_eTLBuzStat = TLBuzActSetGreen AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstGreen;
		
			IF p_eTLBuzStat = TLBuzActRstGreen AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//TL Amber
	IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx = 0 THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl = TRUE THEN
			IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue = TRUE THEN
				eTLBuzAct	:= TLBuzActSetAmber;
				
				IF p_eTLBuzStat = TLBuzActSetAmber AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
			ELSE	
				eTLBuzAct	:= TLBuzActRstAmber;
			
				IF p_eTLBuzStat = TLBuzActRstAmber AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
				
			END_IF
		END_IF
	ELSIF tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx = 2 THEN // white
		IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl = TRUE THEN
			IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue = TRUE THEN
				eTLBuzAct	:= TLBuzActSetWhite;
				
				IF p_eTLBuzStat = TLBuzActSetWhite AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
			ELSE	
				eTLBuzAct	:= TLBuzActRstWhite;
			
				IF p_eTLBuzStat = TLBuzActRstWhite AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
				
			END_IF
		END_IF
	END_IF
	//TL Red
	IF tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLRed.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetRed;
			
			IF p_eTLBuzStat = TLBuzActSetRed AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstRed;
		
			IF p_eTLBuzStat = TLBuzActRstRed AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//TL Buzzer
	IF tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnBuzzer.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetBuz;
			
			IF p_eTLBuzStat = TLBuzActSetBuz AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstBuz;
		
			IF p_eTLBuzStat = TLBuzActRstBuz AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	
//	IF tyP0910GenOut.tyGenOut.tyBtnSafetyCurtainRst.bRtCompl = TRUE THEN
//			
//		IF tyP0910GenOut.tyGenOut.tyBtnSafetyCurtainRst.bValue = TRUE THEN
//			bSafetyCurtainReset := TRUE;
//			tyP0910GenOut.tyGenOut.tyBtnSafetyCurtainRst.bRtCompl := FALSE;
//		ELSE
//			bSafetyCurtainReset := FALSE;
//			tyP0910GenOut.tyGenOut.tyBtnSafetyCurtainRst.bRtCompl := FALSE;
//		END_IF
//	END_IF
	
		
	IF tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl = TRUE THEN
			
		IF tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bValue = TRUE THEN
			bSafetyCurtainReset := TRUE;
			tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl := FALSE;
		ELSE
			bSafetyCurtainReset := FALSE;
			tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl := FALSE;
		END_IF
	END_IF
	
	bBypCurtainPBLED	:= tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSenPBLED.bValue;
	bBypCurtainSen		:= tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSen.bValue;

END_ACTION
