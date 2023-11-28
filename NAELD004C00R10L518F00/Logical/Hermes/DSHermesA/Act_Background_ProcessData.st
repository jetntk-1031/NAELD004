(** 2021-08-01 **)
ACTION Act_Background_ProcessData:
	
	//Pass Board Available data and TransportFinished BOOL to "BoardDeparted" (SupervisoryHermes)
	
	tyBoardDepartedInfo := tyBoardAvailableSnd;
	
	IF EDGEPOS (fbSequenceDS.eMsgTypeSnd = HermesMsgTypeTransportFinished) THEN 
		bTransportFinishedSnd := TRUE;		
	END_IF
	
	//Auto Reset bTransportFinishedSnd
	fbSendTm(IN := bTransportFinishedSnd, PT := T#0.3S);
	IF fbSendTm.Q = TRUE THEN
		fbSendTm(IN := FALSE);
				
		bTransportFinishedSnd	:= FALSE;
	END_IF
	
	//For Power On or Transfer New Program, udiBAIndex will reset to 0. To find which array sBoardId is empty and continue writing.
	IF udiBAIndex = 0 AND p_bLinkStartupRun = FALSE THEN
			
		udiTargetAddress := ADR(a_tyBoardDepartedInfo[0].tyData.sBoardId); //Start address
		udiSizeAddress   := SIZEOF(a_tyBoardDepartedInfo[0]); //Size of one array
		
		FOR i := 0 TO 49 DO //50 Boards Data
									
			IF memcmp((udiTargetAddress)+(i*udiSizeAddress), ADR('') , 1) = 0 THEN
						
				bFoundIndex	:= TRUE;
				udiBAIndex := i;
				EXIT;
			END_IF		

		END_FOR		
	END_IF    
	
	//Retain last 50 PCB handled Boards Data
	p_udiRetainDataAddr	:= ADR(a_tyBoardDepartedInfo);
	p_udiRetainDataLen	:= SIZEOF(a_tyBoardDepartedInfo);
	
	//Write BoardAvailable Data into arrays and store after send out TransportFinished
	IF EDGENEG(bTransportFinishedSnd) THEN 
			
		memset(ADR(a_tyBoardDepartedInfo[udiBAIndex]) , 0 , SIZEOF(a_tyBoardDepartedInfo[udiBAIndex]));
		memcpy(ADR(a_tyBoardDepartedInfo[udiBAIndex]) , ADR(tyBoardDepartedInfo) , SIZEOF(tyBoardDepartedInfo));
   
			
		udiBAIndex	:= udiBAIndex + 1; 
	
		p_eAct := HermesActWriteRetain;
					
	END_IF
	
	IF eStatus = Done AND eStat = HermesActWriteRetain THEN			
		p_eAct		:= HermesActIdle;
	END_IF
	
	IF udiBAIndex >= 50 THEN
	   udiBAIndex := 0;
	END_IF
	
	//BoardForecast
	bFeatureBoardForecast := (p_tyParam.bFeatureBoardForecast = TRUE) AND (tyServiceDescriptionRcv.tyAvl.tySupportedFeatures.bFeatureBoardForecast = TRUE) (*AND bHandshakeDone*) ;
	
	//New Product can come anytime from Upstream / Select From Product Setting
	IF EDGEPOS (p_bNewProduct) THEN //p_bNewProduct will be True only when machine accepted new recipe, can perform ChangeOver, i.e Machine Free (all zones).
		bNewChangeOver := TRUE;
		idxBoardForecastId	:= 0;//index to send B.F(Id)
	END_IF
	
	//New Width
	IF EDGEPOS (p_bNewWidth) THEN //p_bSiemensNewProduct will be True only when machine accepted new recipe, can perform ChangeOver, i.e Machine Free (all zones).
		bNewChangeOver := TRUE;
		idxBoardForecastId	:= 0;//index to send B.F(Id)
	END_IF
		
	IF bFeatureBoardForecast = TRUE THEN
		fbSendBFRstTmr;
		IF bNewChangeOver AND bAllZonesEmpty AND p_bInitDone THEN //Machine Free (all zones)
			bSendBFId := TRUE;
			bNewChangeOver := FALSE;
			fbSendBFRstTmr(IN:= TRUE);
		ELSIF fbSendBFRstTmr.Q THEN
			fbSendBFRstTmr(IN:= FALSE);
			bSendBFId := FALSE;
		END_IF	
	ELSE	
		bNewChangeOver := FALSE;
		bSendBFId := FALSE;
		bRstSendBFId := FALSE;
		idxBoardForecastId	    := 0;
		idxBoardForecastNoId	:= 0;
	END_IF
	
	//Reset bSendBFId and idxBoardForecastId	after receive Machine Ready(Id) or Machine Ready()
	IF bRstSendBFId THEN 
		bSendBFId := FALSE;
		bRstSendBFId := FALSE;
		idxBoardForecastId	:= 0;
	END_IF
	
//	//Reset both idxBoardForecastId under handshake condition. Note: idxBoardForecastId only send once.
//	IF (fbSequenceDS.eState <> HermesStateNotAvailableNotReady) AND (fbSequenceDS.eState <> HermesStateMachineReady) AND (fbSequenceDS.eState <> HermesStateBoardAvailable) AND (fbSequenceDS.eState <> HermesStateAvailableAndReady) AND bHandshakeDone = TRUE THEN		
//		idxBoardForecastId	:= 0;//index to send B.F(Id)
//	END_IF
	
	//Reset idxBoardForecastNoId when incoming zone empty
	IF p_bFirstZoneHaveBoard =FALSE AND p_bFirstZoneEndSen = FALSE THEN
		idxBoardForecastNoId	:= 0;//index to send B.F()
	END_IF
	
END_ACTION
