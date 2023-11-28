(** 2018-12-11 **)
ACTION Act_Link:
	
	IF p_eLinkMag = LDMagQuadruple THEN
		CASE p_usiLinkMod OF
			0,2:
				p_diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0Width;
				p_diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth;
			
			1:
				p_diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0WidthRear;
				p_diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth1;
		END_CASE
	ELSE		
		p_diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0Width;
		p_diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth;
	END_IF
	

	
END_ACTION
