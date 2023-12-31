
ACTION Act_OptP1030Save:
	
	CASE p_tyNtParamCurr.eProjMag OF
		LDMagDual, LDMagTriple:
			IF tyP1030MagSet.tyMagSet.tyBtnSave.bRtCompl = TRUE THEN
				IF usiSaveMagRcpStep = 0 THEN
					//Mask Table
					tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat				:= FALSE;
					tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat					:= FALSE;
				
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveAsk);
					
					IF tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bRtCompl				:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bValue				:= FALSE;
						
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
				
						usiSaveMagRcpStep	:= 1;
						
					ELSIF tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bRtCompl				:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bValue				:= FALSE;
					
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
		
						usiSaveMagRcpStep	:= 99;
						
					END_IF
				
				ELSIF usiSaveMagRcpStep = 1 THEN
					tyMagRcpInfoIn.sRcpNm					:= tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue;
					tyMagRcpInfoIn.diSltToSltInUM			:= tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue;
					tyMagRcpInfoIn.diTtlSlt					:= tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
					tyMagRcpInfoIn.diMag1Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag2Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag3Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag4Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag4Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag1TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue;
					tyMagRcpInfoIn.diMag2TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue;
					tyMagRcpInfoIn.diMag3TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue;
					tyMagRcpInfoIn.diMag4TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag4.diValue;
					tyMagRcpInfoIn.usiMagModel				:= tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx;
					tyMagRcpInfoIn.diMagMaxBrdWidth			:= tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue;
					tyMagRcpInfoIn.bSafetyBarDisabled		:= tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue;
					tyMagRcpInfoIn.bMagHeightChkEn			:= tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bValue;

					eMagRcpAct					:= MagRcpActAddEdit;
					
					IF p_eMagRcpStat = MagRcpActAddEdit AND p_eMagRcpStatus = Done THEN
						eMagRcpAct	:= MagRcpActIdle;
						
						IF p_bMagRcpNmEmpty = TRUE THEN
							usiSaveMagRcpStep		:= 2;
						ELSIF p_bMagRcpListFull = TRUE THEN
							usiSaveMagRcpStep		:= 3;
						ELSE
							bRefreshMagRcpTable	:= TRUE;
							bRefreshMagRcpDetail	:= TRUE;
							usiSaveMagRcpStep		:= 4;
						END_IF
				
					ELSIF p_eMagRcpStatus = Error THEN
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveErr);
						
						IF tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
							tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bRtCompl 		:= FALSE;
							tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bValue 		:= FALSE;
							
							p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
		
							usiSaveMagRcpStep		:= 99;
						END_IF
					END_IF
					
				// Magazine Recipe Param Error
				ELSIF usiSaveMagRcpStep = 2 THEN
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveNoNm);
						
					IF tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bRtCompl 			:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bValue 				:= FALSE;
							
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
						usiSaveMagRcpStep		:= 99;	
					END_IF
					
				// Magazine Recipe List Full	
				ELSIF usiSaveMagRcpStep = 3 THEN
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxListFull);
						
					IF tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bRtCompl 				:= FALSE;
						tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bValue 					:= FALSE;
							
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
						usiSaveMagRcpStep		:= 99;	
					END_IF
					
				ELSIF usiSaveMagRcpStep = 4 THEN			
					IF tyMagRcpInfoIn.sRcpNm = p_tyMagRcpCurrRcp.sRcpNm THEN
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxReloadCurrRcp);
						
						IF tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bRtCompl = TRUE THEN
							tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bRtCompl 	:= FALSE;
							tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bValue 		:= FALSE;
							
							p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
							usiSaveMagRcpStep		:= 99;
						END_IF
					ELSE
						usiSaveMagRcpStep			:= 99;
					END_IF
		
				ELSIF usiSaveMagRcpStep = 99 THEN
					bRefreshMagRcpTable 			:= FALSE;
			
					//Unmask
					tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat	:= TRUE;
					tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat		:= TRUE;
					
					//Reset
					tyP1030MagSet.tyMagSet.tyBtnSave.bRtCompl	:= FALSE;
					tyP1030MagSet.tyMagSet.tyBtnSave.bValue		:= FALSE;
					
					usiSaveMagRcpStep	:= 0;
					
				END_IF
				
			END_IF
	
			
			
		LDMagQuadruple:
			IF tyP1030MagSet.tyMagSet.tyBtnSave.bRtCompl = TRUE THEN
				IF usiSaveMagRcpStep = 0 THEN
					//Mask Table
					tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat				:= FALSE;
					tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat					:= FALSE;
				
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveAsk);
					
					IF tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bRtCompl				:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnYes.bValue				:= FALSE;
						
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
				
						usiSaveMagRcpStep	:= 1;
						
					ELSIF tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bRtCompl				:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveAsk.tyBtnNo.bValue				:= FALSE;
					
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
		
						usiSaveMagRcpStep	:= 99;
						
					END_IF
				
				ELSIF usiSaveMagRcpStep = 1 THEN
					tyMagRcpInfoIn.sRcpNm					:= tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue;
					tyMagRcpInfoIn.diSltToSltInUM			:= tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue;
					tyMagRcpInfoIn.diTtlSlt					:= tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
					tyMagRcpInfoIn.diMag1Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag2Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag3Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag4Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag4Slt1Pos.diValue;
					tyMagRcpInfoIn.diMag1TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue;
					tyMagRcpInfoIn.diMag2TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue;
					tyMagRcpInfoIn.diMag3TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue;
					tyMagRcpInfoIn.diMag4TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag4.diValue;
					tyMagRcpInfoIn.usiMagModel				:= tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx;
					tyMagRcpInfoIn.diMagMaxBrdWidth			:= tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue;
					tyMagRcpInfoIn.bSafetyBarDisabled		:= tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue;
					
					tyMagRcpInfoIn1.sRcpNm					:= tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue;
					tyMagRcpInfoIn1.diSltToSltInUM			:= tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue;
					tyMagRcpInfoIn1.diTtlSlt				:= tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
					tyMagRcpInfoIn1.diMag1Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue;
					tyMagRcpInfoIn1.diMag2Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue;
					tyMagRcpInfoIn1.diMag3Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue;
					tyMagRcpInfoIn1.diMag4Slt1PosInUM		:= tyP1030MagSet.tyMagSet.tyNumLifterMag4Slt1Pos.diValue;
					tyMagRcpInfoIn1.diMag1TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue;
					tyMagRcpInfoIn1.diMag2TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue;
					tyMagRcpInfoIn1.diMag3TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue;
					tyMagRcpInfoIn1.diMag4TravPosInUM		:= tyP1030MagSet.tyMagSet.tyNumTravPosMag4.diValue;
					tyMagRcpInfoIn1.usiMagModel				:= tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx;
					tyMagRcpInfoIn1.diMagMaxBrdWidth		:= tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue;
					tyMagRcpInfoIn1.bSafetyBarDisabled		:= tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue;
					tyMagRcpInfoIn1.bMagHeightChkEn			:= tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bValue;
		
					eMagRcpAct					:= MagRcpActAddEdit;
					eMagRcpAct1					:= MagRcpActAddEdit;
					
					IF (p_eMagRcpStat = MagRcpActAddEdit AND p_eMagRcpStatus = Done)
						AND (p_eMagRcpStat1 = MagRcpActAddEdit AND p_eMagRcpStatus1 = Done)
						THEN
							eMagRcpAct	:= MagRcpActIdle;
							eMagRcpAct1	:= MagRcpActIdle;
						
						IF p_bMagRcpNmEmpty = TRUE OR p_bMagRcpNmEmpty1 = TRUE THEN
							usiSaveMagRcpStep		:= 2;
						ELSIF p_bMagRcpListFull = TRUE OR p_bMagRcpListFull1 = TRUE THEN
							usiSaveMagRcpStep		:= 3;
						ELSE
							bRefreshMagRcpTable	:= TRUE;
							bRefreshMagRcpDetail	:= TRUE;
							usiSaveMagRcpStep		:= 4;
						END_IF
				 
					ELSIF p_eMagRcpStatus = Error OR p_eMagRcpStatus1 = Error THEN
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveErr);
						
						IF tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
							tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bRtCompl 		:= FALSE;
							tyP1030MagSet.tyMsgBoxSaveErr.tyBtnNo.bValue 		:= FALSE;
							
							p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
		
							usiSaveMagRcpStep		:= 99;
						END_IF
					END_IF
					
					// Magazine Recipe Param Error
				ELSIF usiSaveMagRcpStep = 2 THEN
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxSaveNoNm);
						
					IF tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bRtCompl 			:= FALSE;
						tyP1030MagSet.tyMsgBoxSaveNoNm.tyBtnNo.bValue 				:= FALSE;
							
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
						usiSaveMagRcpStep		:= 99;	
					END_IF
					
					// Magazine Recipe List Full	
				ELSIF usiSaveMagRcpStep = 3 THEN
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxListFull);
						
					IF tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bRtCompl = TRUE THEN
						tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bRtCompl 				:= FALSE;
						tyP1030MagSet.tyMsgBoxListFull.tyBtnNo.bValue 					:= FALSE;
							
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
						usiSaveMagRcpStep		:= 99;	
					END_IF
					
				ELSIF usiSaveMagRcpStep = 4 THEN			
					IF tyMagRcpInfoIn.sRcpNm = p_tyMagRcpCurrRcp.sRcpNm OR tyMagRcpInfoIn1.sRcpNm = p_tyMagRcpCurrRcp1.sRcpNm THEN
						p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxReloadCurrRcp);
						
						IF tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bRtCompl = TRUE THEN
							tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bRtCompl 	:= FALSE;
							tyP1030MagSet.tyMsgBoxReloadCurrRcp.tyBtnNo.bValue 		:= FALSE;
							
							p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
						
							usiSaveMagRcpStep		:= 99;
						END_IF
					ELSE
						usiSaveMagRcpStep			:= 99;
					END_IF
		
				ELSIF usiSaveMagRcpStep = 99 THEN
					bRefreshMagRcpTable 			:= FALSE;
			
					//Unmask
					tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat	:= TRUE;
					tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat		:= TRUE;
					
					//Reset
					tyP1030MagSet.tyMagSet.tyBtnSave.bRtCompl	:= FALSE;
					tyP1030MagSet.tyMagSet.tyBtnSave.bValue		:= FALSE;
					
					usiSaveMagRcpStep	:= 0;
					
				END_IF
				
			END_IF
	END_CASE
			
END_ACTION
