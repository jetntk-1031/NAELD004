(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	p_bPrep	:= p_bLinkNtPrmProjMagSafetyBarPrep AND p_bLinkNtPrmProjMag = LDMagQuadruple;
	
	IF p_bLinkOpsRun AND p_bPrep THEN
		IF p_eLinkMag = LDMagQuadruple THEN
			CASE p_usiLinkMod OF 
				0: //LDModLoadLnA:
					p_bDis := p_bLinkMagSafetyBarDisabledFront;
				1: //LDModLoadLnB:
					p_bDis := p_bLinkMagSafetyBarDisabledRear;
				
				2: //LDModLoadLnAB:
					p_bDis := p_bLinkMagSafetyBarDisabledRear;
				
			END_CASE
		ELSE
			p_bDis := p_bLinkMagSafetyBarDisabledFront;
			
		END_IF
	END_IF
	
END_ACTION
