(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	p_bEn ACCESS p_NtParamProjCurtainSenPrep;
	bDis := p_bLinkProjShutter2Prep = FALSE;

	IF p_bPrep AND p_bLinkProjShutter2Prep = FALSE THEN
		bExtended := p_bLinkShutter1Extended;
		bRetracted := p_bLinkShutter1Retracted;
		IF p_eAct <> PneuActIdle AND eStatus = Done THEN
			p_eAct := PneuActIdle;
		END_IF
	END_IF
	
END_ACTION
