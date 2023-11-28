
ACTION Act_OptP0935FullMask: 
	
	IF eCurrPage = UIP0935Lifter THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bPullerRetRS = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskPullInterrupt);
			
		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND (p_tyDI.bInShutterCloseRS = FALSE 
			OR (p_tyDI.bInShutterCloseRS2 = FALSE AND p_tyNtParamCurr.tyDISettings.diInShutterCloseRS2 > 0)
			OR (p_tyDI.bInShutterCloseRS3 = FALSE AND p_tyNtParamCurr.tyDISettings.diInShutterCloseRS3 > 0)) THEN 
			IF p_tyNtParamCurr.bProjCurtainSenPrep THEN
				IF p_tyDI.bInShutterCloseRS = FALSE OR p_tyDI.bInShutterCloseRS2 = FALSE OR p_tyDI.bInShutterCloseRS3 = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskInShutOpnInterrupt);
				END_IF
			ELSE
				IF p_tyDI.bInShutterCloseRS = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskInShutOpnInterrupt);
				END_IF
			END_IF
			
	//	ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyDI.bOutShutterCloseRS = FALSE AND p_McParamOutShutterDis = FALSE THEN
		ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyDI.bOutShutterCloseRS = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskOutShutOpnInterrupt);
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvRgtSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskRgtSenInterrupt);
			
		ELSIF p_tyDI.bLifterSafetyLmtSW1 = FALSE OR p_tyDI.bLifterSafetyLmtSW2 = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskSafetyLmtSW);
			
		ELSIF p_tyDI.bLifterTimingBeltSen = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskTimingBelt);
		
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
