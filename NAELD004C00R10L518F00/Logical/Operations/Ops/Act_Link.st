(** 2019-01-20 **)
ACTION Act_Link:
	
	
	
	IF p_bLinkProjLifterMagPlatform THEN
		
		p_bPaused	:= 	(p_bLinkOpsTravLifLDPaused AND p_bLinkOpsLifMagLDPaused);
		
	ELSE
		
		p_bPaused	:= 	(p_bLinkOpsTravLifLDPaused
	//					AND p_bLinkOpsMagLD1Paused AND p_bLinkOpsMagLD2Paused AND p_bLinkOpsMagLD3Paused AND p_bLinkOpsMagLD4Paused
						AND p_bLinkOpsMagConvLD1Paused AND p_bLinkOpsMagConvLD2Paused AND p_bLinkOpsMagConvLD3Paused  AND p_bLinkOpsMagConvLD4Paused);

	END_IF
	
END_ACTION
