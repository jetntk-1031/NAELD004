(** 2018-12-21 **)
ACTION Act_Main_P0200:
	
	//Display
	tyP0200OpsGen.tyOps.tyTxtMag3Slt.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0200OpsGen.tyOps.tyTxtBackslash3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0200OpsGen.tyOps.tyNumMag3AvlQty.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple OR p_tyNtParamCurr.eProjMag = LDMagQuadruple);
	
	//L to R
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagDual) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagDual) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = TRUE;

	tyP0200OpsGen.tyOps.tyHotspotOps4Mag1.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps4Mag2.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps4Mag3.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	tyP0200OpsGen.tyOps.tyHotspotOps4Mag4.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagQuadruple) OR p_tyNtParamCurr.bUIConvDirRL = TRUE;
	
	//R to L
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag1RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagDual) OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOps2Mag2RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagDual)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
//	tyP0200OpsGen.tyOps.tyHotspotOps3Mag1RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
//	tyP0200OpsGen.tyOps.tyHotspotOps3Mag2RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
//	tyP0200OpsGen.tyOps.tyHotspotOps3Mag3RToL.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = LDMagTriple)OR p_tyNtParamCurr.bUIConvDirRL = FALSE;
	tyP0200OpsGen.tyOps.tyHotspotOpsTravLifterRToL.uiRtStat.0		:= p_tyNtParamCurr.bUIConvDirRL = FALSE;
	
	//Machine Bitmap //mc.default 31
	IF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 200;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0258A01' THEN //AT&S (RL)
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 440-31;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagDual AND p_tyNtParamCurr.sJobNo = '2023-0276A01' THEN //clarion (RL)
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 470-31;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 400;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE AND p_tyNtParamCurr.bProjCurtainSenPrep THEN
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 360-31;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagTriple THEN
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 214;
	ELSIF p_tyNtParamCurr.eProjMag = LDMagQuadruple THEN
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 51;
	ELSE
		tyP0200OpsGen.tyOps.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	//Communication
	tyP0200OpsGen.tyDSCommB.tyLyr.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	//Direction
	CASE p_tyNtParamCurr.eProjConvDir OF
		ConvDirLToR:
			tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 0;	// -->>
			tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 0;	// -->>
		ConvDirRToL:
			tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 1;	// <<--
			tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 1;	// <<--
	END_CASE
	IF p_tyNtParamCurr.bUIConvDirRL THEN
		tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 1;	// <<--
		tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 1;	// <<--
	ELSE
		tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 0;	// -->>
		tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 0;	// -->>
	END_IF
	
	//Hide Warning Bitmap for LF
	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
	
	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
	fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
	fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
	fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
	fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyBitmapWarningLF.uiRtStat));
	
	IF p_tyNtParamCurr.eProjMag <> LDMagQuadruple THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtMag4Slt.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMag4AvlQty.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMag4TtlSlt.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMaxSltRangeRear.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMinSltRangeRear.uiRtStat));
	
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumPitchRear.uiRtStat));
		
	END_IF	
	
	tyP0200OpsGen.tyOps.tyBtnBarCodeScan.uiRtStat.0 := NOT ((p_tyNtParamCurr.bUSBScannerPrep OR p_tyNtParamCurr.bRS232ScannerPrep) AND p_tyMcParamCurr.bScannerEn);
	tyP0200OpsGen.tyOps.tyBitmapBarCodeScan.uiRtStat.0 := NOT ((p_tyNtParamCurr.bUSBScannerPrep OR p_tyNtParamCurr.bRS232ScannerPrep) AND p_tyMcParamCurr.bScannerEn);
	tyP0200OpsGen.tyBarCodeScan.tyStringBarCode.sValue  := '';
	tyP0200OpsGen.tyBarCodeScan.tyStringWorkOrder.sValue  := '';
	
	tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjAGVPrep);
	
	//Trolley unlck btn
	tyP0200OpsGen.tyOps.tyBtnTrolleyUnlck1.uiRtStat := NOT(p_tyNtParamCurr.bProjTrolleyLckPrep);
	tyP0200OpsGen.tyOps.tyBtnTrolleyUnlck2.uiRtStat := NOT(p_tyNtParamCurr.bProjTrolleyLckPrep);

END_ACTION
