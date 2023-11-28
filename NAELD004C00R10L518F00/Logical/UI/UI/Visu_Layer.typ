(*Common Layers*)

TYPE
	tyLyrC0001MotionStd : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnPosLmtSen : tyUIBtn;
		tyBtnNegLmtSen : tyUIBtn;
		tyBtnJogPos : tyUIBtn;
		tyBtnJogNeg : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdAW : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenLmtSen : tyUIBtn;
		tyBtnCloseLmtSen : tyUIBtn;
		tyBtnJogOpen : tyUIBtn;
		tyBtnJogClose : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdLifter : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnUpLmtSen : tyUIBtn;
		tyBtnDownLmtSen : tyUIBtn;
		tyBtnJogUp : tyUIBtn;
		tyBtnJogDown : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdTrav : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnFrontLmtSen : tyUIBtn;
		tyBtnRearLmtSen : tyUIBtn;
		tyBtnJogFront : tyUIBtn;
		tyBtnJogRear : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0002FullMask : 	STRUCT 
		tyLyr : tyUILyr;
		tyBtnMask : tyUIBtn;
	END_STRUCT;
	tyLyrC0003DualMask : 	STRUCT 
		tyBtnLeftMask : tyUIBtn;
		tyBtnRgtMask : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0004Navi : 	STRUCT 
		tyBtnLeft : tyUIBtn;
		tyBtnRgt : tyUIBtn;
		tyBtnBack : tyUIBtn;
		tyBitmapPageDisp : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0005Main : 	STRUCT 
		tyBtnNotification : tyUIBtn;
		tyBtnHome : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnStart : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnStep : tyUIBtn;
		tyBtnReset : tyUIBtn;
		tyBitmapStatBar : tyUIBitmap;
		tyHotspotNaviStart : tyUIHotspot;
		tyBtnAlarm : tyUIBtn;
	END_STRUCT;
	tyLyrC0006Set : 	STRUCT 
		tyBtnSave : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0007Notif : 	STRUCT 
		tyTxtUsrLv : tyUITxt;
		tyTxtLFMc : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyStringUsrNm : tyUIString;
		tyHotspotShowInfo : tyUIHotspot;
		tyBitmapShowInfo : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0008MsgBox : 	STRUCT 
		tyBitmapIcon : tyUIBitmap;
		tyBtnNo : tyUIBtn;
		tyBtnYes : tyUIBtn;
		tyLyr : tyUILyr;
		tyTxtWO_sLogMessage : tyUILString;
		tyTxtMsg : tyUITxt;
		tyTxtTitle : tyUITxt;
	END_STRUCT;
	tyLyrC0009Info : 	STRUCT 
		tyStringInfo : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0010RcyMsg : 	STRUCT 
		tyTxtMsg : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0011RcpPopUp : 	STRUCT 
		tyStringInfo : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)
(**)
(*Pages*)

