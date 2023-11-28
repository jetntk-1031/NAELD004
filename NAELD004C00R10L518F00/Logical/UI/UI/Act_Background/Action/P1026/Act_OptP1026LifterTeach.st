
ACTION Act_OptP1026LifterTeach:
	
	IF tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA);
			
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosA.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bRtCompl = TRUE THEN
		
		p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB);
			
		IF tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl THEN
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMsgBoxUpdtLifterPosB.tyBtnNo.bValue		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
			
			//Write Actual Position To Machine Settings
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue		:= p_diLifterBtmActualPos;
			tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl	:= TRUE;
			
			//Back To Machine Settings
			eChgPage	:= UIP1021McSetGen;
			
			fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
			
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.bValue	:= FALSE;
			
		END_IF
		
	END_IF
	
END_ACTION
