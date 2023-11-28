(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SenInShutterStat3		:= ADR(eStat);
	p_Pneu2SenInShutterStatus3		:= ADR(eStatus);
	p_Pneu2SenInShutterStatTxt3		:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SenInShutterAlmData3		:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SenInShutterExtCtrl3		:= ADR(bExtCtrl);
	p_Pneu2SenInShutterRetCtrl3		:= ADR(bRetCtrl);
	p_Pneu2SenInShutterTwoCtrlOut3	:= ADR(bTwoCtrlOut);
	p_Pneu2SenInShutterExtended3	:= ADR(bExtended);
	p_Pneu2SenInShutterRetracted3	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM