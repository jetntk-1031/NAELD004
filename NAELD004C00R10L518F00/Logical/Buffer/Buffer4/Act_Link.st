(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF 
			0: //LDModLoadLnA:
				IF p_bAscending THEN
					p_diSltToSltInUM := p_diLinkSltToSltDist * -1;
				ELSE
					p_diSltToSltInUM := p_diLinkSltToSltDist;
				END_IF
				p_diMinSlt := p_diLinkMinSlt;
				p_diMaxSlt := p_diLinkMaxSlt;
				p_diPitch := p_diLinkPitch;
				p_diBffrTtlSlt := p_diLinkBffrTtlSlt;
				p_diLifterBtmPosInUM := p_diLinkLifterBtmPosInUM;
				
			1,2: //LDModLoadLnB, LDModLoadLnAB:
				IF p_bAscending THEN
					p_diSltToSltInUM := p_diLinkSltToSltDist1 * -1;
				ELSE
					p_diSltToSltInUM := p_diLinkSltToSltDist1;
				END_IF
				p_diMinSlt := p_diLinkMinSlt1;
				p_diMaxSlt := p_diLinkMaxSlt1;
				p_diPitch := p_diLinkPitch1;
				p_diBffrTtlSlt := p_diLinkBffrTtlSlt1;
				p_diLifterBtmPosInUM := p_diLinkLifterBtmPosInUM1;
			
		END_CASE
	ELSE	
		IF p_bAscending THEN
			p_diSltToSltInUM := p_diLinkSltToSltDist * -1;
		ELSE
			p_diSltToSltInUM := p_diLinkSltToSltDist;
		END_IF
		p_diMinSlt := p_diLinkMinSlt;
		p_diMaxSlt := p_diLinkMaxSlt;
		p_diPitch := p_diLinkPitch;
		p_diBffrTtlSlt := p_diLinkBffrTtlSlt;
		p_diLifterBtmPosInUM := p_diLinkLifterBtmPosInUM;
	END_IF
	
	p_bAscending	:= NOT p_bLinkMcParamProdSelTopToBtm;
//	IF p_bLinkNtParamProjRotCylPrep THEN
//		p_bAscending := TRUE;
//	ELSE
//		p_bAscending := FALSE;
//	END_IF
	
	IF p_bLinkNtParamProjMagConvPrep THEN
		fbMagPresentTm.PT	:= T#2s;
	ELSE
		fbMagPresentTm.PT	:= T#8s;
	END_IF
	
	p_bMagPresentSensor := p_bLinkPresentSen1 OR p_bLinkPresentSen2;
	
END_ACTION
