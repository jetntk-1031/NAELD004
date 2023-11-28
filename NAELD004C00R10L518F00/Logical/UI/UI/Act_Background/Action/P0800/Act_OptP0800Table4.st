
ACTION Act_OptP0800Table4:
	
	tyP0800MagInfo.tyMagInfo4.tyTable4List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer4DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
	
	//Call Table FB
	fbP0800Table4.sVisuNm				:= tyP0800Table4.sVisuNm;
	fbP0800Table4.udiWorkAreaStartX		:= 15;
	fbP0800Table4.udiWorkAreaEndX		:= 365;
	fbP0800Table4.udiWorkAreaStartY		:= 109;
	fbP0800Table4.udiWorkAreaEndY		:= 429;
	fbP0800Table4.udiMinXDist			:= 20;
	fbP0800Table4.udiMinYDist			:= 20;
	fbP0800Table4.uiSlideScale			:= c_uiP0800TableSize;
	fbP0800Table4.iTotalData			:= DINT_TO_INT(p_tyBuffer4DispBffr.diDispIdxEnd);
	fbP0800Table4.iTotalRow				:= c_uiP0800TableSize;
	fbP0800Table4(uiSliderStatus 		:= tyP0800MagInfo.tyMagInfo4.tyTable4List.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyHotspot , uiTablePos := tyP0800Table4.uiTablePos , iSliderPos := tyP0800MagInfo.tyMagInfo4.tyTable4List.tyUISlider.iValue);
	
	tyP0800Table4.uiSelectedRow	:= fbP0800Table4.uiSelectedRow;
	tyP0800Table4.bTableActive	:= fbP0800Table4.bTableActive;
	tyP0800Table4.bSliderActive	:= fbP0800Table4.bSliderActive;
	
	//Table Content
	IF p_tyDI.bMagPresentSen4 THEN
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol0[i].sValue		:= p_tyBuffer4DispBffr.a_tyDispBffrDat[tyP0800Table4.uiTablePos + i - 1].sSltIdx;
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol1[i].sValue		:= p_tyBuffer4DispBffr.a_tyDispBffrDat[tyP0800Table4.uiTablePos + i - 1].sSltTm;
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol1[i].usiColor	:= DWORD_TO_USINT(p_tyBuffer4DispBffr.a_tyDispBffrDat[tyP0800Table4.uiTablePos + i - 1].dwColor);
			
		END_FOR
	ELSE
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol0[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol1[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo4.tyTable4List.a_tyStringDataCol1[i].usiColor	:= 0;
			
		END_FOR
	END_IF
	
	tyP0800MagInfo.tyMagInfo4.tyTable4List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer4DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
		
END_ACTION
