
ACTION Act_OptP0200UpdtDat: 
	
	//PCB Status
	IF p_bPullConvHvBrd = TRUE THEN
		tyP0200OpsGen.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
	ELSE
		tyP0200OpsGen.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF
	
	//Communication - Mask
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));
			END_IF
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm.uiMaskRtStat));
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapDSAComm1.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyDSCommB.tyBitmapDSBComm1.uiMaskRtStat));
			END_IF
		END_IF
	END_IF
	//Communication - Signal
	//DBA A
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAAUSRdy = TRUE THEN
				IF p_bDSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAUSRdy = TRUE THEN
				IF p_bDSHermesAUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSOut.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE	
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAAUSRdy = TRUE THEN
				IF p_bDSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAUSRdy = TRUE THEN
				IF p_bDSHermesAUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSOut1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//DSB A
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAADSRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapDSIn.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSIn.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesADSRdy = TRUE THEN
				IF p_bDSHermesADSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSIn.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSIn.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAADSRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapDSIn1.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSIn1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesADSRdy = TRUE THEN
				IF p_bDSHermesADSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapDSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapDSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapDSIn1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	//DBA B
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABUSRdy = TRUE THEN
				IF p_bDSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBUSRdy = TRUE THEN
				IF p_bDSHermesBUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapOut.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABUSRdy = TRUE THEN
				IF p_bDSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBUSRdy = TRUE THEN
				IF p_bDSHermesBUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapOut1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//DSB B
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABDSRdy = TRUE THEN
				tyP0200OpsGen.tyDSCommB.tyBitmapIn.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapIn.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBDSRdy = TRUE THEN
				IF p_bDSHermesBDSGdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapIn.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapIn.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABDSRdy = TRUE THEN
				tyP0200OpsGen.tyDSCommB.tyBitmapIn1.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapIn1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBDSRdy = TRUE THEN
				IF p_bDSHermesBDSGdRdy = TRUE THEN
					tyP0200OpsGen.tyDSCommB.tyBitmapIn1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyDSCommB.tyBitmapIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyDSCommB.tyBitmapIn1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//Alarm
	IF NOT p_bAlarmErr THEN
		memset(ADR(tyUIAlmData.bAlm) , 0 , SIZEOF(tyUIAlmData.bAlm));
	END_IF 
	
	IF NOT p_bAlarmWarning THEN
		memset(ADR(tyUIAlmData.bWarning) , 0 , SIZEOF(tyUIAlmData.bWarning));
	ELSE 
		IF p_bDSHermesAConnected OR p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			tyUIAlmData.bWarning[3363] := FALSE;
		END_IF 
		IF p_bDSHermesBConnected OR p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			tyUIAlmData.bWarning[3531] := FALSE;
		END_IF 
	END_IF
	
	FOR i := 1 TO c_uiP0200TableSize DO
		IF p_bStartupUISettingsLoadDone THEN
			IF p_tyAlarmCurrList[i].eSeverity = AlmSeverityError THEN
				tyUIAlmData.bAlm[p_tyAlarmCurrList[i].udiErrorCode] := p_tyAlarmCurrList[i].bAlm;
			ELSIF p_tyAlarmCurrList[i].eSeverity = AlmSeverityWarning THEN
				tyUIAlmData.bWarning[p_tyAlarmCurrList[i].udiErrorCode] := p_tyAlarmCurrList[i].bWarning;
			END_IF
		END_IF
	END_FOR
	
	
	//Magazine Info
	IF p_tyNtParamCurr.bProjAutoRcpPrep AND (p_tyMcParamCurr.bHermesSvyEn OR p_tyNtParamCurr.eCustomerReq = We_Fabricate) THEN
		IF p_ausiSvyMagAccOrder[1] = 10 THEN
			tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_diLinkAutoRcpMag1MinSlt;
			tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_diLinkAutoRcpMag1MaxSlt;
			tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag1Pitch;
		ELSIF p_ausiSvyMagAccOrder[2] = 10 THEN
			tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_diLinkAutoRcpMag2MinSlt;
			tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_diLinkAutoRcpMag2MaxSlt;
			tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag2Pitch;
		ELSIF p_ausiSvyMagAccOrder[3] = 10 THEN
			tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_diLinkAutoRcpMag3MinSlt;
			tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_diLinkAutoRcpMag3MaxSlt;
			tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_diLinkAutoRcpMag3Pitch;
		END_IF
	ELSE //standard
		tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
	END_IF
	
	CASE p_tyProdRcpCurrRcp2.usiMcMod OF
		0:
			tyP0200OpsGen.tyOps.tyNumMinSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValue;
			tyP0200OpsGen.tyOps.tyNumMaxSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValue;
			tyP0200OpsGen.tyOps.tyNumPitchRear.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
	
		1: 
			tyP0200OpsGen.tyOps.tyNumMinSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
			tyP0200OpsGen.tyOps.tyNumMaxSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
			tyP0200OpsGen.tyOps.tyNumPitchRear.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
			
		2:
			tyP0200OpsGen.tyOps.tyNumMinSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValueRear;
			tyP0200OpsGen.tyOps.tyNumMaxSltRangeRear.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValueRear;
			tyP0200OpsGen.tyOps.tyNumPitchRear.diValue			:= p_tyProdRcpCurrRcp2.diPitchRear;
		END_CASE
			
	//Mag1
	IF p_bBuffer1MagPresent = TRUE THEN
		IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_ausiSvyMagAccOrder[1] = 0 AND p_tyMcParamCurr.eDSCommA <> McSetCommModSMEMA 
			AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue		:= 0;
			tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue		:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue		:= p_tyBuffer1BffrStat.diTtlBadBrd + p_tyBuffer1BffrStat.diTtlGdBrd;
			tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue		:= p_tyBuffer1BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue		:= 0;
	END_IF
	
	//Mag2
	IF p_bBuffer2MagPresent = TRUE THEN
		IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_ausiSvyMagAccOrder[2] = 0 AND p_tyMcParamCurr.eDSCommA <> McSetCommModSMEMA 
			AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue		:= 0;
			tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue		:= p_tyBuffer2BffrStat.diTtlBadBrd + p_tyBuffer2BffrStat.diTtlGdBrd;
			tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= p_tyBuffer2BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= 0;
	END_IF
	
	//Mag3
	IF p_bBuffer3MagPresent = TRUE THEN
		IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_ausiSvyMagAccOrder[3] = 0 AND p_tyMcParamCurr.eDSCommA <> McSetCommModSMEMA 
			AND p_tyMcParamCurr.bHermesSvyEn THEN
			tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= 0;
			tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= p_tyBuffer3BffrStat.diTtlBadBrd + p_tyBuffer3BffrStat.diTtlGdBrd;
			tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= p_tyBuffer3BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= 0;
	END_IF
	
	//Mag4
	IF p_bBuffer4MagPresent = TRUE THEN
		tyP0200OpsGen.tyOps.tyNumMag4AvlQty.diValue		:= p_tyBuffer4BffrStat.diTtlBadBrd + p_tyBuffer4BffrStat.diTtlGdBrd;
		tyP0200OpsGen.tyOps.tyNumMag4TtlSlt.diValue		:= p_tyBuffer4BffrStat.diTtlBrdCap;
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag4AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag4TtlSlt.diValue		:= 0;
	END_IF

END_ACTION
