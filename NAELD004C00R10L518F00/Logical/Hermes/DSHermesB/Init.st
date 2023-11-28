(** 2021-08-01 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSHermesBStat	    	:= ADR(eStat);
	p_DSHermesBStatus    	:= ADR(eMainStatus);
	p_DSHermesBStatTxt    	:= ADR(sStatTxt);
	
	//Alarm
	p_DSHermesBAlmData    	:= ADR(tyAlmData);
	p_DSHermesBAlmData1	    := ADR(tyAlmData1);
	p_DSHermesBAlmData2    	:= ADR(tyAlmData2);
	p_DSHermesBAlmData3    	:= ADR(tyAlmData3);
	p_DSHermesBAlmData4    	:= ADR(tyAlmData4);//add
	
	//Output
	p_DSHermesBFileNotFound		    := ADR(bFileNotFound);
	p_DSHermesBConnected		    	:= ADR(bConnected);
	p_DSHermesBHandshakeDone	    	:= ADR(bHandshakeDone);
	p_DSHermesBUSRdy			    	:= ADR(bUSRdy);
	p_DSHermesBDSRdy			    	:= ADR(bDSRdy);
	p_DSHermesBUSGdRdy		    	:= ADR(bUSGdRdy);
	p_DSHermesBDSGdRdy		    	:= ADR(bDSGdRdy);
	p_DSHermesBTransporting	    	:= ADR(bTransporting);
	p_DSHermesBStopTransport	    	:= ADR(bStopTransport);
	p_DSHermesBInternalSnd	    	:= ADR(sInternalSnd);
	p_DSHermesBTransportFinishedSnd  := ADR(bTransportFinishedSnd);
	p_DSHermesBBoardDepartedData     := ADR(tyBoardDepartedInfo);
	p_DSHermesBAllZonesEmpty         := ADR(bAllZonesEmpty);
	
	p_SendBFIdB                     := ADR (bSendBFId);        //ADD
	
	(* Always Change If Project Change *)
	
END_PROGRAM
