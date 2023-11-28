(** 2019-03-29 **)
ACTION Act_Link:
	
	p_bExtSafetySen	:= (p_bLinkDIPullerRetRS) AND (NOT p_bLinkDIConvLftSen);
	
//	p_bExtSafetySen	:= NOT p_bLinkDIConvLftSen;
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtCtrl	:= FALSE;
		bRetCtrl	:= FALSE;
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
END_ACTION
