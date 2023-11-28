(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bPshrExtCtrl		:= FALSE;
		bPshrExtended		:= FALSE;
		bPshrRetracted		:= FALSE;
		
		bPullerExtCtrl		:= FALSE;
		bPullerRetCtrl		:= FALSE;
		bPullerExtended		:= FALSE;
		bPullerRetracted	:= FALSE;
		
		bRotRemoteCtrl		:= FALSE;
		bRotAtRemote		:= FALSE;
		bRotAtHome			:= FALSE;
		
		bRejectUpCtrl		:= FALSE;
		bRejectDownCtrl		:= FALSE;
		bRejectAtUp			:= FALSE;
		bRejectAtDown		:= FALSE;
	END_IF
	
	//Bypass Intializing Conveyor
	IF p_bLinkUIBypsInitConv THEN
		p_diInitTm ACCESS ADR(diInitTm);
	ELSE
		p_diInitTm ACCESS p_McParamConvInitTm;
	END_IF
	
	
	fbRightSenTm(IN:= bMtrSigOnOrLToR AND p_bRightSen = FALSE AND p_bLinkOpsTravLifLDExitBrd = FALSE, PT:= DINT_TO_TIME(p_diInitTm - 1000));
	fbRightSenTmOff(IN:= p_bLinkOpsTravLifLDExitBrd AND p_bRightSen, PT:= DINT_TO_TIME(p_diInitTm - 1000));
	IF p_bSelfTest = FALSE THEN
		p_bRightSen := p_bLinkDIRgtSen;
		fbBoardOffTm(IN:= p_bLeftSen = FALSE AND p_bRightSen = FALSE AND bMtrDirOrRToL = FALSE AND bMtrSigOnOrLToR = FALSE);
		IF EDGEPOS(fbBoardOffTm.Q) THEN
			bHvBrd := FALSE;
		END_IF
	ELSE
		IF fbRightSenTm.Q THEN
			p_bRightSen := TRUE;
			bHvBrd := TRUE;
		ELSIF fbRightSenTmOff.Q THEN
			p_bRightSen := FALSE;
			bHvBrd := FALSE;
		END_IF
	END_IF
		
	IF p_bLinkNtParamPullerRotPrep THEN
		p_bRotHomeSen := p_bLinkRotHomeSen;
		p_bRotRemoteSen := p_bLinkRotRemoteSen;
		p_bPullerRetSen := p_bLinkPullerRetSen;
		p_bPullerExtSen := p_bLinkPullerExtSen;	
	ELSE
		p_bRotHomeSen := bRotRemoteCtrl = FALSE;
		p_bRotRemoteSen := bRotRemoteCtrl;
		p_bPullerRetSen := p_bLinkPullerRetSen;
		p_bPullerExtSen := p_bLinkPullerExtSen;
	END_IF
		
	//Antijam alm , hold pos
	IF (p_bLinkOpsRun = FALSE OR bPullerRetCtrl) AND p_bLinkDIPullerAntiJamSen = FALSE THEN
		eStatus := Error;
		udiStatus := 10125; //'Puller AntiJam Sensor On'
		bPullerRetCtrl		:= FALSE;
		bMtrSigOnOrLToR		:= FALSE;
	END_IF
	
END_ACTION
