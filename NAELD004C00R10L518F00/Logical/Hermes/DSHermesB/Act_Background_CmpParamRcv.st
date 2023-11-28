(** 2021-08-01 **)
ACTION Act_Background_CmpParamRcv:
	
	IF eStatus2 <> Error THEN
		
		IF tyMsgTypeRcv.bStopTransport = TRUE THEN
			udiStatus2	:= fHermesChkParamSTST(tyStartTransport , tyStopTransport);
			
			IF udiStatus2 <> 0 THEN
				eStatus2	:= Error;
				
				IF udiStatus2 = 2712 THEN
					udiStatus2	:= 10104;	//BoardId Mismatch While Checking Start Transport & Stop Transport
				ELSIF udiStatus2 = 2713 THEN
					udiStatus2	:= 10105;	//BoardId Missing While Checking Start Transport & Stop Transport
				END_IF
				
				fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeNotification);
			
				tyNotificationSnd.tyAvl.bSeverity			:= TRUE;
				tyNotificationSnd.tyAvl.bNotificationCode	:= TRUE;
				tyNotificationSnd.tyAvl.bDescription		:= TRUE;
				tyNotificationSnd.tyData.eSeverity			:= HermesSeverityFatalError;
				tyNotificationSnd.tyData.iNotificationCode	:= UDINT_TO_INT(udiStatus2);
				tyNotificationSnd.tyData.sDescription		:= a_tyAlmText[udiStatus2].sAlmText;
			END_IF
		END_IF
		
		IF tyMsgTypeRcv.bStartTransport = TRUE THEN
			IF fHermesChkParamBAST(tyBoardAvailableSnd , tyStartTransport) <> 0 THEN
					p_bSndNotStart	:= TRUE;
			END_IF
		END_IF
		
	    IF bFeatureBoardForecast THEN	
			IF tyMsgTypeRcv.bMachineReady = TRUE AND bSendBFId AND (idxBoardForecastId = 1) THEN
				udiStatus2	:= fHermesChkParamBFMR(tyBoardForecastSnd , tyMachineReady); //Modify this if our machine need to Error when ForecastId in MachineReady(Id) received is different
	
				IF udiStatus2 <> 0 THEN
					eStatus2	:= Error;
				
					IF udiStatus2 = 2716 THEN
						udiStatus2	:= 10164;	//Forecast Id Mismatch While Checking BoardForecast & Machine Ready
					ELSIF udiStatus2 = 2717 THEN
						udiStatus2	:= 10165;	//Product Type Id Mismatch While Checking BoardForecast & Machine Ready
					ELSIF udiStatus2 = 2718 THEN
						udiStatus2	:= 10166;	//Width Mismatch While Checking BoardForecast & Machine Ready
					END_IF
				
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeNotification);
			
					tyNotificationSnd.tyAvl.bSeverity			:= TRUE;
					tyNotificationSnd.tyAvl.bNotificationCode	:= TRUE;
					tyNotificationSnd.tyAvl.bDescription		:= TRUE;
					tyNotificationSnd.tyData.eSeverity			:= HermesSeverityFatalError; //Let it Fatal and reset connection
					tyNotificationSnd.tyData.iNotificationCode	:= UDINT_TO_INT(udiStatus2);
					tyNotificationSnd.tyData.sDescription		:= a_tyAlmText[udiStatus2].sAlmText;
					
				ELSE
					bRstSendBFId := TRUE; //Reset bSendBFId if MachineReady(Id) or MachineReady() received is ok
				END_IF
			END_IF		
		END_IF
	END_IF
	
END_ACTION
