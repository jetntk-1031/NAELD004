(** 2019-06-07 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Buffer4Stat		:= ADR(eStat);
	p_Buffer4Status		:= ADR(eStatus);
	p_Buffer4StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Buffer4AlmData	:= ADR(tyAlmData);
	
	//Output
	p_Buffer4NxtLoadSlt				:= ADR(diNxtLoadSlt);
	p_Buffer4NxtUnloadSlt			:= ADR(diNxtUnloadSlt);
	p_Buffer4CoolBrdAny				:= ADR(diCoolBrdAny);
	p_Buffer4CoolBrdGd				:= ADR(diCoolBrdGd);
	p_Buffer4CoolBrdBad				:= ADR(diCoolBrdBad);
	p_Buffer4CoolNotRdy				:= ADR(bCoolNotRdy);
	p_Buffer4Bffr					:= ADR(tyBuffer);
	p_Buffer4DispBffr				:= ADR(tyDispBuffer);
	p_Buffer4BffrStat				:= ADR(tyBufferStat);
	p_Buffer4BrdUnloadStat			:= ADR(tyBoardUnloadStat);
	p_Buffer4FileNotFound			:= ADR(bFileNotFound);
	p_Buffer4CoolFanCtrl			:= ADR(bCoolFanCtrl);
	p_Buffer4MagPresent				:= ADR(bMagPresent);
	p_Buffer4MagPresentTm			:= ADR(dtMagPresentTm);
	p_Buffer4NewProduct				:= ADR(bNewProduct);
	p_Buffer4LastProductUnload		:= ADR(bLastProductUnload);
	p_Buffer4LastProductLeftInBffr	:= ADR(bLastProductLeftInBffr);
	p_Buffer4ParamDiff				:= ADR(bParamDiff);
	p_Buffer4MagRemoved				:= ADR(bMagRemoved);
	p_Buffer4FIFOOld				:= ADR(bFIFOOld);
	
	(* Always Change If Project Change *)
	
END_PROGRAM