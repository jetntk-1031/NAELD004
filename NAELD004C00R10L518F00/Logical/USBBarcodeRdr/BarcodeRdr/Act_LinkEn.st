(** 2020-08-29 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
//	p_bPrep := (p_tyLinkNtParam.bBCodeScannerPrep) AND (p_tyLinkNtParam.eScannerType = USB);
	p_bEn 	:= p_tyLinkNtParam.bUSBScannerPrep; 
END_ACTION
