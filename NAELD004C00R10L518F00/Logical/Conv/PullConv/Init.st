(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bGdBrdInit		:= TRUE;
	bGdBrdEnt		:= TRUE;
	diInitTm		:= 0;
	diTxInTimeOut	:= 60000;	//Greater Than Upstream SMEMA Transfer In Time Out
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PullConvStat		:= ADR(eStat);
	p_PullConvStatus	:= ADR(eStatus);
	p_PullConvStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_PullConvAlmData	:= ADR(tyAlmData);
	
	//Output
	p_PullConvHvBrd						:= ADR(bHvBrd);
	p_PullConvRejHvBrd					:= ADR(bRejHvBrd);
	p_PullConvInspHvBrd					:= ADR(bInspHvBrd);
	p_PullConvGdBrd						:= ADR(bGdBrd);
	p_PullConvLmtSenActivated			:= ADR(bLmtSenActivated);
	p_PullConvMtrSigOnOrLToR			:= ADR(bMtrSigOnOrLToR);
	p_PullConvMtrDirOrRToL				:= ADR(bMtrDirOrRToL);
	
	p_PullConvPshrExtCtrl				:= ADR(bPshrExtCtrl);
	p_PullConvPshrTwoOutputControl		:= ADR(bPshrTwoOutputControl);
	p_PullConvPshrExtended				:= ADR(bPshrExtended);
	p_PullConvPshrRetracted				:= ADR(bPshrRetracted);
	
	p_PullConvPullerExtCtrl				:= ADR(bPullerExtCtrl);
	p_PullConvPullerRetCtrl				:= ADR(bPullerRetCtrl);
	p_PullConvPullerTwoOutputControl	:= ADR(bPullerTwoOutputControl);
	p_PullConvPullerExtended			:= ADR(bPullerExtended);
	p_PullConvPullerRetracted			:= ADR(bPullerRetracted);
	
	p_PullConvRotRemoteCtrl				:= ADR(bRotRemoteCtrl);
	p_PullConvRotTwoOutputControl		:= ADR(bRotTwoOutputControl);
	p_PullConvRotAtRemote				:= ADR(bRotAtRemote);
	p_PullConvRotAtHome					:= ADR(bRotAtHome);
	
	p_PullConvRejectUpCtrl				:= ADR(bRejectUpCtrl);
	p_PullConvRejectDownCtrl			:= ADR(bRejectDownCtrl);
	p_PullConvRejectTwoOutputControl	:= ADR(bRejectTwoOutputControl);
	p_PullConvRejectAtUp				:= ADR(bRejectAtUp);
	p_PullConvRejectAtDown				:= ADR(bRejectAtDown);
	
	(* Always Change If Project Change *)
	
END_PROGRAM