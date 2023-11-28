
ACTION Act_OptP0939MagConv4DC:
	
	//Magazine Conveyor
	IF tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl = TRUE THEN
		eMagConv2Clp4Act	:= MagConv2ClpActStop;
		
		IF p_eMagConv2Clp4Stat = MagConv2ClpActStop AND p_eMagConv2Clp4Status = Done THEN
			eMagConv2Clp4Act	:= MagConv2ClpActIdle;
			
			tyP0939MagConv4.tyDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0939MagConv4.tyDC.tyBtnStop.bValue		:= TRUE;
			tyP0939MagConv4.tyDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0939MagConv4.tyDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0939MagConv4.tyDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0939MagConv4.tyDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0939MagConv4.tyDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0939MagConv4.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjMagConvDir = ConvDirLToL THEN
			
			eMagConv2Clp4Act	:= MagConv2ClpActSetMtrSigOnOrLToR;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActSetMtrSigOnOrLToR AND p_eMagConv2Clp4Status = Done THEN
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eMagConv2Clp4Act	:= MagConv2ClpActSetMtrDirOrRToL;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActSetMtrDirOrRToL AND p_eMagConv2Clp4Status = Done THEN
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0939MagConv4.tyDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0939MagConv4.tyDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0939MagConv4.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0939MagConv4.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjMagConvDir = ConvDirRToR THEN
			
			eMagConv2Clp4Act	:= MagConv2ClpActSetMtrSigOnOrLToR;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActSetMtrSigOnOrLToR AND p_eMagConv2Clp4Status = Done THEN
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eMagConv2Clp4Act	:= MagConv2ClpActSetMtrDirOrRToL;
			
			IF p_eMagConv2Clp4Stat = MagConv2ClpActSetMtrDirOrRToL AND p_eMagConv2Clp4Status = Done THEN
				eMagConv2Clp4Act	:= MagConv2ClpActIdle;
				
				tyP0939MagConv4.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	//Magazine Clamper
	IF tyP0939MagConv4.tyCom.tyBtnSwitch.bValue = TRUE THEN
		IF p_bSelClamp4TwoCtrlOut = FALSE THEN
			IF tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl = TRUE THEN
				tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue := TRUE;
				tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue := FALSE;
				
				eMagConvSelClp4Act	:= PneuActSetExt;
				
				IF p_eSelClamp4Stat = PneuActSetExt AND p_eSelClamp4Status = Done THEN
					eMagConvSelClp4Act	:= PneuActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl = TRUE THEN	
				tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue := TRUE;
				tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue := FALSE;
				
				eMagConvSelClp4Act	:= PneuActSetRet;
				
				IF p_eSelClamp4Stat = PneuActSetRet AND p_eSelClamp4Status = Done THEN
					eMagConvSelClp4Act	:= PneuActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl = TRUE) OR (tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl = TRUE) THEN
				IF (tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue = TRUE) THEN
					eMagConvSelClp4Act	:= PneuActSetAll;
					
					IF p_eSelClamp4Stat = PneuActSetAll AND p_eSelClamp4Status = Done THEN
						eMagConvSelClp4Act	:= PneuActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF	
					
				ELSIF (tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue = FALSE) THEN	
					eMagConvSelClp4Act	:= PneuActSetExt;
					
					IF p_eSelClamp4Stat = PneuActSetExt AND p_eSelClamp4Status = Done THEN
						eMagConvSelClp4Act	:= PneuActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					
				ELSIF (tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bValue = FALSE) AND (tyP0939MagConv4.tyDC.tyBtnSelClamp.bValue = TRUE) THEN	
					eMagConvSelClp4Act	:= PneuActSetRet;
					
					IF p_eSelClamp4Stat = PneuActSetRet AND p_eSelClamp4Status = Done THEN
						eMagConvSelClp4Act	:= PneuActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					
				ELSE	
					eMagConvSelClp4Act	:= PneuActRstAll;
					
					IF p_eSelClamp4Stat = PneuActRstAll AND p_eSelClamp4Status = Done THEN
						eMagConvSelClp4Act	:= PneuActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		IF p_bMagConv2Clp1ClprTwoOutputCtrl = FALSE THEN
			
			//Fixed
			IF tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl = TRUE THEN
				tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue		:= TRUE;
				tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue	:= FALSE;
				
				eMagConv2Clp4Act	:= MagConv2ClpActFixClprSetClamp;
				
				IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprSetClamp AND p_eMagConv2Clp4Status = Done THEN
					eMagConv2Clp4Act	:= MagConv2ClpActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl = TRUE THEN
				tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue	:= TRUE;
				tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue		:= FALSE;
				
				eMagConv2Clp4Act	:= MagConv2ClpActFixClprSetUnclamp;
				
				IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprSetUnclamp AND p_eMagConv2Clp4Status = Done THEN
					eMagConv2Clp4Act	:= MagConv2ClpActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
			//Remote
			IF tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl = TRUE THEN
				tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue		:= TRUE;
				tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue		:= FALSE;
				
				eMagConv2Clp4Act	:= MagConv2ClpActRmtClprSetClamp;
				
				IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprSetClamp AND p_eMagConv2Clp4Status = Done THEN
					eMagConv2Clp4Act	:= MagConv2ClpActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl = TRUE THEN
				tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue	:= TRUE;
				tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue	:= FALSE;
				
				eMagConv2Clp4Act	:= MagConv2ClpActRmtClprSetUnclamp;
				
				IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprSetUnclamp AND p_eMagConv2Clp4Status = Done THEN
					eMagConv2Clp4Act	:= MagConv2ClpActIdle;
					
					tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
		ELSE
			
			//Fixed
			IF (tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl = TRUE) OR (tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl = TRUE) THEN
				
				IF (tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue = TRUE) THEN
					
					eMagConv2Clp4Act	:= MagConv2ClpActFixClprSetAll;
					
					IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprSetAll AND p_eMagConv2Clp4Status = Done THEN
						
						eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue = FALSE) THEN
					eMagConv2Clp4Act	:= MagConv2ClpActFixClprSetClamp;
					
					IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprSetClamp AND p_eMagConv2Clp4Status = Done THEN
						
						eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0939MagConv4.tyDC.tyBtnFixedClamp.bValue = FALSE) AND (tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bValue = TRUE) THEN
					eMagConv2Clp4Act	:= MagConv2ClpActFixClprSetUnclamp;
					
					IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprSetUnclamp AND p_eMagConv2Clp4Status = Done THEN
						
						eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSE
					eMagConv2Clp4Act	:= MagConv2ClpActFixClprRstAll;
					
					IF p_eMagConv2Clp4Stat = MagConv2ClpActFixClprRstAll AND p_eMagConv2Clp4Status = Done THEN
						
						eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
						tyP0939MagConv4.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
				//Remote
				IF (tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl = TRUE) OR (tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl = TRUE) THEN
				
					IF (tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue = TRUE) THEN
					
						eMagConv2Clp4Act	:= MagConv2ClpActRmtClprSetAll;
					
						IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprSetAll AND p_eMagConv2Clp4Status = Done THEN
						
							eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
							tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl		:= FALSE;
							tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSIF (tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue = TRUE) AND (tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue = FALSE) THEN
						eMagConv2Clp4Act	:= MagConv2ClpActRmtClprSetClamp;
					
						IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprSetClamp AND p_eMagConv2Clp4Status = Done THEN
						
							eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
							tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSIF (tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bValue = FALSE) AND (tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bValue = TRUE) THEN
						eMagConv2Clp4Act	:= MagConv2ClpActRmtClprSetUnclamp;
					
						IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprSetUnclamp AND p_eMagConv2Clp4Status = Done THEN
						
							eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
							tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSE
						eMagConv2Clp4Act	:= MagConv2ClpActRmtClprRstAll;
					
						IF p_eMagConv2Clp4Stat = MagConv2ClpActRmtClprRstAll AND p_eMagConv2Clp4Status = Done THEN
						
							eMagConv2Clp4Act	:= MagConv2ClpActIdle;
						
							tyP0939MagConv4.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					END_IF
				END_IF
				
			END_IF
			
		END_IF
		
		//Fixed
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.bRtCompl		:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue			:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bRtCompl		:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue		:= FALSE;
			
		//Remote
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bRtCompl		:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue		:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
		tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue		:= FALSE;	
		
	END_IF
	
	//Mask
	IF p_eMagConv2Clp4Status = Error THEN
		
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
			
		
	ELSIF tyP0939MagConv4.tyDC.tyBtnMagIn.bValue = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		
	ELSIF tyP0939MagConv4.tyDC.tyBtnMagOut.bValue = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939MagConv4.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		
	END_IF
	
		

END_ACTION