TYPE
	tyLyrP0000SSaver : 	STRUCT 
		tyTxtMcStat : tyUITxt;
		tyTxtMcNm : tyUILString;
		tyBitmapStat : tyUIBitmap;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0001Startup : 	STRUCT 
		tyBarGraphStartup : tyUIBarGraph;
		tyTxtStartupStat : tyUITxt;
	END_STRUCT;
	tyLyrP0001Initial : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0002Menu : 	STRUCT 
		tyBtnAlm : tyUIBtn;
		tyBtnCommCtrl : tyUIBtn;
		tyBtnGenInput : tyUIBtn;
		tyBtnGenOutput : tyUIBtn;
		tyBtnLang : tyUIBtn;
		tyBtnLFCtrl : tyUIBtn;
		tyBtnLFSet : tyUIBtn;
		tyBtnLogin : tyUIBtn;
		tyBtnMcInfo : tyUIBtn;
		tyBtnMcSet : tyUIBtn;
		tyBtnMnlRst : tyUIBtn;
		tyBtnMovCtrl : tyUIBtn;
		tyBtnOpt : tyUIBtn;
		tyBtnProdSel : tyUIBtn;
		tyBtnProdSet : tyUIBtn;
		tyBtnMagInfo : tyUIBtn;
		tyBtnMagSet : tyUIBtn;
		tyBtnMagSel : tyUIBtn;
		tyBtnSimu : tyUIBtn;
		tyBtnUsrMgmt : tyUIBtn;
		tyBitmapMaskProdSetLCS : tyUIBitmap;
		tyHotspotProdSel : tyUIHotspot;
		tyHotspotMagSel : tyUIHotspot;
		tyBitmapGen : tyUIBitmap;
		tyBitmapSet : tyUIBitmap;
		tyBtnHotspotActSimu : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0100Login : 	STRUCT 
		tyStringUsrNm : tyUIString;
		tyStringPw : tyUIString;
		tyBtnLogin : tyUIBtn;
		tyHotspotBypassLogin : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0100Logout : 	STRUCT 
		tyBtnLogout : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0200OpsGen : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBitmapAccDat : tyUIBitmap;
		tyHotspotOpsTravLifter : tyUIHotspot;
		tyHotspotOps2Mag1 : tyUIHotspot;
		tyHotspotOps2Mag2 : tyUIHotspot;
		tyHotspotOpsTravLifterRToL : tyUIHotspot;
		tyHotspotOps2Mag1RToL : tyUIHotspot;
		tyHotspotOps2Mag2RToL : tyUIHotspot;
		tyHotspotOps3Mag1 : tyUIHotspot;
		tyHotspotOps3Mag2 : tyUIHotspot;
		tyHotspotOps3Mag3 : tyUIHotspot;
		tyHotspotOps4Mag1 : tyUIHotspot;
		tyHotspotOps4Mag2 : tyUIHotspot;
		tyHotspotOps4Mag3 : tyUIHotspot;
		tyHotspotOps4Mag4 : tyUIHotspot;
		tyHotspotOpsAIV : tyUIHotspot;
		tyHotspotOpsMagInfo : tyUIHotspot;
		tyNumMinSltRangeRear : tyUINum;
		tyNumMaxSltRangeRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyTxtMagSlt : tyUITxt;
		tyNumMag1AvlQty : tyUINum;
		tyNumMag2AvlQty : tyUINum;
		tyNumMag3AvlQty : tyUINum;
		tyNumMag4AvlQty : tyUINum;
		tyNumMag1TtlSlt : tyUINum;
		tyNumMag2TtlSlt : tyUINum;
		tyNumMag3TtlSlt : tyUINum;
		tyNumMag4TtlSlt : tyUINum;
		tyHotspotAlm : tyUIHotspot;
		a_tyStringAlm : ARRAY[1..c_uiP0200TableSize]OF tyUILString;
		a_tyHotspotRcyMsg : ARRAY[1..c_uiP0200TableSize]OF tyUIHotspot;
		tyBitmapDSIn : tyUIBitmap;
		tyBitmapDSOut : tyUIBitmap;
		tyBitmapDSIn1 : tyUIBitmap;
		tyBitmapDSOut1 : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapDir1 : tyUIBitmap;
		tyBitmapDir2 : tyUIBitmap;
		tyTxtMag3Slt : tyUITxt;
		tyTxtBackslash3 : tyUITxt;
		tyTxtMag4Slt : tyUITxt;
		tyTxtBackslash4 : tyUITxt;
		tyTxtLane : tyUITxt;
		tyTxtLane1 : tyUITxt;
		tyBitmapDSAComm : tyUIBitmap;
		tyBitmapDSAComm1 : tyUIBitmap;
		tyHotspotDSAVSMEMA : tyUIHotspot;
		tyHotspotDSAVSMEMA1 : tyUIHotspot;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyBitmapBarCodeScan : tyUIBitmap;
		tyBtnBarCodeScan : tyUIBtn;
		tyBtnTrolleyUnlck1 : tyUIBtn;
		tyBtnTrolleyUnlck2 : tyUIBtn;
	END_STRUCT;
	tyLyrP0200OpsDSCommB : 	STRUCT 
		tyBitmapIn : tyUIBitmap;
		tyBitmapOut : tyUIBitmap;
		tyHotspotDSBVSMEMA : tyUIHotspot;
		tyBitmapDSBComm : tyUIBitmap;
		tyBitmapIn1 : tyUIBitmap;
		tyBitmapOut1 : tyUIBitmap;
		tyHotspotDSBVSMEMA1 : tyUIHotspot;
		tyBitmapDSBComm1 : tyUIBitmap;
		tyTxtLane : tyUITxt;
		tyTxtLane1 : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsDSAVSMEMA : 	STRUCT 
		tyBtnNom : tyUIBtn;
		tyBtnStat : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsDSBVSMEMA : 	STRUCT 
		tyBtnNom : tyUIBtn;
		tyBtnStat : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsBypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsBarCodeScan : 	STRUCT  (*LMC scnner*)
		tyStringBarCode : tyUIString;
		tyStringWorkOrder : tyUIString;
		tyBtnUSBConnect : tyUIBtn;
		tyBtnOK : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0201OpsTravLif : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyStringMcStat : tyUILString;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyNumMinSltRangeRear : tyUINum;
		tyNumMaxSltRangeRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyLyrProdRear : tyUILyr;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
	END_STRUCT;
	tyLyrP0201OpsTravLifIOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnDSBA : tyUIBtn;
		tyBtnDSBB : tyUIBtn;
		tyBtnDBAA : tyUIBtn;
		tyBtnDBAB : tyUIBtn;
		tyBtnPullerExtRS : tyUIBtn;
		tyBtnPullerRetRS : tyUIBtn;
		tyBtnPullerRotCylHmRS : tyUIBtn;
		tyBtnPullerRotCylRmRS : tyUIBtn;
		tyBtnConvLftSen : tyUIBtn;
		tyBtnConvRgtSen : tyUIBtn;
		tyBtnConvClrSen : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLifterSafetyLmtSw1 : tyUIBtn;
		tyBtnLifterSafetyLmtSw2 : tyUIBtn;
		tyBtnMag1ClmpRS : tyUIBtn;
		tyBtnMag1UnclmpRS : tyUIBtn;
		tyBtnMag2ClmpRS : tyUIBtn;
		tyBtnMag2UnclmpRS : tyUIBtn;
		tyBtnMag3ClmpRS : tyUIBtn;
		tyBtnMag3UnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnInletShutterOpenSen2 : tyUIBtn;
		tyBtnInletShutterCloseSen2 : tyUIBtn;
		tyBtnInletShutterOpenSen3 : tyUIBtn;
		tyBtnInletShutterCloseSen3 : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen2 : tyUIBtn;
		tyBtnOutletShutterCloseSen2 : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyBtnPullerExtCtrl : tyUIBtn;
		tyBtnPullerRetCtrl : tyUIBtn;
		tyBtnRotPullerCtrl : tyUIBtn;
		tyBtnInShutterOpenCtrl : tyUIBtn;
		tyBtnInShutterCloseCtrl : tyUIBtn;
		tyBtnInShutterOpenCtrl2 : tyUIBtn;
		tyBtnInShutterCloseCtrl2 : tyUIBtn;
		tyBtnInShutterOpenCtrl3 : tyUIBtn;
		tyBtnInShutterCloseCtrl3 : tyUIBtn;
		tyBtnOutShutterOpenCtrl : tyUIBtn;
		tyBtnOutShutterCloseCtrl : tyUIBtn;
		tyBtnOutShutterOpenCtrl2 : tyUIBtn;
		tyBtnOutShutterCloseCtrl2 : tyUIBtn;
		tyBtnPullerConvMtrOn : tyUIBtn;
		tyBtnAntiJamSen : tyUIBtn;
		tyBtnRstCurtainSensor : tyUIBtn;
		tyBtnBypCurtainSensorCtrl : tyUIBtn;
		tyBtnBypCurtainSensorPB : tyUIBtn;
		tyBtnMagWidthChk : tyUIBtn;
		tyBtnUnlockSigDS : tyUIBtn;
		tyBtnSafetySigDS : tyUIBtn;
		tyBtnSftySglToUSDS : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0201OpsTravLifBypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0201OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtmRear : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0201OpsQueryBoardInfo : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnQueryBoardInfo : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyBtnBarcodeScanner : tyUIBtn;
		tyStringTopBarcode : tyUILString;
		tyStringBottomBarcode : tyUILString;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0201OpsCurrWorkOrder : 	STRUCT 
		tyBtnQuery : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyStringWorkOrder : tyUILString;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
		tyLyr : tyUILyr;
		tyBitmapMask : tyUIBitmap;
	END_STRUCT;
	tyLyrP0201OpsQueryWorkOrder : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyBtnBarcodeScanner : tyUIBtn;
		tyStringMagazineId : tyUILString;
		tyNumSlotId : tyUINum;
		tyStringBarcode : tyUILString;
		tyLyr : tyUILyr;
		tyBitmapMask : tyUIBitmap;
	END_STRUCT;
	tyLyrP0201OpsBarcodeScanner : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyStringBarcode : tyUILString;
		tyStringTopBarcode : tyUILString;
		tyStringTopBarcodeBK : tyUILString;
		tyStringBottomBarcode : tyUILString;
		tyStringBottomBarcodeBK : tyUILString;
		tyStringMagazineBarcode : tyUILString;
		tyStringMagazineBarcodeBK : tyUILString;
		tyStringPCBBarcode : tyUILString;
		tyStringPCBBarcodeBK : tyUILString;
		tyBtnTop : tyUIBtn;
		tyBtnBottom : tyUIBtn;
		tyBtnMagazine : tyUIBtn;
		tyBtnPCB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0202Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag1Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotIOMonitor : tyUIHotspot;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag1AvlQty : tyUINum;
		tyNumMag1TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
	END_STRUCT;
	tyLyrP0202IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnDSBA : tyUIBtn;
		tyBtnDSBB : tyUIBtn;
		tyBtnDBAA : tyUIBtn;
		tyBtnDBAB : tyUIBtn;
		tyBtnPullerExtRS : tyUIBtn;
		tyBtnPullerRetRS : tyUIBtn;
		tyBtnPullerRotCylHmRS : tyUIBtn;
		tyBtnPullerRotCylRmRS : tyUIBtn;
		tyBtnPullerOutSen : tyUIBtn;
		tyBtnPullerClrSen : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag1FixedClampCtrl : tyUIBtn;
		tyBtnMag1RemoteClampCtrl : tyUIBtn;
		tyBtnMag1ConvMtrIn : tyUIBtn;
		tyBtnMag1ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagDetSen : tyUIBtn;
		tyBtnSltLckSen : tyUIBtn;
		tyBtnTrllyExtRS : tyUIBtn;
		tyBtnTrllyPresentSen : tyUIBtn;
		tyBtnTrllyExtCtrl : tyUIBtn;
	END_STRUCT;
	tyLyrP0202BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0202OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtmRear : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0203Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth2 : tyUINum;
		tyNumWidth : tyUINum;
		tyTxtMag2Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag2AvlQty : tyUINum;
		tyNumMag2TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
	END_STRUCT;
	tyLyrP0203IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnDSBA : tyUIBtn;
		tyBtnDSBB : tyUIBtn;
		tyBtnDBAA : tyUIBtn;
		tyBtnDBAB : tyUIBtn;
		tyBtnPullerExtRS : tyUIBtn;
		tyBtnPullerRetRS : tyUIBtn;
		tyBtnPullerRotCylHmRS : tyUIBtn;
		tyBtnPullerRotCylRmRS : tyUIBtn;
		tyBtnPullerOutSen : tyUIBtn;
		tyBtnPullerClrSen : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag2FixedClampCtrl : tyUIBtn;
		tyBtnMag2RemoteClampCtrl : tyUIBtn;
		tyBtnMag2ConvMtrIn : tyUIBtn;
		tyBtnMag2ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagDetSen : tyUIBtn;
		tyBtnSltLckSen : tyUIBtn;
		tyBtnTrllyExtRS : tyUIBtn;
		tyBtnTrllyPresentSen : tyUIBtn;
		tyBtnTrllyExtCtrl : tyUIBtn;
	END_STRUCT;
	tyLyrP0203BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0203OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtmRear : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0204Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag3Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag3AvlQty : tyUINum;
		tyNumMag3TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
	END_STRUCT;
	tyLyrP0204IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnDSBA : tyUIBtn;
		tyBtnDSBB : tyUIBtn;
		tyBtnDBAA : tyUIBtn;
		tyBtnDBAB : tyUIBtn;
		tyBtnPullerExtRS : tyUIBtn;
		tyBtnPullerRetRS : tyUIBtn;
		tyBtnPullerRotCylHmRS : tyUIBtn;
		tyBtnPullerRotCylRmRS : tyUIBtn;
		tyBtnPullerOutSen : tyUIBtn;
		tyBtnPullerClrSen : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag3FixedClampCtrl : tyUIBtn;
		tyBtnMag3RemoteClampCtrl : tyUIBtn;
		tyBtnMag3ConvMtrIn : tyUIBtn;
		tyBtnMag3ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagDetSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0204BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0204OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtmRear : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0205IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBitmapMc : tyUIBitmap;
		tyBitmapAIVErr1 : tyUIBitmap;
		tyBitmapAIVErr2 : tyUIBitmap;
		tyBitmapAIVErr3 : tyUIBitmap;
		tyBitmapAIVErr4 : tyUIBitmap;
		tyBitmapAIVRdy1 : tyUIBitmap;
		tyBitmapAIVRdy2 : tyUIBitmap;
		tyBitmapAIVRdy3 : tyUIBitmap;
		tyBitmapAIVRdy4 : tyUIBitmap;
		tyBitmapAIVAvail1 : tyUIBitmap;
		tyBitmapAIVAvail2 : tyUIBitmap;
		tyBitmapAIVAvail3 : tyUIBitmap;
		tyBitmapAIVAvail4 : tyUIBitmap;
		tyBitmapAIVSLarge1 : tyUIBitmap;
		tyBitmapAIVSLarge2 : tyUIBitmap;
		tyBitmapAIVSLarge3 : tyUIBitmap;
		tyBitmapAIVSLarge4 : tyUIBitmap;
		tyBtnAIVSotRCVOk1 : tyUIBtn;
		tyBtnAIVSotRCVOk2 : tyUIBtn;
		tyBtnAIVSotRCVOk3 : tyUIBtn;
		tyBtnAIVSotRCVOk4 : tyUIBtn;
		tyBtnReqAIVToBring1 : tyUIBtn;
		tyBtnReqAIVToBring2 : tyUIBtn;
		tyBtnReqAIVToBring3 : tyUIBtn;
		tyBtnReqAIVToBring4 : tyUIBtn;
		tyBtnReqAIVToGet1 : tyUIBtn;
		tyBtnReqAIVToGet2 : tyUIBtn;
		tyBtnReqAIVToGet3 : tyUIBtn;
		tyBtnReqAIVToGet4 : tyUIBtn;
		tyBitmapMagErr1 : tyUIBitmap;
		tyBitmapMagErr2 : tyUIBitmap;
		tyBitmapMagErr3 : tyUIBitmap;
		tyBitmapMagErr4 : tyUIBitmap;
		tyBitmapMagRdy1 : tyUIBitmap;
		tyBitmapMagRdy2 : tyUIBitmap;
		tyBitmapMagRdy3 : tyUIBitmap;
		tyBitmapMagRdy4 : tyUIBitmap;
		tyBitmapMagAvail1 : tyUIBitmap;
		tyBitmapMagAvail2 : tyUIBitmap;
		tyBitmapMagAvail3 : tyUIBitmap;
		tyBitmapMagAvail4 : tyUIBitmap;
		tyBitmapMagSLarge1 : tyUIBitmap;
		tyBitmapMagSLarge2 : tyUIBitmap;
		tyBitmapMagSLarge3 : tyUIBitmap;
		tyBitmapMagSLarge4 : tyUIBitmap;
		tyBtnMESActive : tyUIBtn;
		tyStringMesName : tyUILString;
		tyLyr12 : tyUILyr;
		tyLyr3 : tyUILyr;
		tyLyr4 : tyUILyr;
		tyTxtAIVCommProtocol : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0206Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag4Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag4AvlQty : tyUINum;
		tyNumMag4TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
	END_STRUCT;
	tyLyrP0206IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnDSBA : tyUIBtn;
		tyBtnDSBB : tyUIBtn;
		tyBtnDBAA : tyUIBtn;
		tyBtnDBAB : tyUIBtn;
		tyBtnPullerExtRS : tyUIBtn;
		tyBtnPullerRetRS : tyUIBtn;
		tyBtnPullerRotCylHmRS : tyUIBtn;
		tyBtnPullerRotCylRmRS : tyUIBtn;
		tyBtnPullerOutSen : tyUIBtn;
		tyBtnPullerClrSen : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnMag4FixedClmpRS : tyUIBtn;
		tyBtnMag4FixedUnclmpRS : tyUIBtn;
		tyBtnMag4RmtClmpRS : tyUIBtn;
		tyBtnMag4RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag4PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag4ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag4AIVInPosSen1 : tyUIBtn;
		tyBtnMag4AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag4OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyBtnMag4OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag3FixedClampCtrl : tyUIBtn;
		tyBtnMag3RemoteClampCtrl : tyUIBtn;
		tyBtnMag3ConvMtrIn : tyUIBtn;
		tyBtnMag3ConvMtrOut : tyUIBtn;
		tyBtnMag4FixedClampCtrl : tyUIBtn;
		tyBtnMag4RemoteClampCtrl : tyUIBtn;
		tyBtnMag4ConvMtrIn : tyUIBtn;
		tyBtnMag4ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
	END_STRUCT;
	tyLyrP0206BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0206OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyBtnToptoBtmRear : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0300McInfo : 	STRUCT 
		tyStringMcNm : tyUIString;
		tyStringJobNo : tyUIString;
		tyTxtNtAddr : tyUITxt;
		tyStringSoftwareVer : tyUIString;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0400ProdSel : 	STRUCT 
		tyHotspotShowLRcp : tyUIHotspot;
		tyStringRecipeNm : tyUILString;
		tyNumProdWidth2 : tyUINum;
		tyNumProdWidth : tyUINum;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyBtnPreview : tyUIBtn;
		tyTableRecipe : tyUITable;
		tyStringSearch : tyUILString;
		tyBtnLoad : tyUIBtn;
		tyTxtMcMode : tyUITxt;
		tyTxtFlippedBrd : tyUITxt;
		tyBtnSort : tyUIBtn;
		tyNotQuadrupleLyr : tyUILyr;
		tyQuadrupleLyr : tyUILyr;
		tyNumMinSltRear : tyUINum;
		tyNumMaxSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyNumProdWidthRear : tyUINum;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyTxtMtrPshrExtSpd : tyUITxt;
		tyTxtMtrPshrExtTorq : tyUITxt;
		tyNumPshrOffset : tyUINum;
		tyTxtPshrOffset : tyUITxt;
	END_STRUCT;
	tyLyrP0400RcpDet : 	STRUCT 
		tyHotspotShowLRcp : tyUIHotspot;
		tyStringRecipeNm : tyUILString;
		tyNumRecipeNum : tyUINum;
		tyNumProdWidth : tyUINum;
		tyNumProdWidth2 : tyUINum;
		tyNumProdWidthRear : tyUINum;
		tyNumFirstSlt : tyUINum;
		tyNumLastSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyTxtMcMode : tyUITxt;
		tyTxtFlippedBrd : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
		tyLyr1 : tyUILyr;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyTxtMtrPshrExtSpd : tyUITxt;
		tyTxtMtrPshrExtTorq : tyUITxt;
		tyNumPshrOffset : tyUINum;
		tyTxtPshrOffset : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0410MagSel : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumLifterMag4Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyNumTravPosMag4 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyBtnLoad : tyUIBtn;
		tyBtnPreview : tyUIBtn;
		tyTableRecipe : tyUITable;
		tyTxtMagModel : tyUITxt;
		tyNumMagMaxBrdWidth : tyUINum;
		tyTxtMagTitle : tyUITxt;
		tyBtnSort : tyUIBtn;
		tyBtnSafetyBar : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
		tyBitmapBrder : tyUIBitmap;
	END_STRUCT;
	tyLyrP0410MagDet : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumLifterMag4Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyNumTravPosMag4 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyTxtMagModel : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyNumMagMaxBrdWidth : tyUINum;
		tyLyr : tyUILyr;
		tyBtnSafetyBar : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0600Alm : 	STRUCT 
		tyBtnCurr : tyUIBtn;
		tyBtnHistory : tyUIBtn;
		a_tyStringAlm : ARRAY[1..c_uiP0600TableSize]OF tyUILString;
		a_tyHotspotAlm : ARRAY[1..c_uiP0600TableSize]OF tyUIHotspot;
		tyLyr : tyUILyr;
		tyAlarm : tyUIAlarm;
		tyBtnHistoryUp : tyUIBtn;
		tyBtnHistoryDown : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0700LFCtrl : 	STRUCT 
		tyBtnChgAll : tyUIBtn;
		tyBtnChgSeqAuto : tyUIBtn;
		tyBtnChgSeqMnl : tyUIBtn;
		tyBtnSyncTm : tyUIBtn;
		tyBitmapChgAll : tyUIBitmap;
		tyBitmapChgSeqAuto : tyUIBitmap;
		tyBitmapChgSeqMnl : tyUIBitmap;
		tyBitmapSyncTm : tyUIBitmap;
		tyTable1List : tyUITable1;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0800MagInfo1 : 	STRUCT 
		tyTable1List : tyUITable1;
		tyTable2List : tyUITable1;
		tyTxtMag1Stat : tyUITxt;
		tyTxtMag2Stat : tyUITxt;
		tyBtnMag1SetEmpty : tyUIBtn;
		tyBtnMag2SetEmpty : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0800MagInfo2 : 	STRUCT 
		tyTable3List : tyUITable1;
		tyTxtMag3Stat : tyUITxt;
		tyBtnMag3SetEmpty : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0800MagInfo3 : 	STRUCT 
		tyTable4List : tyUITable1;
		tyTxtMag4Stat : tyUITxt;
		tyBtnMag4SetEmpty : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0900GenIn1 : 	STRUCT 
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSW : tyUIBtn;
		tyBtnSafetyRly : tyUIBtn;
		tyBtnCurtainSafetyRly : tyUIBtn;
		tyBtnLifterTimingBeltSen : tyUIBtn;
		tyBtnLifterSafetyLmtSW1 : tyUIBtn;
		tyBtnLifterSafetyLmtSW2 : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag4PresentSen : tyUIBtn;
		tyBtnMagWidthChk : tyUIBtn;
	END_STRUCT;
	tyLyrP0900GenIn2 : 	STRUCT 
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag4OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyBtnMag4OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0910GenOut : 	STRUCT 
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnSafetyCurtainRst : tyUIBtn; (*moved to new layer*)
		tyBtnCurtainByp : tyUIBtn;
		tyBtnCurtainPBLED : tyUIBtn;
		tyBtnSafetyRst : tyUIBtn;
	END_STRUCT;
	tyLyrP0910GenOutCurtainSen : 	STRUCT 
		tyBtnBypCurtainSenPBLED : tyUIBtn;
		tyBtnBypCurtainSen : tyUIBtn;
		tyBtnRstCurtainSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0920MtrNPneuCtrl : 	STRUCT 
		tyBtnAW : tyUIBtn;
		tyBtnAWPushPul : tyUIBtn;
		tyBtnTrav : tyUIBtn;
		tyBtnLifter : tyUIBtn;
		tyBtnPullerConv : tyUIBtn;
		tyBtnMag1Conv : tyUIBtn;
		tyBtnMag2Conv : tyUIBtn;
		tyBtnMag3Conv : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0920MtrNPneuCtrlPneu : 	STRUCT 
		tyBtnShutter : tyUIBtn;
		tyBtnSafetyBar : tyUIBtn;
		tyBtnTrolleyLck : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0921InletShutterCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenRS : tyUIBtn;
		tyBtnCloseRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921InletShutterDC : 	STRUCT 
		tyBtnOpen : tyUIBtn;
		tyBtnOpen2 : tyUIBtn;
		tyBtnOpen3 : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921InletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyBtnOpen2 : tyUIBtn;
		tyBtnOpen3 : tyUIBtn;
		tyBtnOpenRS2 : tyUIBtn;
		tyBtnOpenRS3 : tyUIBtn;
		tyBtnCloseRS2 : tyUIBtn;
		tyBtnCloseRS3 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenRS : tyUIBtn;
		tyBtnCloseRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterDC : 	STRUCT 
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyBtnOpen2 : tyUIBtn;
		tyBtnOpen3 : tyUIBtn;
		tyBtnOpenRS2 : tyUIBtn;
		tyBtnOpenRS3 : tyUIBtn;
		tyBtnCloseRS2 : tyUIBtn;
		tyBtnCloseRS3 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterDis : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0923LftSafetyBarCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyTxtSubTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923LftSafetyBarDC : 	STRUCT 
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923LftSafetyBarFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyTxtSubTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarDC : 	STRUCT 
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0924TrolleyLckCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnExtRS2 : tyUIBtn;
		tyBtnPresentSen1 : tyUIBtn;
		tyBtnPresentSen2 : tyUIBtn;
		tyTxtSubTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0924TrolleyLckDC : 	STRUCT 
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyBtnExt2 : tyUIBtn;
		tyBtnRet2 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0924TrolleyLckFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyBtnExt2 : tyUIBtn;
		tyBtnRet2 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0930Mag1ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMagDetSen : tyUIBtn;
		tyBtnSltLckSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0930Mag1ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0930Mag1ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0931Mag2ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMagDetSen : tyUIBtn;
		tyBtnSltLckSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0931Mag2ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0931Mag2ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0932Mag3ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMagDetSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0932Mag3ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0932Mag3ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0939Mag4ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0939Mag4ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0939Mag4ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0933PullConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnLftSen : tyUIBtn;
		tyBtnRgtSen : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyBtnRotHmRS : tyUIBtn;
		tyBtnRotRmRS : tyUIBtn;
		tyBtnAlarmSig : tyUIBtn;
		tyBtnTorqueSig : tyUIBtn;
		tyBtnExtSen : tyUIBtn;
		tyBtnExtSlwSen : tyUIBtn;
		tyBtnRetSen : tyUIBtn;
		tyBtnRetSlwSen : tyUIBtn;
		tyBtnAntiJamSen : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnConvClrSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0933PullConvDC : 	STRUCT 
		tyBtnStart : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyBtnRotToHm : tyUIBtn;
		tyBtnRotToRm : tyUIBtn;
		tyBtnSpdBinBit0 : tyUIBtn;
		tyBtnSpdBinBit1 : tyUIBtn;
		tyBtnSpdBinBit2 : tyUIBtn;
		tyBtnSigOn : tyUIBtn;
		tyBtnBrake : tyUIBtn;
		tyBtnAlarmRst : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0933PullConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnCylEnt : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyBtnRotToHm : tyUIBtn;
		tyBtnRotToRm : tyUIBtn;
		tyNumExtSpd : tyUINum;
		tyNumExtTorqPercent : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0934AW : 	STRUCT 
		tyNumNewWidth : tyUINum;
		tyBtnGo : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0935Lifter : 	STRUCT 
		tyNumNewSlt : tyUINum;
		tyBtnGo : tyUIBtn;
		tyBtnGoLaneA : tyUIBtn;
		tyBtnGoLaneB : tyUIBtn;
		tyBtnNxtSlt : tyUIBtn;
		tyBtnPrevSlt : tyUIBtn;
		tyNumMagPos : tyUINum;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0936Trav : 	STRUCT 
		tyBtnGoToLaneA : tyUIBtn;
		tyBtnGoToLaneB : tyUIBtn;
		tyBtnGoToMag1 : tyUIBtn;
		tyBtnGoToMag2 : tyUIBtn;
		tyBtnGoToMag3 : tyUIBtn;
		tyBtnGoToMag4 : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0937AWPushOrPuller : 	STRUCT 
		tyNumNewWidth : tyUINum;
		tyBtnGo : tyUIBtn;
	END_STRUCT;
	tyLyrP0937InOutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0940CommCtrlDSSMEMA : 	STRUCT 
		tyBtnDSB : tyUIBtn;
		tyBtnDBA : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0940SOTComm : 	STRUCT 
		tyBtnAIVRcv1 : tyUIBtn;
		tyBtnAIVErr1 : tyUIBtn;
		tyBtnAIVRdy1 : tyUIBtn;
		tyBtnAIVAvail1 : tyUIBtn;
		tyBtnAIVSLarge1 : tyUIBtn;
		tyBtnMagErr1 : tyUIBtn;
		tyBtnMagRdy1 : tyUIBtn;
		tyBtnMagAvail1 : tyUIBtn;
		tyBtnMagSLarge1 : tyUIBtn;
		tyBtnAIVRcv2 : tyUIBtn;
		tyBtnAIVErr2 : tyUIBtn;
		tyBtnAIVRdy2 : tyUIBtn;
		tyBtnAIVAvail2 : tyUIBtn;
		tyBtnAIVSLarge2 : tyUIBtn;
		tyBtnMagErr2 : tyUIBtn;
		tyBtnMagRdy2 : tyUIBtn;
		tyBtnMagAvail2 : tyUIBtn;
		tyBtnMagSLarge2 : tyUIBtn;
		tyBtnAIVRcv3 : tyUIBtn;
		tyBtnAIVErr3 : tyUIBtn;
		tyBtnAIVRdy3 : tyUIBtn;
		tyBtnAIVAvail3 : tyUIBtn;
		tyBtnAIVSLarge3 : tyUIBtn;
		tyBtnMagErr3 : tyUIBtn;
		tyBtnMagRdy3 : tyUIBtn;
		tyBtnMagAvail3 : tyUIBtn;
		tyBtnMagSLarge3 : tyUIBtn;
		tyBtnAIVRcv4 : tyUIBtn;
		tyBtnAIVErr4 : tyUIBtn;
		tyBtnAIVRdy4 : tyUIBtn;
		tyBtnAIVAvail4 : tyUIBtn;
		tyBtnAIVSLarge4 : tyUIBtn;
		tyBtnMagErr4 : tyUIBtn;
		tyBtnMagRdy4 : tyUIBtn;
		tyBtnMagAvail4 : tyUIBtn;
		tyBtnMagSLarge4 : tyUIBtn;
		tyBtnFleetMgrActive : tyUIBtn;
		tyBtnMagReqBring1 : tyUIBtn;
		tyBtnMagReqtGet1 : tyUIBtn;
		tyBtnMagReqBring2 : tyUIBtn;
		tyBtnMagReqtGet2 : tyUIBtn;
		tyBtnMagReqBring3 : tyUIBtn;
		tyBtnMagReqtGet3 : tyUIBtn;
		tyBtnMagReqBring4 : tyUIBtn;
		tyBtnMagReqtGet4 : tyUIBtn;
		tySOTLyr1 : tyUILyr;
		tySOTLyr2 : tyUILyr;
		tySOTLyr3 : tyUILyr;
		tySOTLyr4 : tyUILyr;
		tyTxtAIVCommProtocol : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0950Simu : 	STRUCT 
		tyBtnSimu : tyUIBtn;
		tyBtnStart : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSOT1 : tyLyrP0950SOTBtn;
		tyBtnSOT2 : tyLyrP0950SOTBtn;
		tyBtnSOT3 : tyLyrP0950SOTBtn;
		tyBtnSOT4 : tyLyrP0950SOTBtn;
		tyBtnMagSOT1 : tyLyrP0950SOTBtn;
		tyBtnMagSOT2 : tyLyrP0950SOTBtn;
		tyBtnMagSOT3 : tyLyrP0950SOTBtn;
		tyBtnMagSOT4 : tyLyrP0950SOTBtn;
		tyBtnInShutterSim : tyUIBtn;
		tyBtnTestTrav : tyUIBtn;
		tyBtnNtParaWr : tyUIBtn;
		tyBtnNtParaWr2 : tyUIBtn;
		tyStringJobNo : tyUILString;
		tyNumAddr : tyUINum;
		tyNumTravSpd : tyUINum;
		tyNumLifterSpd : tyUINum;
		tyBtnRcpGen : tyUIBtn;
		tyLyrMag3 : tyUILyr;
		tyLyrMag4 : tyUILyr;
		tyLyr1 : tyUILyr;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0950SimuAGVToMC : 	STRUCT 
		tyBtnAGVSimulateOn : tyUIBtn;
		tyBtnAGVOnline : tyUIBtn;
		tyBtnAGVInPos1 : tyUIBtn;
		tyBtnAGVInPos2 : tyUIBtn;
		tyBtnAGVInPos3 : tyUIBtn;
		tyBtnAGVAuto : tyUIBtn;
		tyBtnAGV1Occupied : tyUIBtn;
		tyBtnAGV2Occupied : tyUIBtn;
		tyBtnAGV3Occupied : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0950SimuMCToAGV : 	STRUCT 
		tyBtnMachineOnline : tyUIBtn;
		tyBtnMachineEstop : tyUIBtn;
		tyBtnMag1Empty : tyUIBtn;
		tyBtnMag2Empty : tyUIBtn;
		tyBtnMag3Empty : tyUIBtn;
		tyBtnMag1Rdy : tyUIBtn;
		tyBtnMag2Rdy : tyUIBtn;
		tyBtnMag3Rdy : tyUIBtn;
		tyBtnMag1Auto : tyUIBtn;
		tyBtnMag2Auto : tyUIBtn;
		tyBtnMag3Auto : tyUIBtn;
		tyBtnMag1Occupied : tyUIBtn;
		tyBtnMag2Occupied : tyUIBtn;
		tyBtnMag3Occupied : tyUIBtn;
		tyBtnMag1IncorrectModel : tyUIBtn;
		tyBtnMag2IncorrectModel : tyUIBtn;
		tyBtnMag3IncorrectModel : tyUIBtn;
	END_STRUCT;
	tyLyrP0950SOTBtn : 	STRUCT 
		tyBtnInPos : tyUIBtn;
		tyBtnError : tyUIBtn;
		tyBtnRdy : tyUIBtn;
		tyBtnAvail : tyUIBtn;
		tyBtnSize : tyUIBtn;
	END_STRUCT;
	tyLyrP0950SOTstatus : 	STRUCT 
		tyBtnInPos : BOOL;
		tyBtnError : BOOL;
		tyBtnRdy : BOOL;
		tyBtnAvail : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1000Lang : 	STRUCT 
		tyBtnChinese : tyUIBtn;
		tyBtnEnglish : tyUIBtn;
		tyBtnGerman : tyUIBtn;
		tyNumYear : tyUINum;
		tyNumMonth : tyUINum;
		tyNumDay : tyUINum;
		tyNumHour : tyUINum;
		tyNumMinute : tyUINum;
		tyNumSecond : tyUINum;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1020McSetNavi : 	STRUCT 
		tyBtnMcSet : tyUIBtn;
		tyBtnVCommSet : tyUIBtn;
		tyBtnHCommSet : tyUIBtn;
		tyBtnUSBSet : tyUIBtn;
		tyBtnAntiGapSet : tyUIBtn;
		tyBtnAIVCommSet : tyUIBtn;
		tyBtnRS232Set : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1021McSetGen : 	STRUCT 
		tyStringMcNm : tyUIString;
		tyDrpDnDefaultMcMod : tyUIDrpDn;
		tyDrpDnDefaultFlippedBrd : tyUIDrpDn;
		tyDrpDnNetworkMod : tyUIDrpDn;
		tyNumSSaverTm : tyUINum;
		tyBtnSSaverEn : tyUIBtn;
		tyTxtLblSSaver : tyUITxt;
		tyStringIPAddr : tyUIString;
		tyStringSubnetMask : tyUIString;
		tyTxtWidthAtHm : tyUITxt;
		tyNumWidthAtHm : tyUINum;
		tyTxtAWPusherAtHm : tyUITxt;
		tyBtnAWPusherDis : tyUIBtn;
		tyNumConvInitTm : tyUINum;
		tyNumTranOutErrDlyTm : tyUINum;
		tyTxtMag1ConvRunTm : tyUITxt;
		tyNumMag1ConvRunTm : tyUINum;
		tyTxtMag2ConvRunTm : tyUITxt;
		tyNumMag2ConvRunTm : tyUINum;
		tyTxtMag3ConvRunTm : tyUITxt;
		tyNumMag3ConvRunTm : tyUINum;
		tyTxtMag4ConvRunTm : tyUITxt;
		tyNumMag4ConvRunTm : tyUINum;
		tyNumTravPosLaneA : tyUINum;
		tyNumLiftPosLaneA : tyUINum;
		tyTxtLiftPosLaneA : tyUITxt;
		tyTxtTravPosLaneB : tyUITxt;
		tyNumTravPosLaneB : tyUINum;
		tyTxtLiftPosLaneB : tyUITxt;
		tyNumLiftPosLaneB : tyUINum;
		tyBtnTravPosATeach : tyUIBtn;
		tyBtnTravPosBTeach : tyUIBtn;
		tyBtnLiftPosATeach : tyUIBtn;
		tyBtnLiftPosBTeach : tyUIBtn;
		tyBtnAWDis : tyUIBtn;
		tyBtnMnlAccDat : tyUIBtn;
		tyBtnAutoStepEn : tyUIBtn;
		tyBtnVSMEMAEn : tyUIBtn;
		tyBtnHermesRmtEn : tyUIBtn;
		tyBtnLongBrdEn : tyUIBtn;
		tyBtnOutShutterDis : tyUIBtn;
		tyBtnChgParamEn : tyUIBtn;
		tyLyrGen1 : tyUILyr;
		tyLyrGen2 : tyUILyr;
		tyLyrGen3 : tyUILyr;
		tyTxtWidthOffset : tyUITxt;
		tyNumWidthOffset : tyUINum;
		tyNumMagAutoDetSenTm : tyUINum;
		tyBtnAGVComEn : tyUIBtn;
		tyNumAutoLogoutTm : tyUINum;
		tyTxtLblAutoLogoutTm : tyUITxt;
		tyBtnAutoLogoutEn : tyUIBtn;
		tyBtnScannerEn : tyUIBtn;
		tyBtnLFBuzMute : tyUIBtn;
		tyDrpDnAGVComProtocol : tyUIDrpDn;
		tyDrpDnMagExchangeMode : tyUIDrpDn;
		tyBtnAGVSizeDisabled : tyUIBtn;
		tyNumAWPusherAtHm : tyUINum;
		tyNumTravFixtoFixPosOutlet : tyUINum;
		tyBtnDisableFMWarning : tyUIBtn;
		tyNumLMCFbTm : tyUINum;
		tyBtnMagWidthChkDis : tyUIBtn;
		tyNumMag1WidthChkDetDist : tyUINum;
		tyNumMag2WidthChkDetDist : tyUINum;
		tyNumMag3WidthChkDetDist : tyUINum;
		tyBtnDBAOnRgtSen : tyUIBtn;
		tyBtnHermesSvyEn : tyUIBtn;
		tyBtnRFIDEn : tyUIBtn;
		tyNumRFIDWrTO : tyUINum;
		tyNumTravLaneBOffset : tyUINum;
	END_STRUCT;
	tyLyrP1021McSetNetwork : 	STRUCT 
		tyStringIPAddr : tyUIString;
		tyStringSubnetMask : tyUIString;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1022McSetVCommSel : 	STRUCT 
		tyBtnLF : tyUIBtn;
		tyBtnLCSLF : tyUIBtn;
		tyBtnLCSReqRcp : tyUIBtn;
		tyBtnLCSManageRcp : tyUIBtn;
		tyBtnLCSLiveDat : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1022McSetVCommLF : 	STRUCT 
		tyBtnLeaderMc : tyUIBtn;
		tyBtnSectionLdr : tyUIBtn;
		tyBtnDBAOnWOAlign : tyUIBtn;
		tyBtnDSWidthChkEn : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1022McSetVCommSvy : 	STRUCT 
		tyNumSndAliveTm : tyUINum;
		tyNumSvySystemPort : tyUINum;
		tyBtnConfiguration : tyUIBtn;
		tyBtnCheckAliveResponse : tyUIBtn;
		tyBtnBoardTracking : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
		tyBtnSendWorkOrderInfo : tyUIBtn;
		tyBitmapMask : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1023McSetHCommSel : 	STRUCT 
		tyBtnSMEMA : tyUIBtn;
		tyBtnHermes : tyUIBtn;
		tyTxtHeader : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1023McSetHCommSMEMA : 	STRUCT 
		tyBtnGdSig : tyUIBtn;
		tyDrpDnSMEMAMod : tyUIDrpDn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1023McSetHCommDSHermes : 	STRUCT 
		tyNumLaneID : tyUINum;
		tyNumSvrPort : tyUINum;
		tyNumSndAliveTm : tyUINum;
		tyBtnCheckAliveResponse : tyUIBtn;
		tyBtnBoardForecast : tyUIBtn;
		tyBtnSendBoardInfo : tyUIBtn;
		tyBitmapMask : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1024McSetAntiGap : 	STRUCT 
		tyNumLftSenOff : tyUINum;
		tyNumRgtSenOff : tyUINum;
		tyNumMagConvEntOn : tyUINum;
		tyNumMagConvEntOff : tyUINum;
		tyNumMagConvPresentOn : tyUINum;
		tyNumMagConvPresentOff : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1025McSetAIVComm : 	STRUCT 
		tyNumSvrPort : tyUINum;
		tyStringAllwClntIP : tyUIString;
		tyNumAllwClntPort : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1026McSetTeach : 	STRUCT 
		tyBtn1 : tyUIBtn;
		tyBtn2 : tyUIBtn;
		tyBtn3 : tyUIBtn;
		tyBtn4 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1026InOutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1027McSetUSBSetting : 	STRUCT 
		tyVID : tyUINum;
		tyPID : tyUINum;
		tyBtnReset : tyUIBtn := (uiMaskRtStat:=0);
		tyBitError : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1028McSetRS232Setting : 	STRUCT 
		tyNumStartCode1 : tyUINum;
		tyNumStartCode2 : tyUINum;
		tyNumEndCode1 : tyUINum;
		tyNumEndCode2 : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1030MagSet : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyBtnLifterMag1Slt1Pos : tyUIBtn;
		tyBtnLifterMag2Slt1Pos : tyUIBtn;
		tyBtnLifterMag3Slt1Pos : tyUIBtn;
		tyBtnLifterMag4Slt1Pos : tyUIBtn;
		tyBtnTravPosMag1 : tyUIBtn;
		tyBtnTravPosMag2 : tyUIBtn;
		tyBtnTravPosMag3 : tyUIBtn;
		tyBtnTravPosMag4 : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumLifterMag4Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyNumTravPosMag4 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyTxtLifMag4Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag4Lbl : tyUITxt;
		tyTableRecipe : tyUITable;
		tyDrpDnMagModel : tyUIDrpDn;
		tyTxtMagModel : tyUITxt;
		tyNumMagMaxBrdWidth : tyUINum;
		tyBtnSort : tyUIBtn;
		tyBtnSafetyBarDisabled : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
		tyBitmapBrder : tyUIBitmap;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1031MagSetTeach : 	STRUCT 
		tyBtn1 : tyUIBtn;
		tyBtn2 : tyUIBtn;
		tyBtn3 : tyUIBtn;
		tyBtn4 : tyUIBtn;
		tyLyr : tyUILyr;
		tyNumNewSlt : tyUINum;
	END_STRUCT;
	tyLyrP1031InOutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1040ProdSet : 	STRUCT 
		tyHotspotShowLRcp : tyUIHotspot;
		tyStringRecipeNm : tyUILString;
		tyNumProdWidth2 : tyUINum;
		tyNumProdWidth : tyUINum;
		tyNumFirstSlt : tyUINum;
		tyNumLastSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyDrpDnMcMode : tyUIDrpDn;
		tyDrpDnFlippedBrd : tyUIDrpDn;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyBtnToXML : tyUIBtn;
		tyBtnFromXML : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyStringSearch : tyUILString;
		tyTableRecipe : tyUITable;
		tyBtnSort : tyUIBtn;
		tyNumProdWidthRear : tyUINum;
		tyNumFirstSltRear : tyUINum;
		tyNumLastSltRear : tyUINum;
		tyNumPitchRear : tyUINum;
		tyNotQuadrupleLyr : tyUILyr;
		tyQuadrupleLyr : tyUILyr;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyTxtPshrOffset : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1050LFSetLdr : 	STRUCT 
		tyTable1List : tyUITable1;
		tyBtnEdit : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyBtnOnline : tyUIBtn;
		tyBtnOffline : tyUIBtn;
		tyBtnShftUp : tyUIBtn;
		tyBtnShftDwn : tyUIBtn;
		tyNumBeforeOven : tyUINum;
		tyNumAfterOven : tyUINum;
		tyNumBeforeOven2 : tyUINum;
		tyNumAfterOven2 : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1050LFSetLdrEdit : 	STRUCT 
		tyNumMcNum : tyUINum;
		tyStringIPAddr : tyUIString;
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyTxtLblInfoThirdParty : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1080UsrMgmt : 	STRUCT 
		tyDrpDnLvl : tyUIDrpDn;
		tyTableList : tyUITable1;
		tyBtnNewUsr : tyUIBtn;
		tyBtnEditDetail : tyUIBtn;
		tyBtnDeleteUsr : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnEditAccess : tyUIBtn;
	END_STRUCT;
	tyLyrP1080UsrMgmtAct : 	STRUCT 
		tyStringUsrNm : tyUIString;
		tyStringPw : tyUIString;
		tyDrpDnLvl : tyUIDrpDn;
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1081UsrMgmtUsrAccessRgt : 	STRUCT 
		tyBtnOps : tyUIBtn;
		tyBtnProdSel : tyUIBtn;
		tyBtnMagSel : tyUIBtn;
		tyBtnMcInfo : tyUIBtn;
		tyBtnAlm : tyUIBtn;
		tyBtnBffrInfo : tyUIBtn;
		tyBtnOvenInfo : tyUIBtn;
		tyBtnMagInfo : tyUIBtn;
		tyBtnLFCtrl : tyUIBtn;
		tyBtnManual : tyUIBtn;
		tyBtnSimu : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyBtnLFSet : tyUIBtn;
		tyBtnBackup : tyUIBtn;
		tyBtnLang : tyUIBtn;
		tyBtnMcSet : tyUIBtn;
		tyBtnProdSet : tyUIBtn;
		tyBtnMagSet : tyUIBtn;
		tyBtnManualFBOnly : tyUIBtn;
		tyStringNm : tyUIString;
		tyTxtTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1081UsrMgmtUsrAccessRgtSel : 	STRUCT 
		tyDrpDnLevel : tyUIDrpDn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)
(*Visu Property*)

TYPE
	tyVisu : 	STRUCT 
		uiChgPage : UINT;
		uiCurrPage : UINT;
		uiSSaverTm : UINT;
		uiScreenSaverRemainTm : UINT;
		usiChgLang : USINT;
		usiCurrLang : USINT;
	END_STRUCT;
	tyKeypad : 	STRUCT 
		tyStringTitle : tyUIString;
	END_STRUCT;
	tyTxtSnippets : 	STRUCT 
		sLibraryNm : STRING[10];
		sUsrMgmtUsrLv1Nm : STRING[80];
		sUsrMgmtUsrLv2Nm : STRING[80];
		sUsrMgmtUsrLv3Nm : STRING[80];
	END_STRUCT;
END_TYPE
