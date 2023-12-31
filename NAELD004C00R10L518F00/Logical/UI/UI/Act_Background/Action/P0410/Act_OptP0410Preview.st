
ACTION Act_OptP0410Preview:

	IF tyP0410MagSel.tyMagSel.tyBtnPreview.bRtCompl = TRUE THEN
		IF bMagazineRcpA THEN
			tyMagRcpInfoIn.sRcpNm	:= tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[tyP0410Table.uiSelectedRow].sValue;
			
			eMagRcpAct				:= MagRcpActGetInfo;
			
			IF	p_eMagRcpStat = MagRcpActGetInfo AND p_eMagRcpStatus = Done THEN
				eMagRcpAct			:= MagRcpActIdle;
				
				IF p_bMagRcpNmEmpty = TRUE AND p_bMagRcpNmNotExist = TRUE THEN
					
					tyP0410MagSel.tyMagDet.tyStringRecipeNm.sValue			:= '';
					tyP0410MagSel.tyMagDet.tyNumSltToSltDist.diValue		:= 0;
					tyP0410MagSel.tyMagDet.tyNumMaxSlt.diValue				:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag1Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag2Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag3Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag4Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag1.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag2.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag3.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag4.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumMagMaxBrdWidth.diValue		:= 0;
					tyP0410MagSel.tyMagDet.tyBtnSafetyBar.bValue			:= FALSE;
					tyP0410MagSel.tyMagDet.tyBtnMagHeightChkEn.bValue		:= FALSE;

				ELSE
					
					tyP0410MagSel.tyMagDet.tyStringRecipeNm.sValue			:= p_tyMagRcpInfoOut.sRcpNm;
					tyP0410MagSel.tyMagDet.tyNumSltToSltDist.diValue		:= p_tyMagRcpInfoOut.diSltToSltInUM;
					tyP0410MagSel.tyMagDet.tyNumMaxSlt.diValue				:= p_tyMagRcpInfoOut.diTtlSlt;
					tyP0410MagSel.tyMagDet.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpInfoOut.diMag1Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpInfoOut.diMag2Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpInfoOut.diMag3Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag4Slt1Pos.diValue	:= p_tyMagRcpInfoOut.diMag4Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag1.diValue			:= p_tyMagRcpInfoOut.diMag1TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag2.diValue			:= p_tyMagRcpInfoOut.diMag2TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag3.diValue			:= p_tyMagRcpInfoOut.diMag3TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag4.diValue			:= p_tyMagRcpInfoOut.diMag4TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpInfoOut.diMagMaxBrdWidth;
					tyP0410MagSel.tyMagDet.tyBtnSafetyBar.bValue			:= p_tyMagRcpInfoOut.bSafetyBarDisabled;
					tyP0410MagSel.tyMagDet.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpInfoOut.bMagHeightChkEn;
				END_IF
				
				fUIInRtStatOff(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
				
				tyP0410MagSel.tyMagSel.tyBtnPreview.bRtCompl				:= FALSE;
			END_IF
		
		ELSIF bMagazineRcpB THEN
			
			tyMagRcpInfoIn1.sRcpNm	:= tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[tyP0410Table.uiSelectedRow].sValue;
			
			eMagRcpAct1				:= MagRcpActGetInfo;
			
			IF	p_eMagRcpStat1 = MagRcpActGetInfo AND p_eMagRcpStatus1 = Done THEN
				eMagRcpAct1			:= MagRcpActIdle;
				
				IF p_bMagRcpNmEmpty1 = TRUE AND p_bMagRcpNmNotExist1 = TRUE THEN
					
					tyP0410MagSel.tyMagDet.tyStringRecipeNm.sValue			:= '';
					tyP0410MagSel.tyMagDet.tyNumSltToSltDist.diValue		:= 0;
					tyP0410MagSel.tyMagDet.tyNumMaxSlt.diValue				:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag1Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag2Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag3Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumLifterMag4Slt1Pos.diValue	:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag1.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag2.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag3.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag4.diValue			:= 0;
					tyP0410MagSel.tyMagDet.tyNumMagMaxBrdWidth.diValue		:= 0;
					tyP0410MagSel.tyMagDet.tyBtnSafetyBar.bValue			:= FALSE;
					tyP0410MagSel.tyMagDet.tyBtnMagHeightChkEn.bValue		:= FALSE;
				ELSE
					
					tyP0410MagSel.tyMagDet.tyStringRecipeNm.sValue			:= p_tyMagRcpInfoOut1.sRcpNm;
					tyP0410MagSel.tyMagDet.tyNumSltToSltDist.diValue		:= p_tyMagRcpInfoOut1.diSltToSltInUM;
					tyP0410MagSel.tyMagDet.tyNumMaxSlt.diValue				:= p_tyMagRcpInfoOut1.diTtlSlt;
					tyP0410MagSel.tyMagDet.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpInfoOut1.diMag1Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpInfoOut1.diMag2Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpInfoOut1.diMag3Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumLifterMag4Slt1Pos.diValue	:= p_tyMagRcpInfoOut1.diMag4Slt1PosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag1.diValue			:= p_tyMagRcpInfoOut1.diMag1TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag2.diValue			:= p_tyMagRcpInfoOut1.diMag2TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag3.diValue			:= p_tyMagRcpInfoOut1.diMag3TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumTravPosMag4.diValue			:= p_tyMagRcpInfoOut1.diMag4TravPosInUM;
					tyP0410MagSel.tyMagDet.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpInfoOut1.diMagMaxBrdWidth;
					tyP0410MagSel.tyMagDet.tyBtnSafetyBar.bValue			:= p_tyMagRcpInfoOut1.bSafetyBarDisabled;
					tyP0410MagSel.tyMagDet.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpInfoOut1.bMagHeightChkEn;
				END_IF
				
				fUIInRtStatOff(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
				
				tyP0410MagSel.tyMagSel.tyBtnPreview.bRtCompl				:= FALSE;
			END_IF	
		END_IF	
	END_IF	
	
	IF tyP0410MagSel.tyMagDet.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0410MagSel.tyMagDet.tyHotspotClose.bRtCompl					:= FALSE;
		tyP0410MagSel.tyMagSel.tyBtnPreview.bValue						:= FALSE;
		
		//Hide Recipe Details
		fUIInRtStatHide(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
	END_IF
	
	
END_ACTION
		
