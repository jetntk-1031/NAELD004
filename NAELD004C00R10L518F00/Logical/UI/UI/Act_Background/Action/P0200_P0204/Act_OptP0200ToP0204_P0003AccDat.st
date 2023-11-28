
ACTION Act_OptP0200ToP0204_P0003AccDat: 
	
	//HComm Exchanged
	IF p_bOpsMagConvLD1HModChgDone AND p_bOpsMagConvLD2HModChgDone AND p_bOpsMagConvLD3HModChgDone THEN
		bHCommModChg := FALSE;
	END_IF
	
//	IF EDGENEG(p_bLFFollowerProdAccDataMnl OR p_bLCSLFAccDataMnl) THEN
//		bProdAccData	:= FALSE;
//	END_IF
	
	//Control
	IF (tyP0200OpsGen.tyOps.tyBtnAccDat.bRtCompl = TRUE)		OR (tyP0201OpsTravLifter.tyOps.tyBtnAccDat.bRtCompl = TRUE)
		OR (tyP0202OpsMag1.tyOps.tyBtnAccDat.bRtCompl = TRUE)	OR (tyP0203OpsMag2.tyOps.tyBtnAccDat.bRtCompl = TRUE)
		OR (tyP0204OpsMag3.tyOps.tyBtnAccDat.bRtCompl = TRUE) 	OR (tyP0206OpsMag4.tyOps.tyBtnAccDat.bRtCompl = TRUE) 
		OR tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.bRtCompl THEN
		
		tyP0200OpsGen.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0201OpsTravLifter.tyOps.tyBtnAccDat.bRtCompl	:= FALSE;
		tyP0202OpsMag1.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0206OpsMag4.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.bRtCompl := FALSE;
		
		bProdAccData	:= TRUE;
	END_IF
	
	//Button Appearance
	IF (p_bLFFollowerProdAccDataMnl = TRUE) OR (p_bLCSLFAccDataMnl = TRUE) THEN 
		
		fbAccDatBlinkTm(IN := TRUE);
		
		IF fbAccDatBlinkTm.Q THEN
			fbAccDatBlinkTm(IN := FALSE);
			
			IF (tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx = 1) THEN
				tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 0;
				tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0206OpsMag4.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.usiBitmapIdx := 0;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 1;
				tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0206OpsMag4.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.usiBitmapIdx := 4;
			END_IF
		END_IF
		
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyOps.tyBtnAccDat.uiRtStat));
		
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0206OpsMag4.tyOps.tyBitmapAccDat.uiRtStat));
		
		fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.uiRtStat));
	ELSE
		
		fbAccDatBlinkTm(IN := FALSE);
		
		tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 0;
		tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0206OpsMag4.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyBtnAccDat.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0206OpsMag4.tyOps.tyBitmapAccDat.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.uiRtStat));
	END_IF
	
//	IF p_tyNtParamCurr.bLFPrep AND p_tyMcParamCurr.bLFEn THEN
//		IF p_bLFFollowerDSAllow=FALSE THEN
//			tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 0;
//			tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 0;
//			tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 0;
//			tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 0;
//			tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 0;
//			
//			fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//			fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//			fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//			
//		ELSIF p_bLFFollowerUSAllow=FALSE THEN
//			IF p_tyMcParamCurr.bSectionLeader THEN
//				tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 3;
//				tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 3;
//				tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 3;
//				tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 3;
//				tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 3;
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//			ELSE
//				tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 2;
//				tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 2;
//				tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 2;
//				tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 2;
//				tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 2;
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//			END_IF
//		ELSE
//			IF p_bLFFollowerLdrSeqCtrlInActive THEN
//				tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 1;
//				tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 1;
//				tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 1;
//				tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 1;
//				tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.usiValueIdx	:= 1;
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//			ELSE
//				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//				fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//			END_IF
//		END_IF
//	ELSE
//		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyTxtLdrInActiveCtrl.uiRtStat));
//			
//		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapWarningLF.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapWarningLF.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapWarningLF.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapWarningLF.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapWarningLF.uiRtStat));
//	END_IF
	
END_ACTION
