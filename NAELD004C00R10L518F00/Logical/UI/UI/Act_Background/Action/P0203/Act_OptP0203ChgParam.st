
ACTION Act_OptP0203ChgParam: 
	
	tyP0203OpsMag2.tyParam.tyNumMinSlt.diValueMax		:= tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValue;
	tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValueMin		:= tyP0203OpsMag2.tyParam.tyNumMinSlt.diValue;
	tyP0203OpsMag2.tyParam.tyNumPitch.diValueMax		:= tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValue - tyP0203OpsMag2.tyParam.tyNumMinSlt.diValue + 1;
	tyP0203OpsMag2.tyParam.tyNumPitch.diValueMin		:= 1;
	
	tyP0203OpsMag2.tyParam.tyNumMinSltRear.diValueMax		:= tyP0203OpsMag2.tyParam.tyNumMaxSltRear.diValue;
	tyP0203OpsMag2.tyParam.tyNumMaxSltRear.diValueMin		:= tyP0203OpsMag2.tyParam.tyNumMinSltRear.diValue;
	tyP0203OpsMag2.tyParam.tyNumPitchRear.diValueMax		:= tyP0203OpsMag2.tyParam.tyNumMaxSltRear.diValue - tyP0203OpsMag2.tyParam.tyNumMinSltRear.diValue + 1;
	tyP0203OpsMag2.tyParam.tyNumPitchRear.diValueMin		:= 1;

	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtTorq.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP0203OpsMag2.tyParam.tyNumMtrPshrExtTorq.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;
	tyP0203OpsMag2.tyParam.tyNumPshrOffset.diValueMin		:= -(p_tyProdRcpCurrRcp2.diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );
	tyP0203OpsMag2.tyParam.tyNumPshrOffset.diValueMax		:= (p_tyProdRcpCurrRcp2.diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );	

	//Control
	IF tyP0203OpsMag2.tyOps.tyBtnChgParam.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyOps.tyBtnChgParam.bRtCompl	:= FALSE;
		
		tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp0;
		
		tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiMcMod;
		tyP0203OpsMag2.tyParam.tyNumMinSlt.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValue;
		tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValue;
		tyP0203OpsMag2.tyParam.tyNumPitch.diValue		:= p_tyProdRcpCurrRcp0.diPitch;
		
		tyP0203OpsMag2.tyParam.tyNumMinSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValueRear;
		tyP0203OpsMag2.tyParam.tyNumMaxSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValueRear;
		tyP0203OpsMag2.tyParam.tyNumPitchRear.diValue		:= p_tyProdRcpCurrRcp0.diPitchRear;
	
		tyP0203OpsMag2.tyParam.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
		tyP0203OpsMag2.tyParam.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
		tyP0203OpsMag2.tyParam.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyParam.tyLyr.uiRtStat));
		
	END_IF
	
	tyP0203OpsMag2.tyOps.tyBtnChgParam.bValue		:= tyP0203OpsMag2.tyParam.tyLyr.uiRtStat.0 = FALSE;
	
	IF tyP0203OpsMag2.tyParam.tyLyr.uiRtStat.0 = FALSE THEN
		
		IF tyP0203OpsMag2.tyParam.tyBtnSave.bRtCompl = TRUE THEN
			
			tyProdRcpCurrRcpWr.usiMcMod	:= tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueIdx;
			tyProdRcpCurrRcpWr.diMinSltValue := tyP0203OpsMag2.tyParam.tyNumMinSlt.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValue := tyP0203OpsMag2.tyParam.tyNumMaxSlt.diValue;
			tyProdRcpCurrRcpWr.diPitch := tyP0203OpsMag2.tyParam.tyNumPitch.diValue;
		
			tyProdRcpCurrRcpWr.diMinSltValueRear := tyP0203OpsMag2.tyParam.tyNumMinSltRear.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValueRear := tyP0203OpsMag2.tyParam.tyNumMaxSltRear.diValue;
			tyProdRcpCurrRcpWr.diPitchRear := tyP0203OpsMag2.tyParam.tyNumPitchRear.diValue;
			
			tyProdRcpCurrRcpWr.diMtrPshrExtSpd := tyP0203OpsMag2.tyParam.tyNumMtrPshrExtSpd.diValue;
			tyProdRcpCurrRcpWr.diMtrPshrExtTorq := tyP0203OpsMag2.tyParam.tyNumMtrPshrExtTorq.diValue;
			tyProdRcpCurrRcpWr.diPshrOffset := tyP0203OpsMag2.tyParam.tyNumPshrOffset.diValue;
			
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
				
				tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
				tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
				tyP0400ProdSel.tyProdSel.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	
				tyP0203OpsMag2.tyParam.tyBtnSave.bRtCompl			:= FALSE;
				tyP0203OpsMag2.tyParam.tyBtnSave.bValue				:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0203OpsMag2.tyParam.tyLyr.uiRtStat));
				
			ELSIF p_eProdRcpStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxSaveErr);
				
				IF tyP0203OpsMag2.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP0203OpsMag2.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP0203OpsMag2.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
					
					//Restore Param
					tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp2;
					
					tyP0203OpsMag2.tyParam.tyBtnSave.bRtCompl		:= FALSE;
					tyP0203OpsMag2.tyParam.tyBtnSave.bValue			:= FALSE;
					
					fUIInRtStatHide(ADR(tyP0203OpsMag2.tyParam.tyLyr.uiRtStat));
					
				END_IF
				
			END_IF
			
		ELSIF tyP0203OpsMag2.tyParam.tyBtnCancel.bRtCompl = TRUE THEN
			tyP0203OpsMag2.tyParam.tyBtnCancel.bRtCompl				:= FALSE;
			tyP0203OpsMag2.tyParam.tyBtnCancel.bValue				:= FALSE;
			
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyParam.tyLyr.uiRtStat));
			
		END_IF
		
	END_IF
	
	//Mask
	tyP0203OpsMag2.tyOps.tyBtnChgParam.uiMaskRtStat.0	:= p_tyUsrMgmtCurrAccessRgt.bChgParam AND p_bOpsStatusStop;
	
END_ACTION
