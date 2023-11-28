(** 2019-03-25 **)
ACTION Act_OpsRst:
	
	udiStatus1	:= 0;
	
	eBufferAct		:= BufferActIdle;
	eMagConv2ClpAct	:= MagConv2ClpActIdle;
	eDSSMEMAAct		:= SMEMAActIdle;
	eAGVMagAct		:= AGVMagActIdle;
	eSelClampCtrl	:= PneuActIdle;
	eDSSOTAct		:= SOTActIdle;
	eUSSOTAct		:= SOTActIdle;
	eSafetyBarAct	:= PneuActIdle;
	
	bNewMagVerified := FALSE;
	bNewMagVerifyStarted := FALSE;
	
	
	
END_ACTION
