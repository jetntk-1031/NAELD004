(** 2019-03-25 **)
ACTION Act_OpsRst:
	
	eUSSMEMAAct1	:= SMEMAActIdle;
	eUSSMEMAAct2	:= SMEMAActIdle;
	eUSSMEMAAct3	:= SMEMAActIdle;
	eDSSMEMAAct1	:= SMEMAActIdle;
	eDSSMEMAAct2	:= SMEMAActIdle;
	eDSSMEMAAct3	:= SMEMAActIdle;
	eConvAct		:= ConvActIdle;
	eAWAct			:= AWActIdle;
	eTravAct		:= TravActIdle;
	eLifAct			:= LifterActIdle;
	eInletPneuAct	:= PneuActIdle;
	eInletPneuAct2	:= PneuActIdle;
	eInletPneuAct3	:= PneuActIdle;
	eOutletPneuAct	:= PneuActIdle;
	ePullerAct		:= PneuActIdle;
	
	bBrdOnSen	:= FALSE;
	bReachedEnd := FALSE;
	bPullerHadExtended := FALSE;
	eTravLifPosGo := TravLifLDPosInvalid;
	
	bTravLifInDSPos := FALSE;
//	bMagWidthChked	:= FALSE;
	usiInitRetExtChk := 0;		//initial puller ret/ext
	//usiLocalAccMag := 0;
	
	usiMagWidthChkStep := 0;
	bMagWidthChk := FALSE;		//width chk
	bTravGoToChkPt := FALSE;	//Trav + widthchk pos
	bOutletSafeToClo := FALSE; //outletshutter 
	
	bInShutClo1	:= FALSE;
	bInShutClo2 := FALSE;
	bInShutClo3 := FALSE;
	
	bCmdUnclmpFlag := FALSE;
	
	a_bRlsMagBtn[1]:=FALSE;
	a_bRlsMagBtn[2]:=FALSE;
	a_bRlsMagBtn[3]:=FALSE;
	
	fbCTDPullLmt.PV := p_siCntrPullLmt;
	fbCTDPullLmt(LOAD:= TRUE);
	fbCTDPullLmt(LOAD:= FALSE);

END_ACTION
