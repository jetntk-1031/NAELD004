
ACTION Act_OptP1027Save:
	
	//Reset button
	bResetButton	:= tyP1027McSetUSBSetting.tyUSBSet.tyBtnReset.bValue;		// ADD
	
	
	IF p_eUSBRdrStatus = Error THEN  
		tyP1027McSetUSBSetting.tyUSBSet.tyBitError.usiValueIdx	:= 2;
	ELSE
		tyP1027McSetUSBSetting.tyUSBSet.tyBitError.usiValueIdx	:= 0;
	END_IF
	
	IF tyP1027McSetUSBSetting.tyUSBSet.tyVID.bRtCompl OR tyP1027McSetUSBSetting.tyUSBSet.tyPID.bRtCompl THEN
		
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1027McSetUSBSetting.tyUSBSet.tyVID.bRtCompl := FALSE;
		tyP1027McSetUSBSetting.tyUSBSet.tyPID.bRtCompl := FALSE;

		
	END_IF
	
//	eUSBRdrAct	:= USBRdrActIdle;                               //ADD
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
	
		fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyMcParamWr.diVID	:=  tyP1027McSetUSBSetting.tyUSBSet.tyVID.diValue;
		tyMcParamWr.diPID	:=  tyP1027McSetUSBSetting.tyUSBSet.tyPID.diValue;
		
		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			
			eMcParamAct	:= McParamActIdle;
			eUSBRdrAct	:= USBRdrActDetectDev;	
			
			//Update BackUp Param
			tyP1027McSetUSBSetting.tyUSBSetBkUp	:= tyP1027McSetUSBSetting.tyUSBSet;
			tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
			
		END_IF
	END_IF
	
	IF (p_eUSBRdrStat = USBRdrActDetectDev OR p_eUSBRdrStat = USBRdrActSafetyRmv) AND p_eUSBRdrStatus = Done THEN
		eUSBRdrAct := USBRdrActIdle;
	END_IF
	
			
			
        	
			
//		ELSIF p_eMcParamStatus = Error OR p_eUSBRdrStatus = Error THEN
//			p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxSaveErr);
//			
//			IF tyP1027McSetUSBSetting.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
//				tyP1027McSetUSBSetting.tyMsgBoxSaveErr.tyBtnNo.bRtCompl 	:= FALSE;
//				tyP1027McSetUSBSetting.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
//				
//				p_tyC0008MsgBox ACCESS ADR(tyP1027McSetUSBSetting.tyMsgBoxHide);
//				
//				//Restore Param
//				tyP1027McSetUSBSetting.tyUSBSet	:= tyP1027McSetUSBSetting.tyUSBSetBkUp;
//			
//				tyMcParamWr								:= p_tyMcParamCurr;
//				
//				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
//				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
//				eUSBRdrAct	:= USBRdrActIdle;	
//				//p_eUSBRdrStatus := Idle;
//			END_IF
			
	//	END_IF
		
	//	eUSBRdrAct	:= USBRdrActDetectDev;
		
	//	IF p_eUSBRdrStat = USBRdrActDetectDev AND p_eUSBRdrStatus = Done THEN
	//		eUSBRdrAct := USBRdrActIdle;
			
	//	ELSE 
	//		eUSBRdrAct := USBRdrActIdle;
			
	//	END_IF
		
//	END_IF
	
END_ACTION
