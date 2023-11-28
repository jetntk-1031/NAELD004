
(** 2021-06-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_WOStat	    			:= ADR(eStat);
	p_WOStatus    	   		 	:= ADR(eMainStatus);
	p_WOStatTxt      			:= ADR(sStatTxt);
	
	//Alarm
	p_WOAlmData      			:= ADR(tyAlmData);
	p_WOAlmData1	  			:= ADR(tyAlmData1);
	
	//Output

	
	
	(* Always Change If Project Change *)
	
END_PROGRAM
