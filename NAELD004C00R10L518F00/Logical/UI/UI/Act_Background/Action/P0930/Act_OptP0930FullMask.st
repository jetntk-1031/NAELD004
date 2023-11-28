
ACTION Act_OptP0930FullMask: 
	
	IF eCurrPage = UIP0930MagConv1 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0930MagConv1.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0930MagConv1.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0930MagConv1.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0930MagConv1.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
