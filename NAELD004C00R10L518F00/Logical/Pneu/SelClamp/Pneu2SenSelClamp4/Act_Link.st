(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtCtrl	:= FALSE;
		bRetCtrl	:= FALSE;
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
	IF (p_bPrep = TRUE) AND (p_bEn = TRUE) AND (p_bDis = FALSE) THEN
		p_bRetSen := NOT(p_bExtSen);
	ELSE
		p_bRetSen := FALSE;
	END_IF
	
END_ACTION
