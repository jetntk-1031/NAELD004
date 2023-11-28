
ACTION Act_OptP0950Ctrl: 

////Control
//	IF g_tyP0950Simu.tySimu.tyHotspotSimu.bRtCompl = TRUE THEN
//		g_tyP0950Simu.tySimu.tyHotspotSimu.bRtCompl	:= FALSE;
//		
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimuCtrl.tyLyr.uiRtStat));
//	END_IF
//	
//	IF g_tyP0950Simu.tySimuCtrl.tyLyr.uiRtStat.0 = FALSE THEN
//		IF g_tyP0950Simu.tySimuCtrl.tyBtnStart.bRtCompl = TRUE THEN
//			g_tyP0950Simu.tySimuCtrl.tyBtnStart.bRtComplm	:= FALSE;
//			
//			IF tyOpsProgData.bSimuCycStpCtrl = TRUE THEN
//				tyOpsProgData.bSimuCycStpCtrl	:= FALSE;
//			END_IF
//			
//			IF tyOpsProgData.bAutoStepCtrl = TRUE THEN
//				tyOpsProgData.bAutoStepCtrl	:= FALSE;
//			END_IF
//			
//			tyOpsProgData.bSimuCtrl	:= TRUE;
//			fUIInRtStatHide(ADR(g_tyP0950Simu.tySimuCtrl.tyLyr.uiRtStat));
//			
//		ELSIF g_tyP0950Simu.tySimuCtrl.tyBtnStop.bRtCompl = TRUE THEN
//			g_tyP0950Simu.tySimuCtrl.tyBtnStop.bRtCompl	:= FALSE;
//			
//			tyOpsProgData.bSimuCycStpCtrl	:= TRUE;
//			fUIInRtStatHide(ADR(g_tyP0950Simu.tySimuCtrl.tyLyr.uiRtStat));
//			
//		ELSIF g_tyP0950Simu.tySimuCtrl.tyBtnStep.bRtCompl = TRUE THEN
//			g_tyP0950Simu.tySimuCtrl.tyBtnStep.bRtCompl	:= FALSE;
//			
//			IF tyOpsProgData.bAutoStepCtrl = FALSE THEN
//				tyOpsProgData.bSimuCtrl			:= TRUE;
//				tyOpsProgData.bAutoStepCtrl		:= TRUE;
//				tyOpsProgData.bSimuCycStpCtrl	:= FALSE;
//			ELSIF tyOpsProgData.bSimuCycStpCtrl = TRUE THEN
//				tyOpsProgData.bSimuCycStpCtrl	:= FALSE;
//			ELSE
//				tyOpsProgData.bAutoStepRunCtrl	:= TRUE;
//			END_IF
//		ELSIF g_tyP0950Simu.tySimuCtrl.tyHotspotClose.bRtCompl = TRUE THEN
//			g_tyP0950Simu.tySimuCtrl.tyHotspotClose.bRtCompl	:= FALSE;
//			
//			fUIInRtStatHide(ADR(g_tyP0950Simu.tySimuCtrl.tyLyr.uiRtStat));
//		END_IF
//	END_IF
//	
//	//Display
//	IF tyOpsProgData.bSimuCtrl = TRUE AND tyOpsProgData.bSimuCycStpCtrl = TRUE THEN
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimu.tyBtnStartStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStopStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStepStat.uiRtStat));
//		
//		fbStopBlinkTm(IN := TRUE);
//		IF fbStopBlinkTm.Q = TRUE THEN
//			fbStopBlinkTm(IN := FALSE);
//			
//			g_tyP0950Simu.tySimu.tyBtnStartStat.bValue	:= NOT g_tyP0950Simu.tySimu.tyBtnStartStat.bValue;
//		END_IF
//	ELSIF tyOpsProgData.bSimuCtrl = TRUE AND tyOpsProgData.bAutoStepCtrl = TRUE THEN
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStartStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStopStat.uiRtStat));
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimu.tyBtnStepStat.uiRtStat));
//	ELSIF tyOpsProgData.bSimuCtrl = TRUE THEN
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimu.tyBtnStartStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStopStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStepStat.uiRtStat));
//		
//		g_tyP0950Simu.tySimu.tyBtnStartStat.bValue	:= FALSE;
//	ELSE
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStartStat.uiRtStat));
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimu.tyBtnStopStat.uiRtStat));
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyBtnStepStat.uiRtStat));
//	END_IF
//	
//	//Mask
//	IF bErr = TRUE THEN
//		fUIInRtStatOff(ADR(g_tyP0950Simu.tySimu.tyHotspotSimu.uiMaskRtStat));
//	ELSE
//		fUIInRtStatHide(ADR(g_tyP0950Simu.tySimu.tyHotspotSimu.uiMaskRtStat));
//	END_IF
	
	// Error
	IF EDGEPOS(p_bAlarmErr = TRUE AND p_bSimuStatusStop = FALSE) THEN
		
		tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
		tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		tyP0950Simu.tySimu.tyBtnInShutterSim.bRtCompl	:= FALSE;
	
		tyP0950Simu.tySimu.tyBtnStart.bValue	:= FALSE;
		tyP0950Simu.tySimu.tyBtnStop.bValue		:= FALSE;
		tyP0950Simu.tySimu.tyBtnInShutterSim.bValue	:= FALSE;
	
		eSimuAct	:= SimulationsActError;
		
	ELSE
		
		IF p_eSimuStat = SimulationsActError AND p_eSimuStatus = Done THEN
			eSimuAct	:= SimulationsActIdle;
			
		END_IF
		
	END_IF

	//Control
	IF tyP0950Simu.tySimu.tyBtnStart.bRtCompl = TRUE THEN
		tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		
		eSimuAct		:= SimulationsActStart;
		
		IF p_eSimuStat = SimulationsActStart AND p_eSimuStatus = Done THEN
			eSimuAct	:= SimulationsActIdle;
			
			tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
			
		END_IF
			
	ELSIF tyP0950Simu.tySimu.tyBtnStop.bRtCompl = TRUE THEN
		tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
		
		eSimuAct			:= SimulationsActStop;
			
		IF p_eSimuStat = SimulationsActStop AND p_eSimuStatus = Done THEN
			eSimuAct		:= SimulationsActIdle;
			
			tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		END_IF
		
	END_IF
	
	// Mask
	IF p_bAlarmErr = TRUE OR (p_tyDI.bSafetyRlySig = FALSE) THEN
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
	ELSIF p_bSimuStatusCycleStop = TRUE THEN
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
		fbStopBlinkTm(IN := TRUE);
		IF fbStopBlinkTm.Q = TRUE THEN
			fbStopBlinkTm(IN := FALSE);
			
			tyP0950Simu.tySimu.tyBtnStart.bValue		:= NOT tyP0950Simu.tySimu.tyBtnStart.bValue;
		END_IF
		
	ELSIF p_bSimuStatusRun = TRUE THEN
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
	ELSE
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
	END_IF	
	
	
	//AGV Simulatiom
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bValue THEN
			bAGVSimulationOn	:= TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl:= FALSE;
		ELSE
			bAGVSimulationOn := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bValue THEN
			bAGVSimulateOnline := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl := FALSE;
		ELSE
			bAGVSimulateOnline := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bValue THEN
			tyAGVSimulateSig.bVEHAuto := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHAuto := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bValue THEN
			tyAGVSimulateSig.bVEHInPos1 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos1 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bValue THEN
			tyAGVSimulateSig.bVEHInPos2 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos2 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bValue THEN
			tyAGVSimulateSig.bVEHInPos3 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos3 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bValue THEN
			tyAGVSimulateSig.bVEH1Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH1Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bValue THEN
			tyAGVSimulateSig.bVEH2Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH2Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bValue THEN
			tyAGVSimulateSig.bVEH3Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH3Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	
	//Machine to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMachineOnline.bValue := p_bMachineOnline;
	tyP0950Simu.tyMcToAGV.tyBtnMachineEstop.bValue	:= p_tyDTMagToAGV.bEStopErr;
	
	//Magazine #1 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag1Auto.bValue				:= p_tyDTMagToAGV.bCI1Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Empty.bValue				:= p_tyDTMagToAGV.bCI1MagazineEmpty;	
	tyP0950Simu.tyMcToAGV.tyBtnMag1IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI1IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Occupied.bValue			:= p_tyDTMagToAGV.bCI1Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Rdy.bValue				:= p_tyDTMagToAGV.bCI1Rdy;

	
	//Magazine #2 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag2Auto.bValue				:= p_tyDTMagToAGV.bCI2Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Empty.bValue				:= p_tyDTMagToAGV.bCI2MagazineEmpty;	
	tyP0950Simu.tyMcToAGV.tyBtnMag2IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI2IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Occupied.bValue			:= p_tyDTMagToAGV.bCI2Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Rdy.bValue				:= p_tyDTMagToAGV.bCI2Rdy;

	
	//Magazine #3 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag3Auto.bValue				:= p_tyDTMagToAGV.bCI3Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Empty.bValue				:= p_tyDTMagToAGV.bCI3MagazineEmpty;	
	tyP0950Simu.tyMcToAGV.tyBtnMag3IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI3IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Occupied.bValue			:= p_tyDTMagToAGV.bCI3Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Rdy.bValue				:= p_tyDTMagToAGV.bCI3Rdy;
	
	//SOT 
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnError.bValue	:= p_tyDO.bSOT1MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnRdy.bValue		:= p_tyDO.bSOT1MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnAvail.bValue	:= p_tyDO.bSOT1MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnSize.bValue	:= p_tyDO.bSOT1MagSizeLarge;

	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnError.bValue	:= p_tyDO.bSOT2MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnRdy.bValue		:= p_tyDO.bSOT2MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnAvail.bValue	:= p_tyDO.bSOT2MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnSize.bValue	:= p_tyDO.bSOT2MagSizeLarge;
	
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnError.bValue	:= p_tyDO.bSOT3MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnRdy.bValue		:= p_tyDO.bSOT3MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnAvail.bValue	:= p_tyDO.bSOT3MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnSize.bValue	:= p_tyDO.bSOT3MagSizeLarge;
	
	tyP0950Simu.tySimu.tyBtnMagSOT4.tyBtnError.bValue	:= p_tyDO.bSOT4MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT4.tyBtnRdy.bValue		:= p_tyDO.bSOT4MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT4.tyBtnAvail.bValue	:= p_tyDO.bSOT4MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT4.tyBtnSize.bValue	:= p_tyDO.bSOT4MagSizeLarge;
	
	//SOT1
	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bValue THEN
			tySOTSimulateSig1.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bValue THEN
			tySOTSimulateSig1.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bValue THEN
			tySOTSimulateSig1.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bValue THEN
			tySOTSimulateSig1.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF	
	
	
	//SOT2
	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bValue THEN
			tySOTSimulateSig2.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bValue THEN
			tySOTSimulateSig2.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bValue THEN
			tySOTSimulateSig2.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bValue THEN
			tySOTSimulateSig2.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	//SOT3
	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bValue THEN
			tySOTSimulateSig3.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bValue THEN
			tySOTSimulateSig3.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bValue THEN
			tySOTSimulateSig3.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bValue THEN
			tySOTSimulateSig3.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	
	//SOT4
	IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnInPos.bValue THEN
			tySOTSimulateSig4.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig4.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnRdy.bValue THEN
			tySOTSimulateSig4.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig4.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF
	IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnAvail.bValue THEN
			tySOTSimulateSig4.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig4.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT4.tyBtnError.bValue THEN
			tySOTSimulateSig4.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig4.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT4.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	//InShutter Sim
	IF tyP0950Simu.tySimu.tyBtnInShutterSim.bValue THEN
		usiSimuMod := 1;// shutter sim
		IF fbShutterSimChgOver.Q OR tyP0950Simu.tySimu.tyBtnInShutterSim.bRtCompl THEN
			tyP0950Simu.tySimu.tyBtnInShutterSim.bRtCompl := FALSE;
			fbShutterSimChgOver (IN:= FALSE);
			IF p_tyDI.bInShutterCloseRS AND (p_tyDI.bInShutterCloseRS2 OR p_tyNtParamCurr.bProjShutter2Prep = FALSE) AND  
				(p_tyDI.bInShutterCloseRS3 OR p_tyNtParamCurr.bProjShutter3Prep = FALSE) AND p_tyDI.bOutShutterCloseRS THEN
				eInShutterAct  := PneuActRet;
				eInShutterAct2 := PneuActRet;
				eInShutterAct3 := PneuActRet;
				eOutShutterAct := PneuActRet;
			ELSIF p_tyDI.bInShutterOpenRS AND (p_tyDI.bInShutterOpenRS2 OR p_tyNtParamCurr.bProjShutter2Prep = FALSE) AND 
				(p_tyDI.bInShutterOpenRS3 OR p_tyNtParamCurr.bProjShutter3Prep = FALSE)AND p_tyDI.bOutShutterOpenRS THEN
				eInShutterAct  := PneuActExt;
				eInShutterAct2 := PneuActExt;
				eInShutterAct3 := PneuActExt;
				eOutShutterAct := PneuActExt;
			END_IF
		ELSIF fbShutterSimChgOver.ET = T#5s THEN
			
		END_IF
		
		IF p_eInShutterStatus = Done AND (p_eInShutterStatus2 = Done OR p_tyNtParamCurr.bProjShutter2Prep = FALSE) AND 
			(p_eInShutterStatus3 = Done OR p_tyNtParamCurr.bProjShutter3Prep = FALSE) AND p_eOutShutterStatus = Done THEN
			eInShutterAct  := PneuActIdle;
			eInShutterAct2 := PneuActIdle;
			eInShutterAct3 := PneuActIdle;
			eOutShutterAct := PneuActIdle;
			fbShutterSimChgOver (IN:= TRUE);
		END_IF
		fbShutterSimChgOver;
	ELSE
		eInShutterAct  := PneuActIdle;
		eInShutterAct2 := PneuActIdle;
		eInShutterAct3 := PneuActIdle;
		eOutShutterAct := PneuActIdle;

	END_IF
	
	//Test trav
	IF tyP0950Simu.tySimu.tyBtnTestTrav.bValue THEN
		CASE usiTestTravStep OF
			0:
				eTravAct		:= TravActGoAPos;
			
				IF p_eTravStat = TravActGoAPos AND p_eTravStatus = Done THEN
					eTravAct	:= TravActIdle;
					usiTestTravStep := 1;
				END_IF
			1:
				
				eTravAct		:= TravActGoCPos;
			
				IF p_eTravStat = TravActGoCPos AND p_eTravStatus = Done THEN
					eTravAct	:= TravActIdle;
					usiTestTravStep := 0;
				END_IF
		END_CASE
		diMnlTravNomSpd		:= 1500000;
	ELSE
		eTravAct		:= TravActIdle;
		diMnlTravNomSpd		:= 0;
	END_IF
	
	//NT- speed
	IF tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue AND usiSimuMod =1 AND usiSimuNtStep = 0 THEN
		eTravAct		:= TravActIdle;
		p_diNtParamTravAutoSpd 		:= tyP0950Simu.tySimu.tyNumTravSpd.diValue;
		p_diNtParamLifterAutoSpd	:= tyP0950Simu.tySimu.tyNumLifterSpd.diValue;
		eNtWr := 3;
		IF p_eNtParamStat = 3 AND p_eNtParamStatus = Done THEN
			CASE usiWrStep OF
				0: 
					
					memcpy(ADR(fbSDOWriteAccT.data0),ADR(udiAcc),1);
					memcpy(ADR(fbSDOWriteAccT.data1),ADR(udiAcc)+1,1);
					memcpy(ADR(fbSDOWriteAccL.data0),ADR(udiAcc),1);
					memcpy(ADR(fbSDOWriteAccL.data1),ADR(udiAcc)+1,1);
					fbSDOWriteAccT(enable := TRUE,index := 16#6083, subindex := 0, datalen := 4);
					fbSDOWriteAccL(enable := TRUE,index := 16#6083, subindex := 0, datalen := 4);
					IF fbSDOWriteAccT.status = 65535 AND fbSDOWriteAccL.status = 65535 THEN
						usiWrStep := 1;
					END_IF
									
				1:
					fbSDOWriteAccT(enable := TRUE);
					fbSDOWriteAccL(enable := TRUE);
					IF fbSDOWriteAccT.status = 0 AND fbSDOWriteAccL.status = 0 THEN
						fbSDOWriteAccT(enable := FALSE);
						fbSDOWriteAccL(enable := FALSE);
						usiWrStep := 2;
//						tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue := FALSE;
//						eNtWr := 0;
					END_IF
				2:
					memcpy(ADR(fbSDOWriteAccT.data0),ADR(udiAcc),1);
					memcpy(ADR(fbSDOWriteAccT.data1),ADR(udiAcc)+1,1);
					memcpy(ADR(fbSDOWriteAccL.data0),ADR(udiAcc),1);
					memcpy(ADR(fbSDOWriteAccL.data1),ADR(udiAcc)+1,1);
					fbSDOWriteAccT(enable := TRUE,index := 16#6084, subindex := 0, datalen := 4);
					fbSDOWriteAccL(enable := TRUE,index := 16#6084, subindex := 0, datalen := 4);
					IF fbSDOWriteAccT.status = 65535 AND fbSDOWriteAccL.status = 65535 THEN
						usiWrStep := 3;
					END_IF
				3:
					fbSDOWriteAccT(enable := TRUE);
					fbSDOWriteAccL(enable := TRUE);
					IF fbSDOWriteAccT.status = 0 AND fbSDOWriteAccL.status = 0 THEN
						fbSDOWriteAccT(enable := FALSE);
						fbSDOWriteAccL(enable := FALSE);
						usiWrStep := 0;
						tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue := FALSE;
						eNtWr := 0;
					END_IF
				
			END_CASE
		END_IF
	END_IF
	
		
	//NT -addr and jobno
	IF tyP0950Simu.tySimu.tyBtnNtParaWr.bValue AND usiSimuMod =1 THEN
		p_sNtParamJobNo 		:= tyP0950Simu.tySimu.tyStringJobNo.sValue;
		p_usiNtParamNtAddr 		:= DINT_TO_USINT( tyP0950Simu.tySimu.tyNumAddr.diValue);
		CASE usiSimuNtStep OF
			0:
				eNtWr := 3;
				IF p_eNtParamStat = 3 AND p_eNtParamStatus = Done THEN
					eNtWr := 0;
					usiSimuNtStep := 1;
				END_IF
			1:
				IF  p_eNtParamStatus = Idle THEN
					eNtWr := 5;
				END_IF
				IF p_eNtParamStat = 5 AND p_eNtParamStatus = Done THEN
					eNtWr := 0;
					usiSimuNtStep := 2;
				END_IF
			2:
				p_eAct := 1; //refresh page
				IF eUIInit = UIInitialDone THEN
					p_eAct := 0;
					usiSimuNtStep := 0;
					tyP0950Simu.tySimu.tyBtnNtParaWr.bValue := FALSE;
				END_IF
		END_CASE
		
	ELSIF usiSimuMod =0 THEN //when reset
		tyP0950Simu.tySimu.tyBtnNtParaWr.bValue := FALSE;
	END_IF
	
	Act_OptP0950RcpGen;


END_ACTION
