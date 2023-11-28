
ACTION Act_OptP0900ReadDI:

	tyP0900GenIn.tyGenIn1.tyBtnSafetyRly.bValue				:= p_tyDI.bSafetyRlySig;
	tyP0900GenIn.tyGenIn1.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
	tyP0900GenIn.tyGenIn1.tyBtnCoverSW.bValue				:= p_tyDI.bCoverSWSig;
	tyP0900GenIn.tyGenIn1.tyBtnLifterTimingBeltSen.bValue	:= p_tyDI.bLifterTimingBeltSen;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW1.bValue	:= p_tyDI.bLifterSafetyLmtSW1;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW2.bValue	:= p_tyDI.bLifterSafetyLmtSW2;
	tyP0900GenIn.tyGenIn1.tyBtnMag1PresentSen.bValue		:= p_tyDI.bMagPresentSen1;
	tyP0900GenIn.tyGenIn1.tyBtnMag2PresentSen.bValue		:= p_tyDI.bMagPresentSen2;
	tyP0900GenIn.tyGenIn1.tyBtnMag3PresentSen.bValue		:= p_tyDI.bMagPresentSen3;
	tyP0900GenIn.tyGenIn1.tyBtnMag4PresentSen.bValue		:= p_tyDI.bMagPresentSen4;
	tyP0900GenIn.tyGenIn1.tyBtnCurtainSafetyRly.bValue		:= p_tyDI.bCurtainSafetySig2;
	tyP0900GenIn.tyGenIn1.tyBtnMagWidthChk.bValue		:= p_tyDI.bMagWidthChkSen;

	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen1.bValue	:= p_tyDI.bMag2OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen2.bValue	:= p_tyDI.bMag2OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag4OrientationChkSen1.bValue	:= p_tyDI.bMag4OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag4OrientationChkSen2.bValue	:= p_tyDI.bMag4OrientChkSen2;
END_ACTION
