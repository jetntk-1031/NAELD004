(** 2021-08-01 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSHermesAStat	    	:= ADR(eStat);
	p_DSHermesAStatus    	:= ADR(eMainStatus);
	p_DSHermesAStatTxt    	:= ADR(sStatTxt);
	
	//Alarm
	p_DSHermesAAlmData    	:= ADR(tyAlmData);
	p_DSHermesAAlmData1	    := ADR(tyAlmData1);
	p_DSHermesAAlmData2    	:= ADR(tyAlmData2);
	p_DSHermesAAlmData3    	:= ADR(tyAlmData3);
	p_DSHermesAAlmData4    	:= ADR(tyAlmData4);//add
	
	//Output
	p_DSHermesAFileNotFound		    := ADR(bFileNotFound);
	p_DSHermesAConnected		    := ADR(bConnected);
	p_DSHermesAHandshakeDone	    := ADR(bHandshakeDone);
	p_DSHermesAUSRdy			    := ADR(bUSRdy);
	p_DSHermesADSRdy			    := ADR(bDSRdy);
	p_DSHermesAUSGdRdy		    	:= ADR(bUSGdRdy);
	p_DSHermesADSGdRdy		    	:= ADR(bDSGdRdy);
	p_DSHermesATransporting	    	:= ADR(bTransporting);
	p_DSHermesAStopTransport	    := ADR(bStopTransport);
	p_DSHermesAInternalSnd	    	:= ADR(sInternalSnd);
	p_DSHermesATransportFinishedSnd  := ADR(bTransportFinishedSnd);
	p_DSHermesABoardDepartedData     := ADR(tyBoardDepartedInfo);
	p_DSHermesAAllZonesEmpty         := ADR(bAllZonesEmpty);
	
	p_SendBFId                     := ADR (bSendBFId);        //ADD
	
	(* Always Change If Project Change *)
	
END_PROGRAM
