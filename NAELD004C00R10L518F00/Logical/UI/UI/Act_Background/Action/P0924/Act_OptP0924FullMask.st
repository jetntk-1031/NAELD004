
ACTION Act_OptP0924FullMask: 
	
	IF eCurrPage = UIP0924TrolleyLck THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0924TrolleyLck.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0924TrolleyLck.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0924TrolleyLck.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0924TrolleyLck.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
