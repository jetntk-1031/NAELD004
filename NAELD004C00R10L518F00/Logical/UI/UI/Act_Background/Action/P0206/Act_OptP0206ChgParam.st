
ACTION Act_OptP0206ChgParam: 
	
	tyP0206OpsMag4.tyParam.tyNumMinSlt.diValueMax		:= tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValue;
	tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValueMin		:= tyP0206OpsMag4.tyParam.tyNumMinSlt.diValue;
	tyP0206OpsMag4.tyParam.tyNumPitch.diValueMax		:= tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValue - tyP0206OpsMag4.tyParam.tyNumMinSlt.diValue + 1;
	tyP0206OpsMag4.tyParam.tyNumPitch.diValueMin		:= 1;
	
	tyP0206OpsMag4.tyParam.tyNumMinSltRear.diValueMax		:= tyP0206OpsMag4.tyParam.tyNumMaxSltRear.diValue;
	tyP0206OpsMag4.tyParam.tyNumMaxSltRear.diValueMin		:= tyP0206OpsMag4.tyParam.tyNumMinSltRear.diValue;
	tyP0206OpsMag4.tyParam.tyNumPitchRear.diValueMax		:= tyP0206OpsMag4.tyParam.tyNumMaxSltRear.diValue - tyP0206OpsMag4.tyParam.tyNumMinSltRear.diValue + 1;
	tyP0206OpsMag4.tyParam.tyNumPitchRear.diValueMin		:= 1;
	//Control
	IF tyP0206OpsMag4.tyOps.tyBtnChgParam.bRtCompl = TRUE THEN
		tyP0206OpsMag4.tyOps.tyBtnChgParam.bRtCompl	:= FALSE;
		
		tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp0;
		
		tyP0206OpsMag4.tyParam.tyDrpDnMcMode.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiMcMod;
		tyP0206OpsMag4.tyParam.tyNumMinSlt.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValue;
		tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValue;
		tyP0206OpsMag4.tyParam.tyNumPitch.diValue		:= p_tyProdRcpCurrRcp0.diPitch;
		
		tyP0206OpsMag4.tyParam.tyNumMinSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValueRear;
		tyP0206OpsMag4.tyParam.tyNumMaxSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValueRear;
		tyP0206OpsMag4.tyParam.tyNumPitchRear.diValue		:= p_tyProdRcpCurrRcp0.diPitchRear;
		
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyParam.tyLyr.uiRtStat));
		
	END_IF
	
	tyP0206OpsMag4.tyOps.tyBtnChgParam.bValue	:= tyP0206OpsMag4.tyParam.tyLyr.uiRtStat.0 = FALSE;
	
	IF tyP0206OpsMag4.tyParam.tyLyr.uiRtStat.0 = FALSE THEN
		
		IF tyP0206OpsMag4.tyParam.tyBtnSave.bRtCompl = TRUE THEN
			
			tyProdRcpCurrRcpWr.usiMcMod	:= tyP0206OpsMag4.tyParam.tyDrpDnMcMode.usiValueIdx;
			tyProdRcpCurrRcpWr.diMinSltValue := tyP0206OpsMag4.tyParam.tyNumMinSlt.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValue := tyP0206OpsMag4.tyParam.tyNumMaxSlt.diValue;
			tyProdRcpCurrRcpWr.diPitch := tyP0206OpsMag4.tyParam.tyNumPitch.diValue;
		
			tyProdRcpCurrRcpWr.diMinSltValueRear := tyP0206OpsMag4.tyParam.tyNumMinSltRear.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValueRear := tyP0206OpsMag4.tyParam.tyNumMaxSltRear.diValue;
			tyProdRcpCurrRcpWr.diPitchRear := tyP0206OpsMag4.tyParam.tyNumPitchRear.diValue;
			
			eProdRcpAct	:= ProdRcpActWriteCurrRcpParam;
			
			IF p_eProdRcpStatus = Done AND p_eProdRcpStat = ProdRcpActWriteCurrRcpParam THEN
				eProdRcpAct	:= ProdRcpActIdle;
				
				//UIP0400
				tyP0400ProdSel.tyProdSel.tyTxtMcMode.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiMcMod;
				
				tyP0400ProdSel.tyProdSel.tyNumMinSlt.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValue;
				tyP0400ProdSel.tyProdSel.tyNumMaxSlt.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValue;
				tyP0400ProdSel.tyProdSel.tyNumPitch.diValue		:= p_tyProdRcpCurrRcp0.diPitch;
				
				tyP0400ProdSel.tyProdSel.tyNumMinSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValueRear;
				tyP0400ProdSel.tyProdSel.tyNumMaxSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValueRear;
				tyP0400ProdSel.tyProdSel.tyNumPitchRear.diValue		:= p_tyProdRcpCurrRcp0.diPitchRear;
				
				tyP0206OpsMag4.tyParam.tyBtnSave.bRtCompl	:= FALSE;
				tyP0206OpsMag4.tyParam.tyBtnSave.bValue		:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0206OpsMag4.tyParam.tyLyr.uiRtStat));
				
			ELSIF p_eProdRcpStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxSaveErr);
				
				IF tyP0206OpsMag4.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP0206OpsMag4.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP0206OpsMag4.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
					
					//Restore Param
					tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp2;
					
					tyP0206OpsMag4.tyParam.tyBtnSave.bRtCompl		:= FALSE;
					tyP0206OpsMag4.tyParam.tyBtnSave.bValue			:= FALSE;
					
					fUIInRtStatHide(ADR(tyP0206OpsMag4.tyParam.tyLyr.uiRtStat));
					
				END_IF
				
			END_IF
			
		ELSIF tyP0206OpsMag4.tyParam.tyBtnCancel.bRtCompl = TRUE THEN
			tyP0206OpsMag4.tyParam.tyBtnCancel.bRtCompl				:= FALSE;
			tyP0206OpsMag4.tyParam.tyBtnCancel.bValue				:= FALSE;
			
			fUIInRtStatHide(ADR(tyP0206OpsMag4.tyParam.tyLyr.uiRtStat));
			
		END_IF
		
	END_IF
	
	//Mask
	tyP0206OpsMag4.tyOps.tyBtnChgParam.uiMaskRtStat.0	:= p_tyUsrMgmtCurrAccessRgt.bChgParam AND p_bOpsStatusStop;
	
END_ACTION
