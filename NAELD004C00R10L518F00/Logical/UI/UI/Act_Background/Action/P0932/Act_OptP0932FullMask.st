
ACTION Act_OptP0932FullMask: 
	
	IF eCurrPage = UIP0932MagConv3 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
