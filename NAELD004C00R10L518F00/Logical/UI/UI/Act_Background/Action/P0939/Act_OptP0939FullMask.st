
ACTION Act_OptP0939FullMask: 
	
	IF eCurrPage = UIP0939MagConv4 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939MagConv4.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939MagConv4.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939MagConv4.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0939MagConv4.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
