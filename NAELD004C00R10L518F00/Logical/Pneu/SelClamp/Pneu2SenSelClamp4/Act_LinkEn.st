(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	IF p_eProjMag = LDMagDual  THEN
		p_bPrep := FALSE;
	ELSIF p_eProjMag = LDMagTriple AND p_bNtParamProjMagAutoVerifyPrep THEN
		p_bPrep := TRUE;
	ELSE
		p_bPrep := FALSE;
	END_IF
	
		
END_ACTION
