
ACTION Act_OptP0939MagConv4FBStat:
	

	IF tyP0939MagConv4.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnRemoteClamp.bValue = TRUE 
		OR tyP0939MagConv4.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
		THEN	
		tyP0939MagConv4.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp4StatTxt;
	ELSIF tyP0939MagConv4.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0939MagConv4.tyFB.tyBtnSelClamp.bValue = TRUE 
		THEN
		tyP0939MagConv4.tyFB.tyStringStat.sValue	:= p_sSelClamp4StatTxt;
	END_IF	
END_ACTION
