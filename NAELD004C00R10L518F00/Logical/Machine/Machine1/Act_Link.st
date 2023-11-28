(** 2018-12-11 **)
ACTION Act_Link:
	
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF
			1,2:
				p_diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0WidthRear;
				p_diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth1;
			
			0:
				p_diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0Width;
				p_diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth;
		END_CASE
	ELSE		
		p_diProdRcpCurrRcpWidth := 0;
		p_diMagRcpCurrRcpMaxWidth := p_NtParamProdRcpMaxWidth;
	END_IF
	
END_ACTION
