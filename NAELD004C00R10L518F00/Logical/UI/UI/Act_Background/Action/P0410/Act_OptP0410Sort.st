
ACTION Act_OptP0410Sort:	
	
	IF tyP0410MagSel.tyMagSel.tyBtnSort.bValue THEN
		tyP0410MagSel.tyMagSel.tyBtnSort.usiTxtIdx 	:= 1;
	ELSE
		tyP0410MagSel.tyMagSel.tyBtnSort.usiTxtIdx 	:= 0;
	END_IF
		
	
	IF tyP0410MagSel.tyMagSel.tyBtnSort.bRtCompl THEN
		
		IF tyP0410MagSel.tyMagSel.tyBtnSort.bValue THEN
	
			tyP0410MagSel.tyMagSel.tyTableRecipe.uiMaskRtStat.0	:= FALSE;
					
			eMagRcpAct	:= MagRcpActSort;		
			eMagRcpAct1	:= MagRcpActSort;
			IF p_eMagRcpStat = MagRcpActSort AND p_eMagRcpStatus = Done 
				AND (p_eMagRcpStat1 = MagRcpActSort AND p_eMagRcpStatus1 = Done)
				THEN
				eMagRcpAct		:= MagRcpActIdle;
				eMagRcpAct1		:= MagRcpActIdle;	
				FOR i := 1 TO c_uiP0410TableSize DO
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(tyP0400Table.uiTablePos + i - 1);
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyMagRcpSortedList[tyP0400Table.uiTablePos + i - 1].sRcpNm;
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyMagRcpSortedList[tyP0400Table.uiTablePos + i - 1].sDisplayInfo;
				END_FOR
					
				//Unmask
				tyP0410MagSel.tyMagSel.tyTableRecipe.uiMaskRtStat.0	:= TRUE;
					
				tyP0410MagSel.tyMagSel.tyBtnSort.bRtCompl := FALSE;
					
			ELSIF p_eMagRcpStatus = Error OR p_eMagRcpStatus1 = Error THEN
				FOR i := 1 TO c_uiP0410TableSize DO
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol0[i].sValue		:= UINT_TO_STRING(tyP0410Table.uiTablePos + i - 1);
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].sValue		:= '';
					tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].sValue		:= '';
				END_FOR
				eMagRcpAct		:= MagRcpActIdle;
				eMagRcpAct1		:= MagRcpActIdle;	
				p_tyC0008MsgBox ACCESS ADR (tyP0410MagSel.tyMsgBoxListErr);
					
				IF tyP0410MagSel.tyMsgBoxListErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP0410MagSel.tyMsgBoxListErr.tyBtnNo.bRtCompl 		:= TRUE;
					tyP0410MagSel.tyMsgBoxListErr.tyBtnNo.bValue			:= TRUE;
						
					p_tyC0008MsgBox ACCESS ADR (tyP0410MagSel.tyMsgBoxHide);
						
					//Unmask
					tyP0410MagSel.tyMagSel.tyTableRecipe.uiMaskRtStat.0	:= TRUE;
						
					//Reset
					tyP0410MagSel.tyMagSel.tyBtnSort.bRtCompl := FALSE;
				END_IF
			END_IF
			
		ELSE
			
			bUpdateP0410Table	:= TRUE;
			
			tyP0410MagSel.tyMagSel.tyBtnSort.bRtCompl := FALSE;
			
		END_IF
		
	END_IF
	
			
	
END_ACTION
