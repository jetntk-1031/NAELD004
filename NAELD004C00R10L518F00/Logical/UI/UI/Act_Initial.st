(** 2019-01-03 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	//for simulation
	fbSDOWriteAccT.pDevice := ADR(sDevice);
	fbSDOWriteAccT.node	 := 18;//Trav dec.
	
//	fbSDOWriteAccT.index	:= 16#6083;
//	fbSDOWriteAccT.subindex	:= 0;
//	fbSDOWriteAccT.datalen	:= 4;
	
	fbSDOWriteAccL.pDevice := ADR(sDevice);
	fbSDOWriteAccL.node	 := 17;//Lifter
	
//	fbSDOWriteAccL.index	:= 16#6083;
//	fbSDOWriteAccL.subindex	:= 0;
//	fbSDOWriteAccL.datalen	:= 4;
END_ACTION
