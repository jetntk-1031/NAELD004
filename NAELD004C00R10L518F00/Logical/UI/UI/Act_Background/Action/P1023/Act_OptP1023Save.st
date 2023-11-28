
ACTION Act_OptP1023Save:
	
	IF tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bRtCompl				OR tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bRtCompl
		OR tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.bRtCompl	OR tyP1023McSetHComm.tyDSSMEMAA.tyBtnGdSig.bRtCompl
		OR tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.bRtCompl	OR tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.bRtCompl
		OR tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.bRtCompl		OR tyP1023McSetHComm.tyDSHermesA.tyBtnCheckAliveResponse.bRtCompl
		OR tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.bRtCompl	OR tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.bRtCompl
		
		OR tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bRtCompl			OR tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bRtCompl
		OR tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.bRtCompl	OR tyP1023McSetHComm.tyDSSMEMAB.tyBtnGdSig.bRtCompl
		OR tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.bRtCompl	OR tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.bRtCompl
		OR tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.bRtCompl		OR tyP1023McSetHComm.tyDSHermesB.tyBtnCheckAliveResponse.bRtCompl 
		OR tyP1023McSetHComm.tyDSHermesB.tyBtnBoardForecast.bRtCompl	OR tyP1023McSetHComm.tyDSHermesB.tyBtnSendBoardInfo.bRtCompl THEN
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyDSSMEMAA.tyBtnGdSig.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyBtnCheckAliveResponse.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.bRtCompl		:= FALSE;

		
		tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyDSSMEMAB.tyBtnGdSig.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyBtnCheckAliveResponse.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyBtnBoardForecast.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyDSHermesB.tyBtnSendBoardInfo.bRtCompl		:= FALSE;
	END_IF
	
	//new for Hermes 1.3
	//Auto de-select 
