(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsTravLifLDAlmData	:= ADR(tyAlmData);
	
	//Output
	p_OpsTravLifLDStepTxt	:= ADR(sStepTxt);
	p_OpsTravLifLDPaused	:= ADR(bPaused);
	
	p_OpsTravLifLDUSSMEMAAct1	:= ADR(eUSSMEMAAct1);
	p_OpsTravLifLDUSSMEMAAct2 	:= ADR(eUSSMEMAAct2);
	p_OpsTravLifLDUSSMEMAAct3	:= ADR(eUSSMEMAAct3);
	p_OpsTravLifLDUSSMEMAAct4	:= ADR(eUSSMEMAAct4);
	p_OpsTravLifLDDSSMEMAAct1	:= ADR(eDSSMEMAAct1);
	p_OpsTravLifLDDSSMEMAAct2	:= ADR(eDSSMEMAAct2);
	p_OpsTravLifLDDSSMEMAAct3	:= ADR(eDSSMEMAAct3);
	p_OpsTravLifLDConvAct		:= ADR(eConvAct);
	p_OpsTravLifLDAWAct			:= ADR(eAWAct);
	p_OpsTravLifLDAWPushPullAct	:= ADR(eAWPushOrPullerAct);
	p_OpsTravLifLDTravAct		:= ADR(eTravAct);
	p_OpsTravLifLDLifAct		:= ADR(eLifAct);
	p_OpsTravLifLDInletPneuAct	:= ADR(eInletPneuAct);
	p_OpsTravLifLDInletPneuAct2	:= ADR(eInletPneuAct2);
	p_OpsTravLifLDInletPneuAct3	:= ADR(eInletPneuAct3);
	p_OpsTravLifLDOutletPneuAct	:= ADR(eOutletPneuAct);
	p_OpsTravLifLDOutletPneuAct2	:= ADR(eOutletPneuAct2);
	p_OpsTravLifLDPullerAct		:= ADR(ePullerAct);
	
	
	p_OpsTravLifLDPosGo			:= ADR(eTravLifPosGo);
	p_OpsTravLifLDMagDis		:= ADR(a_bMagDis);
	p_OpsTravLifLDGoUnloadSlt1	:= ADR(diGoUnloadSlt1);
	p_OpsTravLifLDGoUnloadSlt2	:= ADR(diGoUnloadSlt2);
	p_OpsTravLifLDGoUnloadSlt3	:= ADR(diGoUnloadSlt3);
	p_OpsTravLifLDGoUnloadSlt4	:= ADR(diGoUnloadSlt4);
	
	p_OpsTravLifLDInitConv		:= ADR(bInitConv);
	p_OpsTravLifLDInitDone		:= ADR(bOpsInitDone);
	p_OpsTravLifLDUSComm		:= ADR(bUSComm);
	p_OpsTravLifLDEntBrd		:= ADR(bEntBrd);
	p_OpsTravLifLDDSComm		:= ADR(bDSComm);
	p_OpsTravLifLDExitBrd		:= ADR(bExitBrd);
	p_OpsTravLifLDAWPosDiff		:= ADR(bStepAWPosDiff);
	p_OpsTravLifULInDSPos		:= ADR(bTravLifInDSPos);
	p_OpsTravLifULUpdatePullSlot		:= ADR(	bUpdatePullSlot);
	p_OpsTravLifLDBypCurtainLED 		:= ADR (bBypCurtainSensorPBLED); 	//JOHN
	p_OpsTravLifLDBypCurtainSenCtrl		:= ADR (bBypCurtainSenCtrl); 				//JOHN
	p_OpsTravLifLBypCurtainWidthChg 	:= ADR (bBypCurtainWidthChg); 
	
	p_OpsTravLifLDUSMagWidthChk 	:= ADR(bUSMagWidthChk);
	p_OpsTravLifULTravGotoChkPt			:= ADR (bTravGoToChkPt);

	p_OpsTravLifWChkErrCmdUnclmp1		:= ADR (bWidthChkErrCmdUnclmp1); //to opsmagconvLD1,2,3
	p_OpsTravLifWChkErrCmdUnclmp2		:= ADR (bWidthChkErrCmdUnclmp2);
	p_OpsTravLifWChkErrCmdUnclmp3		:= ADR (bWidthChkErrCmdUnclmp3);
	p_OpsTravLifMove				 	:= ADR (bTraLifMoving);
	p_OpsTravLifStandby					:= ADR(bStandby);

	(* Always Change If Project Change *)
	
END_PROGRAM