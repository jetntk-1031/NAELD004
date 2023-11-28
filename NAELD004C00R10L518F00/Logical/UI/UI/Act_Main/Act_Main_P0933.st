
ACTION Act_Main_P0933:
	
	//Display
	tyP0933PullConv.tyCom.tyBtnRotHmRS.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	tyP0933PullConv.tyCom.tyBtnRotRmRS.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	
	tyP0933PullConv.tyCom.tyBtnExtSlwSen.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyCom.tyBtnRetSlwSen.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyCom.tyBtnAlarmSig.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjMotorizedPullerPrep AND NOT(p_tyNtParamCurr.bProjServoPullerPusherPrep));
	tyP0933PullConv.tyCom.tyBtnTorqueSig.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjMotorizedPullerPrep AND NOT(p_tyNtParamCurr.bProjServoPullerPusherPrep));
	tyP0933PullConv.tyCom.tyBtnAntiJamSen.uiRtStat.0 :=   p_tyNtParamCurr.tyDISettings.diPullerAntiJam = 0;
	
//	tyP0933PullConv.tyFB.tyBtnCylEnt.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	tyP0933PullConv.tyFB.tyBtnRotToHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	tyP0933PullConv.tyFB.tyBtnRotToRm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	
	tyP0933PullConv.tyDC.tyBtnRotToHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	tyP0933PullConv.tyDC.tyBtnRotToRm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjPullerRotCylPrep;
	
	tyP0933PullConv.tyFB.tyNumExtSpd.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyFB.tyNumExtTorqPercent.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	
	tyP0933PullConv.tyDC.tyBtnSpdBinBit0.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyDC.tyBtnSpdBinBit1.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyDC.tyBtnSpdBinBit2.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	
	tyP0933PullConv.tyDC.tyBtnSigOn.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	tyP0933PullConv.tyDC.tyBtnAlarmRst.uiRtStat.0:=  NOT p_tyNtParamCurr.bProjMotorizedPullerPrep;
	
	//Display
	tyP0933PullConv.tyFB.tyNumExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP0933PullConv.tyFB.tyNumExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	
	tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP0933PullConv.tyFB.tyNumExtTorqPercent.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;
	
	tyP0933PullConv.tyCom.tyBtnConvClrSen.uiRtStat.0	:=  p_tyNtParamCurr.tyDISettings.diConvClrSen =0;

END_ACTION
