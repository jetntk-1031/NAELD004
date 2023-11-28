(** 2019-10-30 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagConv2Clp4Stat				:= ADR(eStat);
	p_MagConv2Clp4Status			:= ADR(eStatus);
	p_MagConv2Clp4StatTxt			:= ADR(sStatTxt);
	
	//Alarm
	p_MagConv2Clp4AlmData			:= ADR(tyAlmData);
	
	//Output
	p_MagConv2Clp4HvMag				:= ADR(bHvMag);
	p_MagConv2Clp4MtrSigOnOrLToR	:= ADR(bMtrSigOnOrLToR);
	p_MagConv2Clp4MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_MagConv2Clp4FixClprClampCtrl	:= ADR(bFixClprClampCtrl);
	p_MagConv2Clp4RmtClprClampCtrl	:= ADR(bRmtClprClampCtrl);
	p_MagConv2Clp4ClprTwoOutputCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM