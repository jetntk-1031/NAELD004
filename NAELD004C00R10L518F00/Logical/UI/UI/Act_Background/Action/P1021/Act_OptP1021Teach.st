
ACTION Act_OptP1021Teach:
	
	IF tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bValue		:= FALSE;
		
		bTeachTravPosA  	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bValue		:= FALSE;
		
		bTeachTravPosB		:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bValue		:= FALSE;
		
		bTeachLifterPosA	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bValue		:= FALSE;
		
		bTeachLifterPosB	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	END_IF
	
END_ACTION
