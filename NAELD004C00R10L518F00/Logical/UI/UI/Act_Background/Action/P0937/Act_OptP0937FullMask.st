
ACTION Act_OptP0937FullMask: 
	
	IF eCurrPage = UIP0937AWPushOrPuller THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvRgtSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskRgtSenInterrupt);
			
		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND (p_tyDI.bInShutterCloseRS = FALSE 
			OR (p_tyDI.bInShutterCloseRS2 = FALSE AND p_tyNtParamCurr.tyDISettings.diInShutterCloseRS2 > 0)
			OR (p_tyDI.bInShutterCloseRS3 = FALSE AND p_tyNtParamCurr.tyDISettings.diInShutterCloseRS3 > 0)) THEN 
			IF p_tyNtParamCurr.bProjCurtainSenPrep THEN
				IF p_tyDI.bInShutterCloseRS = FALSE OR p_tyDI.bInShutterCloseRS2 = FALSE OR p_tyDI.bInShutterCloseRS3 = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskInShutOpnInterrupt);
				END_IF
			ELSE
				IF p_tyDI.bInShutterCloseRS = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskInShutOpnInterrupt);
				END_IF
			END_IF
			
	//	ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyDI.bOutShutterCloseRS = FALSE AND p_McParamOutShutterDis = FALSE THEN
		ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyDI.bOutShutterCloseRS = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskOutShutOpnInterrupt);
		
		ELSIF  p_tyDI.bPullerRetRS = FALSE OR p_tyDI.bPullerRotHmRS = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskPullerRetInterrupt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
