(** 2019-01-20 **)
ACTION Act_Initial:
	
	//Initial
	fbCTDPullLmt.PV := p_siCntrPullLmt;
	fbCTDPullLmt(LOAD:= TRUE);
	fbCTDPullLmt(LOAD:= FALSE);

END_ACTION
