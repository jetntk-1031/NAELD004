(** 2019-10-30 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bFixClprClampCtrl	:= FALSE;
		bRmtClprClampCtrl	:= FALSE;
	END_IF
	
	p_bFixClprUnclampSen :=  p_bLinkFixClprUnClampSen;
	
	IF p_bLinkNtParamMagModelAutoVerify THEN
		fbSmallLargeSenDlyTm(IN:= p_bLinkMagSmallSen OR p_bLinkMagLargeSen);
		IF fbSmallLargeSenDlyTm.Q THEN
			p_bFixClprClampSen := TRUE;
		ELSE
			p_bFixClprClampSen := FALSE;
		END_IF
	ELSE
		p_bFixClprClampSen := p_bLinkFixClprClampSen;
	END_IF
	
	p_bRmtClprClampSen := p_bLinkDO.bMag4RemoteClampCtrl;
	p_bRmtClprUnclampSen := NOT p_bLinkDO.bMag4RemoteClampCtrl;
	//	p_tMtrOffDlyTm	:= T#200ms;
	
	IF p_bLinkMagOpsStepMagMtyExit THEN
		fbLeftSenDelayTm(IN:= TRUE, PT:= T#5000ms);
		IF fbLeftSenDelayTm.Q THEN
			p_bLeftSen := p_bLinkDIMagEntSen;
		END_IF
	ELSE
		p_bLeftSen := p_bLinkDIMagEntSen;
		fbLeftSenDelayTm(IN:= FALSE);
	END_IF
	
END_ACTION
