
ACTION Act_OptP0003UpdtStat:
	
	IF p_bOpsStatusRun THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 20;	
	ELSIF p_bOpsStatusCycleStop THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 21;	
	ELSIF p_bAlarmErr THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 22;
	ELSE
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 23;
	END_IF

	//SMEMA Indicator
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm1.uiMaskRtStat));
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiMaskRtStat));
			END_IF
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiMaskRtStat));
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSAComm1.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm1.uiMaskRtStat));
			END_IF
		END_IF
	END_IF

	
	//Communication - Signal
	//DBA A
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAAUSRdy = TRUE THEN
				IF p_bDSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAUSRdy = TRUE THEN
				IF p_bDSHermesAUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSOut.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE	
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAAUSRdy = TRUE THEN
				IF p_bDSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesAUSRdy = TRUE THEN
				IF p_bDSHermesAUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSOut1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//DSB A
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAADSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesADSRdy = TRUE THEN
				IF p_bDSHermesADSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommA = McSetCommModSMEMA THEN
			IF p_bDSSMEMAADSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn1.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommA = McSetCommModHermes THEN
			IF p_bDSHermesADSRdy = TRUE THEN
				IF p_bDSHermesADSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSIn1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	//DBA B
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABUSRdy = TRUE THEN
				IF p_bDSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBUSRdy = TRUE THEN
				IF p_bDSHermesBUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABUSRdy = TRUE THEN
				IF p_bDSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBUSRdy = TRUE THEN
				IF p_bDSHermesBUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//DSB B
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABDSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBDSRdy = TRUE THEN
				IF p_bDSHermesBDSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	ELSE
		IF p_tyMcParamCurr.eDSCommB = McSetCommModSMEMA THEN
			IF p_bDSSMEMABDSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.usiValueIdx	:= 0;
			END_IF
			
		ELSIF p_tyMcParamCurr.eDSCommB = McSetCommModHermes THEN
			IF p_bDSHermesBDSRdy = TRUE THEN
				IF p_bDSHermesBDSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.usiValueIdx	:= 0;
			END_IF
			
		END_IF
	END_IF
	
	//Current last zone product recipe name
	
	tyP0003MMenu.tyMMenuGen.tyStringProdNm.sValue := p_tyProdRcpCurrRcp1.sRcpNm;
	

END_ACTION
