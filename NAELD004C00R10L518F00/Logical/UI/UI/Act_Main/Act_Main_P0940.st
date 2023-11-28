
ACTION Act_Main_P0940:
	
	//Display
	tyP0940CommCtrl.tyDSSMEMAB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	IF  p_tyNtParamCurr.bProjAGVPrep THEN
		
		tyP0940CommCtrl.tySOT.tySOTLyr1.uiRtStat.0 := FALSE;
		tyP0940CommCtrl.tySOT.tySOTLyr2.uiRtStat.0 := FALSE;
		tyP0940CommCtrl.tySOT.tySOTLyr3.uiRtStat.0 := p_tyNtParamCurr.eProjMag <> LDMagTriple AND p_tyNtParamCurr.eProjMag <> LDMagQuadruple;
		tyP0940CommCtrl.tySOT.tySOTLyr4.uiRtStat.0 := p_tyNtParamCurr.eProjMag <> LDMagQuadruple;

	ELSE
		
		tyP0940CommCtrl.tySOT.tySOTLyr1.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr2.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr3.uiRtStat.0 := TRUE;
		tyP0940CommCtrl.tySOT.tySOTLyr4.uiRtStat.0 := TRUE;
	
	END_IF	
	
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv1.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv2.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv3.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0940CommCtrl.tySOT.tyBtnAIVRcv4.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	
	tyP0940CommCtrl.tySOT.tyBtnFleetMgrActive.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep);
	tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.uiRtStat.0 :=  NOT(p_tyNtParamCurr.bProjAGVPrep);
	
	
	
END_ACTION
