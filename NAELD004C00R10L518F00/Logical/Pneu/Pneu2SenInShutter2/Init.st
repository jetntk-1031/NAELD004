(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SenInShutterStat2		:= ADR(eStat);
	p_Pneu2SenInShutterStatus2		:= ADR(eStatus);
	p_Pneu2SenInShutterStatTxt2		:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SenInShutterAlmData2		:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SenInShutterExtCtrl2		:= ADR(bExtCtrl);
	p_Pneu2SenInShutterRetCtrl2		:= ADR(bRetCtrl);
	p_Pneu2SenInShutterTwoCtrlOut2	:= ADR(bTwoCtrlOut);
	p_Pneu2SenInShutterExtended2	:= ADR(bExtended);
	p_Pneu2SenInShutterRetracted2	:= ADR(bRetracted);
	
	(* Always Change If Project Change *)
	
END_PROGRAM