//	IF EDGEPOS(tyP1023McSetHComm.tyUSHermes.tyBtnCmpTypeId.bValue) THEN 
//		tyP1023McSetHComm.tyUSHermes.tyBtnOverWrite.bValue := FALSE;
//	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermes.tyBtnCmpParam.bValue) THEN 
//		tyP1023McSetHComm.tyUSHermes.tyBtnCmpTypeId.bValue := TRUE;
//	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermes.tyBtnCmpTypeId.bValue = FALSE) THEN 
//		tyP1023McSetHComm.tyUSHermes.tyBtnCmpParam.bValue := FALSE;	
//	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermes.tyBtnOverWrite.bValue = TRUE) THEN 
//		tyP1023McSetHComm.tyUSHermes.tyBtnCmpTypeId.bValue := FALSE;	
//	END_IF
	bSaveHMIConfigure := tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		IF usiSaveCommStep = 0 THEN
			//Save Machine Parameter
			//Downstream A
			IF tyP1023McSetHComm.tyDSSelA.tyBtnSMEMA.bValue = TRUE THEN
				tyMcParamWr.eDSCommA	:= McSetCommModSMEMA;
			ELSIF tyP1023McSetHComm.tyDSSelA.tyBtnHermes.bValue = TRUE THEN	
				tyMcParamWr.eDSCommA	:= McSetCommModHermes;
			END_IF
			
			tyMcParamWr.tyDSCommASMEMA.eSelection		:= USINT_TO_UDINT(tyP1023McSetHComm.tyDSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx);
			tyMcParamWr.tyDSCommASMEMA.bStatSigSetGd	:= tyP1023McSetHComm.tyDSSMEMAA.tyBtnGdSig.bValue;
			
			//Downstream B
			IF tyP1023McSetHComm.tyDSSelB.tyBtnSMEMA.bValue = TRUE THEN
				tyMcParamWr.eDSCommB	:= McSetCommModSMEMA;
			ELSIF tyP1023McSetHComm.tyDSSelB.tyBtnHermes.bValue = TRUE THEN	
				tyMcParamWr.eDSCommB	:= McSetCommModHermes;
			END_IF
			
			tyMcParamWr.tyDSCommBSMEMA.eSelection		:= USINT_TO_UDINT(tyP1023McSetHComm.tyDSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx);
			tyMcParamWr.tyDSCommBSMEMA.bStatSigSetGd	:= tyP1023McSetHComm.tyDSSMEMAB.tyBtnGdSig.bValue;
			
			eMcParamAct	:= McParamActWrite;
			
			IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN 
				eMcParamAct	:= McParamActIdle;
				
				//Update BackUp Param
				tyP1023McSetHComm.tyDSSelABkUp 		:= tyP1023McSetHComm.tyDSSelA;
				tyP1023McSetHComm.tyDSSMEMAABkUp	:= tyP1023McSetHComm.tyDSSMEMAA;
				tyP1023McSetHComm.tyDSSelBBkUp		:= tyP1023McSetHComm.tyDSSelB;
				tyP1023McSetHComm.tyDSSMEMABBkUp	:= tyP1023McSetHComm.tyDSSMEMAB;
				
				usiSaveCommStep	:= 1;
				
				bHCommModChg := TRUE; // to opsmag1,2,3
			ELSIF p_eMcParamStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxSaveErr);
				
				IF tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
					
					//Restore Param
					tyP1023McSetHComm.tyDSSelA		:= tyP1023McSetHComm.tyDSSelABkUp;
					tyP1023McSetHComm.tyDSSMEMAA	:= tyP1023McSetHComm.tyDSSMEMAABkUp;
					tyP1023McSetHComm.tyDSSelB		:= tyP1023McSetHComm.tyDSSelBBkUp;
					tyP1023McSetHComm.tyDSSMEMAB	:= tyP1023McSetHComm.tyDSSMEMABBkUp;
					
					tyMcParamWr	:= p_tyMcParamCurr;
					
					usiSaveCommStep	:= 1;
				END_IF
				
			END_IF
			
		ELSIF usiSaveCommStep = 1 THEN
			//Save Hermes Configuration
			//Downstream A
			a_tyHermesDSParamWr[0].tSndAlive					:= DINT_TO_TIME(tyP1023McSetHComm.tyDSHermesA.tyNumSndAliveTm.diValue);
			a_tyHermesDSParamWr[0].uiSvrPort					:= DINT_TO_UINT(tyP1023McSetHComm.tyDSHermesA.tyNumSvrPort.diValue);
			a_tyHermesDSParamWr[0].iLaneID						:= DINT_TO_INT(tyP1023McSetHComm.tyDSHermesA.tyNumLaneID.diValue);
			a_tyHermesDSParamWr[0].bFeatureCheckAliveResponse	:= tyP1023McSetHComm.tyDSHermesA.tyBtnCheckAliveResponse.bValue;
			a_tyHermesDSParamWr[0].bFeatureBoardForecast	    := tyP1023McSetHComm.tyDSHermesA.tyBtnBoardForecast.bValue;
			a_tyHermesDSParamWr[0].bFeatureSendBoardInfo    	:= tyP1023McSetHComm.tyDSHermesA.tyBtnSendBoardInfo.bValue;
		
			//Downstream B
			a_tyHermesDSParamWr[1].tSndAlive					:= DINT_TO_TIME(tyP1023McSetHComm.tyDSHermesB.tyNumSndAliveTm.diValue);
			a_tyHermesDSParamWr[1].uiSvrPort					:= DINT_TO_UINT(tyP1023McSetHComm.tyDSHermesB.tyNumSvrPort.diValue);
			a_tyHermesDSParamWr[1].iLaneID						:= DINT_TO_INT(tyP1023McSetHComm.tyDSHermesB.tyNumLaneID.diValue);
			a_tyHermesDSParamWr[1].bFeatureCheckAliveResponse	:= tyP1023McSetHComm.tyDSHermesB.tyBtnCheckAliveResponse.bValue;
			a_tyHermesDSParamWr[1].bFeatureBoardForecast	    := tyP1023McSetHComm.tyDSHermesB.tyBtnBoardForecast.bValue;
			a_tyHermesDSParamWr[1].bFeatureSendBoardInfo    	:= tyP1023McSetHComm.tyDSHermesB.tyBtnSendBoardInfo.bValue;

			
			eHermesAct	:= HermesActWriteConfig;
			
			IF p_eHermesStat = HermesActWriteConfig AND p_eHermesStatus = Done THEN 
				eHermesAct	:= HermesActIdle;
				
				//Update BackUp Param
				tyP1023McSetHComm.tyDSHermesABkUp	:= tyP1023McSetHComm.tyDSHermesA;
				tyP1023McSetHComm.tyDSHermesBBkUp	:= tyP1023McSetHComm.tyDSHermesB;
				
				usiSaveCommStep	:= 0;
				
				tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
				
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				
			ELSIF p_eMcParamStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxSaveErr);
				
				IF tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
					
					//Restore Param
					tyP1023McSetHComm.tyDSHermesA	:= tyP1023McSetHComm.tyDSHermesABkUp;
					tyP1023McSetHComm.tyDSHermesB	:= tyP1023McSetHComm.tyDSHermesBBkUp;
					
					a_tyHermesDSParamWr				:= p_tyHermesConfiguration.a_tyDSParam;
					
					tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
					
					fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
					
					usiSaveCommStep	:= 0;
				END_IF
				
			END_IF
			
		ELSIF usiSaveCommStep = 99 THEN	
			//Message: IP Address Invalid
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxIPAddrInvalid);
			
			IF tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl = TRUE THEN
				tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl	:= FALSE;
				tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
				
				//Restore Param
				tyP1023McSetHComm.tyDSSelA		:= tyP1023McSetHComm.tyDSSelABkUp;
				tyP1023McSetHComm.tyDSSMEMAA	:= tyP1023McSetHComm.tyDSSMEMAABkUp;
				tyP1023McSetHComm.tyDSHermesA	:= tyP1023McSetHComm.tyDSHermesABkUp;
				tyP1023McSetHComm.tyDSSelB		:= tyP1023McSetHComm.tyDSSelBBkUp;
				tyP1023McSetHComm.tyDSSMEMAB	:= tyP1023McSetHComm.tyDSSMEMABBkUp;
				tyP1023McSetHComm.tyDSHermesB	:= tyP1023McSetHComm.tyDSHermesBBkUp;
				
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				
				usiSaveCommStep	:= 0;
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
