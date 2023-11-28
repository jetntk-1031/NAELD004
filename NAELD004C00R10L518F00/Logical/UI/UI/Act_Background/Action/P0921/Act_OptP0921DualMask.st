
ACTION Act_OptP0921DualMask: 
	
	IF eCurrPage = UIP0921Shutter THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskEStop);
			
			tyP0921InletNOutletShutter.tyDualMaskEStop.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskEStop.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskCWSig);
			
			tyP0921InletNOutletShutter.tyDualMaskCWSig.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskCWSig.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskSafetyRly);
			
			tyP0921InletNOutletShutter.tyDualMaskSafetyRly.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskSafetyRly.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_eLifterBtmStatus = Busy AND p_bLifterBtmPwrOn THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskLifMovInterrupt);
			
			tyP0921InletNOutletShutter.tyDualMaskLifMovInterrupt.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskLifMovInterrupt.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_eTravStatus = Busy AND p_bTravPwrOn THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskTravMovInterrupt);
			
			tyP0921InletNOutletShutter.tyDualMaskTravMovInterrupt.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskTravMovInterrupt.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_eAWOpenStatus = Busy AND p_bAWOpenPwrOn THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskAWMovInterrupt);
			
			tyP0921InletNOutletShutter.tyDualMaskAWMovInterrupt.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
			tyP0921InletNOutletShutter.tyDualMaskAWMovInterrupt.tyBtnRgtMask.uiMaskRtStat.0		:= NOT p_tyNtParamCurr.bProjOutletShutPrep;
			
		ELSIF p_tyDI.bPullerRetRS = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet);
			IF tyP0921InletNOutletShutter.tyNaviLyr1.tyBitmapPageDisp.usiValueIdx = 1 AND
				ABS(p_diTravActualPos - p_diMagRcp1TravPos) < 290000 THEN
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnLeftMask.uiMaskRtStat := 0;
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnRgtMask.uiMaskRtStat := 1;
			ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx = 2 AND
				ABS(p_diTravActualPos - p_diMagRcp2TravPos) < 290000 THEN
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnLeftMask.uiMaskRtStat := 0;
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnRgtMask.uiMaskRtStat := 1;
			ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBitmapPageDisp.usiValueIdx = 2 AND
				ABS(p_diTravActualPos - p_diMagRcp3TravPos) < 290000 THEN
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnLeftMask.uiMaskRtStat := 1;
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnRgtMask.uiMaskRtStat := 0;
			ELSE
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnLeftMask.uiMaskRtStat := 1;
				tyP0921InletNOutletShutter.tyDualMaskPullInterruptInlet.tyBtnRgtMask.uiMaskRtStat := 1;
			END_IF
				
		ELSE
			p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
