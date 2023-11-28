(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
	IF p_bManual = TRUE THEN
		p_diRetNomSpd ACCESS p_UIMnlMtrPshrRetSpd;
		p_diRetTorque ACCESS p_UIMnlMtrPshrRetTorq;
	ELSE
		p_diRetNomSpd ACCESS p_ProdRcpCurrRcp1MtrPshrExtSpd;
		p_diRetTorque ACCESS p_ProdRcpCurrRcp1MtrPshrExtTorq;
	END_IF
	
	IF p_bLinkDISafetyRlySig = TRUE THEN
		p_bAlarmSig := p_bLinkAlarmSig;
	ELSE
		p_bAlarmSig := TRUE;
	END_IF
	
END_ACTION
