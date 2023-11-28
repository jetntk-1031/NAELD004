
ACTION Act_OptP0933FullMask: 
	
	IF eCurrPage = UIP0933PullConv THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskSafetyRly);
			
		ELSIF p_tyNtParamCurr.bAWPrep AND  p_tyNtParamCurr.bAWPusherPrep 
			AND p_tyMcParamCurr.bAWDis = FALSE
			AND p_bAWOpenIsHomed = FALSE 
			AND (p_diAWPushOrPullerActualPos + p_tyMcParamCurr.diAWPusherAtHmPosInUM )>(p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos-15000) 
			THEN
			p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskAWConvInterrupt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskHide);
			
		END_IF
		
		//Shutter Full mask
		IF p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterOpenRS AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
			IF ABS(p_diTravActualPos - p_diMagRcp1TravPos) > 2500 AND p_tyNtParamCurr.bProjShutter2Prep THEN
				p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskTravInt);
			END_IF
		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterOpenRS2 THEN
			IF ABS(p_diTravActualPos - p_diMagRcp2TravPos) > 2500 THEN
				p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskTravInt);//26
			END_IF
		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterOpenRS3 THEN
			IF ABS(p_diTravActualPos - p_diMagRcp3TravPos) > 2500 THEN
				p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskTravInt);
			END_IF
		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND (p_tyDI.bInShutterOpenRS = FALSE OR  p_tyDI.bInShutterOpenRS2 = FALSE OR p_tyDI.bInShutterOpenRS3 = FALSE) THEN
			IF p_tyNtParamCurr.bProjCurtainSenPrep THEN
				IF (p_tyDI.bInShutterOpenRS = FALSE OR 
					(p_tyNtParamCurr.bProjShutter2Prep AND p_tyDI.bInShutterOpenRS2 = FALSE) OR 
					(p_tyNtParamCurr.bProjShutter3Prep AND p_tyDI.bInShutterOpenRS3 = FALSE)) THEN
					p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskInShutterInterrupt); //9
				END_IF
			ELSE //standard
				IF p_tyDI.bInShutterOpenRS = FALSE AND p_tyNtParamCurr.bProjInletShutPrep THEN				
					p_tyC0002FullMask ACCESS ADR(tyP0933PullConv.tyFullMaskInShutterInterrupt);
				END_IF
			END_IF
		END_IF //## shutter cond
		
			
	END_IF
	
END_ACTION
