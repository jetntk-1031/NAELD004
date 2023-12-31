
ACTION Act_OptP0935Mask: 

	// Interlock Power
	IF p_bLifterBtmAxisErr = TRUE AND p_bLifterBtmPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnPwr.uiMaskRtStat));
		tyP0935Lifter.tyMotionStd.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE OR p_bLifterBtmIsHomed = FALSE THEN
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSE
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0935Lifter.tyMotionStd.tyBtnDownLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	IF tyP0935Lifter.tyMotionStd.tyBtnUpLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
	
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtCompl = TRUE OR tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtCompl = TRUE OR tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyMotionStd.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0935Lifter.tyMotionStd.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Next Slot
	IF p_diLifterBtmCurrSltA >= p_tyProdRcpCurrRcp0.diMaxSltValue THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
	END_IF
	
	//Previous Slot
	IF p_diLifterBtmCurrSltA <= p_tyProdRcpCurrRcp0.diMinSltValue THEN
		fUIInRtStatOff(ADR(tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
	END_IF
	
END_ACTION
