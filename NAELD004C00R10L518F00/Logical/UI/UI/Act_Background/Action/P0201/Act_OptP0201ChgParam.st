
ACTION Act_OptP0201ChgParam: 
	//limit
	tyP0201OpsTravLifter.tyParam.tyNumMinSlt.diValueMax		:= tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValue;
	tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValueMin		:= tyP0201OpsTravLifter.tyParam.tyNumMinSlt.diValue;
	tyP0201OpsTravLifter.tyParam.tyNumPitch.diValueMax		:= tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValue - tyP0201OpsTravLifter.tyParam.tyNumMinSlt.diValue + 1;
	tyP0201OpsTravLifter.tyParam.tyNumPitch.diValueMin		:= 1;
	
	tyP0201OpsTravLifter.tyParam.tyNumMinSltRear.diValueMax		:= tyP0201OpsTravLifter.tyParam.tyNumMaxSltRear.diValue;
	tyP0201OpsTravLifter.tyParam.tyNumMaxSltRear.diValueMin		:= tyP0201OpsTravLifter.tyParam.tyNumMinSltRear.diValue;
	tyP0201OpsTravLifter.tyParam.tyNumPitchRear.diValueMax		:= tyP0201OpsTravLifter.tyParam.tyNumMaxSltRear.diValue - tyP0201OpsTravLifter.tyParam.tyNumMinSltRear.diValue + 1;
	tyP0201OpsTravLifter.tyParam.tyNumPitchRear.diValueMin		:= 1;
	
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtTorq.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtTorq.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;
	tyP0201OpsTravLifter.tyParam.tyNumPshrOffset.diValueMin		:= -(p_tyProdRcpCurrRcp2.diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );
	tyP0201OpsTravLifter.tyParam.tyNumPshrOffset.diValueMax		:= (p_tyProdRcpCurrRcp2.diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000 );	


	//Control
	IF tyP0201OpsTravLifter.tyOps.tyBtnChgParam.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyBtnChgParam.bRtCompl	:= FALSE;
		
		tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp0;
		
		tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiMcMod;
		tyP0201OpsTravLifter.tyParam.tyNumMinSlt.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValue;
		tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValue;
		tyP0201OpsTravLifter.tyParam.tyNumPitch.diValue		:= p_tyProdRcpCurrRcp0.diPitch;
		
		tyP0201OpsTravLifter.tyParam.tyNumMinSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMinSltValueRear;
		tyP0201OpsTravLifter.tyParam.tyNumMaxSltRear.diValue	:= p_tyProdRcpCurrRcp0.diMaxSltValueRear;
		tyP0201OpsTravLifter.tyParam.tyNumPitchRear.diValue		:= p_tyProdRcpCurrRcp0.diPitchRear;
		
		tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
		tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
		tyP0201OpsTravLifter.tyParam.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;

		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat));
		
	END_IF
	
	tyP0201OpsTravLifter.tyOps.tyBtnChgParam.bValue	:= tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat.0 = FALSE;
	
	IF tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat.0 = FALSE THEN
		
		IF tyP0201OpsTravLifter.tyParam.tyBtnSave.bRtCompl = TRUE THEN
			
			tyProdRcpCurrRcpWr.usiMcMod	:= tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueIdx;
			tyProdRcpCurrRcpWr.diMinSltValue := tyP0201OpsTravLifter.tyParam.tyNumMinSlt.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValue := tyP0201OpsTravLifter.tyParam.tyNumMaxSlt.diValue;
			tyProdRcpCurrRcpWr.diPitch := tyP0201OpsTravLifter.tyParam.tyNumPitch.diValue;
		
			tyProdRcpCurrRcpWr.diMinSltValueRear := tyP0201OpsTravLifter.tyParam.tyNumMinSltRear.diValue;
			tyProdRcpCurrRcpWr.diMaxSltValueRear := tyP0201OpsTravLifter.tyParam.tyNumMaxSltRear.diValue;
			tyProdRcpCurrRcpWr.diPitchRear := tyP0201OpsTravLifter.tyParam.tyNumPitchRear.diValue;
			
			tyProdRcpCurrRcpWr.diMtrPshrExtSpd := tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtSpd.diValue;
			tyProdRcpCurrRcpWr.diMtrPshrExtTorq := tyP0201OpsTravLifter.tyParam.tyNumMtrPshrExtTorq.diValue;
			tyProdRcpCurrRcpWr.diPshrOffset := tyP0201OpsTravLifter.tyParam.tyNumPshrOffset.diValue;

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

				tyP0201OpsTravLifter.tyParam.tyBtnSave.bRtCompl	:= FALSE;
				tyP0201OpsTravLifter.tyParam.tyBtnSave.bValue	:= FALSE;
				
				fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat));
				
			ELSIF p_eProdRcpStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxSaveErr);
				
				IF tyP0201OpsTravLifter.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP0201OpsTravLifter.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP0201OpsTravLifter.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxHide);
					
					//Restore Param
					tyProdRcpCurrRcpWr	:= p_tyProdRcpCurrRcp0;
					
					tyP0201OpsTravLifter.tyParam.tyBtnSave.bRtCompl	:= FALSE;
					tyP0201OpsTravLifter.tyParam.tyBtnSave.bValue	:= FALSE;
					
					fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat));
					
				END_IF
				
			END_IF
			
		ELSIF tyP0201OpsTravLifter.tyParam.tyBtnCancel.bRtCompl = TRUE THEN
			tyP0201OpsTravLifter.tyParam.tyBtnCancel.bRtCompl	:= FALSE;
			tyP0201OpsTravLifter.tyParam.tyBtnCancel.bValue		:= FALSE;
			
			fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyParam.tyLyr.uiRtStat));
			
		END_IF
		
	END_IF
	
	//Mask
	tyP0201OpsTravLifter.tyOps.tyBtnChgParam.uiMaskRtStat.0	:= p_tyUsrMgmtCurrAccessRgt.bChgParam AND p_bOpsStatusStop;
		
END_ACTION
