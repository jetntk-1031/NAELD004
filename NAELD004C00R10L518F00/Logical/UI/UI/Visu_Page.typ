(*Pages*)

TYPE
	tyUIP0000SSaver : 	STRUCT 
		tySSaver : tyLyrP0000SSaver := (tyTxtMcStat:=(usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxLoginAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=4,usiTxtIdx:=5),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=173),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0001Startup : 	STRUCT 
		tyStartup : tyLyrP0001Startup;
		tyInitial : tyLyrP0001Initial;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxWorkOrder : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=26),tyTxtMsg:=(usiValueIdx:=123),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxIPConfig : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtTitle:=(usiValueIdx:=25));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0002Menu : 	STRUCT 
		tyMenu : tyLyrP0002Menu := (tyBtnAlm:=(uiMaskRtStat:=0),tyBtnCommCtrl:=(uiMaskRtStat:=0),tyBtnGenInput:=(uiMaskRtStat:=0),tyBtnGenOutput:=(uiMaskRtStat:=0),tyBtnLang:=(uiMaskRtStat:=0),tyBtnLFCtrl:=(uiMaskRtStat:=0,uiRtStat:=1),tyBtnLFSet:=(uiMaskRtStat:=0,uiRtStat:=1),tyBtnMcInfo:=(uiMaskRtStat:=0),tyBtnMcSet:=(uiMaskRtStat:=0),tyBtnMnlRst:=(uiRtStat:=1),tyBtnMovCtrl:=(uiMaskRtStat:=0),tyBtnOpt:=(uiMaskRtStat:=0),tyBtnProdSel:=(uiMaskRtStat:=0),tyBtnProdSet:=(uiMaskRtStat:=0),tyBtnMagInfo:=(uiMaskRtStat:=0),tyBtnMagSet:=(uiMaskRtStat:=0),tyBtnMagSel:=(uiMaskRtStat:=0),tyBtnSimu:=(uiMaskRtStat:=0),tyBtnUsrMgmt:=(uiMaskRtStat:=0),tyBitmapGen:=(uiRtStat:=1),tyBitmapSet:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxRemoveMag : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=10),tyTxtTitle:=(usiValueIdx:=24));
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyUIP0003MMenu : 	STRUCT 
		tyMMenuGen : tyLyrP0003MMenuGen;
		tyMMenuBtn : tyOptBtn;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=145),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=146),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
	tyOptBtn : 	STRUCT 
		tyBtnAuto : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnBuz : tyUIBtn;
		tyBtnReset : tyUIBtn;
		tyBtnUnload : tyUIBtn := (usiTxtIdx:=5);
		tyBtnRlsNewMag1 : tyUIBtn;
		tyBtnRlsNewMag2 : tyUIBtn;
		tyBtnRlsNewMag3 : tyUIBtn;
		tyBtn5 : tyUIBtn := (uiRtStat:=1);
		tyBtn6 : tyUIBtn := (uiRtStat:=1);
		tyBtn7 : tyUIBtn := (uiRtStat:=1);
		tyBtnAccDat : tyUIBtn := (usiTxtIdx:=7);
		tyBtnHide : tyUIBtn := (uiRtStat:=1);
		tyBtnRlsNewMagBk1 : tyUIBtn := (usiTxtIdx:=6);
		tyBtnRlsNewMagBk2 : tyUIBtn := (usiTxtIdx:=8);
		tyBtnRlsNewMagBk3 : tyUIBtn := (usiTxtIdx:=10);
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0100Login : 	STRUCT 
		tyLogin : tyLyrP0100Login := (tyStringUsrNm:=(sKeypadTitle:='User Name'),tyStringPw:=(sKeypadTitle:='Password'));
		tyLogout : tyLyrP0100Logout := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxPwMismatch : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=24),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=23),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0200OpsGen : 	STRUCT 
		tyOps : tyLyrP0200OpsGen := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1));
		tyBarCodeScan : tyLyrP0200OpsBarCodeScan := (tyStringBarCode:=(sKeypadTitle:='Barcode'),tyLyr:=(uiRtStat:=1));
		tyDSCommB : tyLyrP0200OpsDSCommB := (tyLyr:=(uiRtStat:=1));
		tyDSAVSMEMA : tyLyrP0200OpsDSAVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyDSBVSMEMA : tyLyrP0200OpsDSBVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyDSAVSMEMA1 : tyLyrP0200OpsDSAVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyDSBVSMEMA1 : tyLyrP0200OpsDSBVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0200OpsBypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxRcpSelMsg : tyLyrC0008MsgBox;
		tyRcyMsgHide : tyLyrC0010RcyMsg := (tyLyr:=(uiRtStat:=1));
		tyRcyMsg : tyLyrC0010RcyMsg;
		tyMsgBoxRcpSelMsg1 : tyLyrC0008MsgBox;
		tyMsgBoxSelRcpNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=44),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxBarCode : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=149),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGoToLFCtrlAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=2),tyTxtMsg:=(usiValueIdx:=169),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyLyr:=(uiRtStat:=0));
		tyMsgBoxWOFinished : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=3),tyBtnNo:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=29));
		tyMsgBoxLMCFail : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=3),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=11),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=10),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=2),tyTxtTitle:=(usiValueIdx:=29));
		tyMsgBoxLMCCompl : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=3),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=3),tyTxtTitle:=(usiValueIdx:=29));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0201OpsTravLifter : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyOps : tyLyrP0201OpsTravLif := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1));
		tyIOMonitor : tyLyrP0201OpsTravLifIOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0201OpsTravLifBypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0201OpsParam := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
		tyQueryBoardInfo : tyLyrP0201OpsQueryBoardInfo := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyLyr:=(uiRtStat:=1));
		tyCurrWorkOrderInfo : tyLyrP0201OpsCurrWorkOrder := (tyBtnQuery:=(usiBitmapIdx:=1),tyBtnExit:=(usiBitmapIdx:=2),tyBtnDelete:=(usiBitmapIdx:=3),tyLyr:=(uiRtStat:=1));
		tyQueryWorkOrderInfo : tyLyrP0201OpsQueryWorkOrder := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyStringMagazineId:=(sKeypadTitle:='Magazine Barcode'),tyNumSlotId:=(diValueMax:=50,diValueMin:=1,sKeypadTitle:='Slot ID'),tyStringBarcode:=(sKeypadTitle:='PCB Barcode'),tyLyr:=(uiRtStat:=1));
		tyBarcodeScanner : tyLyrP0201OpsBarcodeScanner := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyLyr:=(uiRtStat:=1));
		tyMsgBoxAskDelete : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=27),tyTxtMsg:=(usiValueIdx:=124),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0202OpsMag1 : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyOps : tyLyrP0202Ops := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=1));
		tyIOMonitor : tyLyrP0202IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0202BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0202OpsParam := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0203OpsMag2 : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyOps : tyLyrP0203Ops := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=1));
		tyIOMonitor : tyLyrP0203IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0203BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0203OpsParam := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0204OpsMag3 : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyOps : tyLyrP0204Ops := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=1));
		tyIOMonitor : tyLyrP0204IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0204BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0204OpsParam := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0205OpsAIV : 	STRUCT 
		tyIOMonitor : tyLyrP0205IOMonitor;
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0206OpsMag4 : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyOps : tyLyrP0206Ops := (tyBtnAccDat:=(uiMaskRtStat:=0,uiRtStat:=1),tyBtnChgParam:=(uiMaskRtStat:=0),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=0));
		tyIOMonitor : tyLyrP0206IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0206BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0206OpsParam := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0300McInfo : 	STRUCT 
		tyMcInfo : tyLyrP0300McInfo;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0400ProdSel : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyProdSel : tyLyrP0400ProdSel := (tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),2((sValue:='10')),4((0))],a_tyStringDataCol1:=[(usiColor:=1),14((0))],a_tyStringDataCol2:=[(usiColor:=1),14((0))],tyUISlider:=(iMaxValue:=1991,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Product Name'),tyStringTitle2Col2Row0:=(sValue:='Product Width')),tyStringSearch:=(sKeypadTitle:='Search'));
		tyRcpDet : tyLyrP0400RcpDet := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxRcpParamErr : tyLyrC0008MsgBox;
		tyMsgBoxLoadErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=41),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSelRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=43),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSelRcpNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=44),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxGoToLFCtrlAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=169),tyTxtTitle:=(usiValueIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0410MagSel : 	STRUCT 
		tyMagSel : tyLyrP0410MagSel := (tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],a_tyStringDataCol3:=[(usiColor:=1),14(0)],a_tyStringDataCol4:=[(usiColor:=1),14(0)],tyUISlider:=(iMaxValue:=9,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine Name'),tyStringTitle2Col2Row0:=(sValue:='Slot-Slot Dist/Max Slot')));
		tyMagDet : tyLyrP0410MagDet := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxRcpParamErr : tyLyrC0008MsgBox;
		tyMsgBoxLoadErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=41),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSelRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=43),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSelRcpNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=44),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
		tyNavi1Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=1));
		tyNavi2Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=1));
		tyNavi2Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0600Alm : 	STRUCT 
		tyAlm : tyLyrP0600Alm := (tyBtnCurr:=(bValue:=TRUE));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyRcyMsg : tyLyrC0010RcyMsg;
		tyRcyMsgHide : tyLyrC0010RcyMsg := (tyLyr:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0700LFCtrl : 	STRUCT 
		tyLdr : tyLyrP0700LFCtrl := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),3((0))],a_tyStringDataCol1:=[2(0),13((0))],a_tyStringDataCol2:=[2(0),13((0))],a_tyStringDataCol4:=[2(0),13((0))],a_tyTxtDataCol3:=[2(0),13((0))],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Machine Name'),tyStringTitle2Col2Row0:=(sValue:='IP Address'),tyStringTitle3Col3Row0:=(sValue:='Status'),tyStringTitle4Col4Row0:=(sValue:='Recipe Name'),tyUISlider:=(iMaxValue:=c_diLFClntNum-c_uiP0700TableSize+1,iMinValue:=1,iValue:=1,uiRtStat:=0)));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxChgAllAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=161),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxChgSeqAutoAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=162),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxChgSeqMnlAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=163),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxSyncPLCTmAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=164),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxTerminateOpsAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=165),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxErrorAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=174),tyTxtTitle:=(usiValueIdx:=9));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0800MagInfo : 	STRUCT 
		tyMagInfo1 : tyLyrP0800MagInfo1 := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')),tyTable2List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyMagInfo2 : tyLyrP0800MagInfo2 := (tyTable3List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyMagInfo3 : tyLyrP0800MagInfo3 := (tyTable4List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyMagInfo4 : tyLyrP0800MagInfo3 := (tyTable4List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNaviLyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNaviLyrOff : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0900GenIn : 	STRUCT 
		tyGenIn1 : tyLyrP0900GenIn1;
		tyGenIn2 : tyLyrP0900GenIn2;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0910GenOut : 	STRUCT 
		tyGenOut : tyLyrP0910GenOut;
		tyGenOutCurtainSen : tyLyrP0910GenOutCurtainSen;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0920MtrNPneuCtrl : 	STRUCT 
		tyMtrNPneuCtrl : tyLyrP0920MtrNPneuCtrl;
		tyMtrNPneuCtrlPneu : tyLyrP0920MtrNPneuCtrlPneu := (tyLyr:=(uiRtStat:=1));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0921InletNOutletShutter : 	STRUCT 
		tyInletShutterCom : tyLyrP0921InletShutterCom := (tyTxtTit:=(usiValueIdx:=140)); (*0 inlet shutter , 140 inletshutter1*)
		tyInletShutterDC : tyLyrP0921InletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyInletShutterFB : tyLyrP0921InletShutterFB;
		tyInletShutterCom2 : tyLyrP0921InletShutterCom := (tyTxtTit:=(usiValueIdx:=141));
		tyInletShutterDC2 : tyLyrP0921InletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyInletShutterFB2 : tyLyrP0921InletShutterFB := (tyBtnOpen2:=(uiRtStat:=1),tyBtnOpen3:=(uiRtStat:=1));
		tyInletShutterCom3 : tyLyrP0921InletShutterCom := (tyTxtTit:=(usiValueIdx:=141));
		tyInletShutterDC3 : tyLyrP0921InletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyInletShutterFB3 : tyLyrP0921InletShutterFB;
		tyOutletShutterCom : tyLyrP0921OutletShutterCom;
		tyOutletShutterDC : tyLyrP0921OutletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterFB : tyLyrP0921OutletShutterFB;
		tyOutletShutterCom2 : tyLyrP0921OutletShutterCom;
		tyOutletShutterDC2 : tyLyrP0921OutletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterFB2 : tyLyrP0921OutletShutterFB;
		tyOutletShutterDis : tyLyrP0921OutletShutterDis := (tyLyr:=(uiRtStat:=1));
		tyDualMaskHide : tyLyrC0003DualMask := (tyLyr:=(uiRtStat:=1));
		tyDualMaskEStop : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=1),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=1));
		tyDualMaskCWSig : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=2),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=2));
		tyDualMaskSafetyRly : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=3),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=3));
		tyDualMaskPullInterruptInlet : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=8),tyBtnRgtMask:=(uiMaskRtStat:=1,usiTxtIdx:=8));
		tyDualMaskLifMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=13),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=13));
		tyDualMaskTravMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=14),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=14));
		tyDualMaskAWMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=15),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=15));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyNaviOutlet21 : tyLyrC0004Navi := (tyBitmapPageDisp:=(usiValueIdx:=1));
		tyNaviOutlet22 : tyLyrC0004Navi := (tyBitmapPageDisp:=(usiValueIdx:=2));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0923SafetyBar : 	STRUCT 
		tyRgtSafetyBarComHide : tyLyrP0923RgtSafetyBarCom := (tyBitmapMc:=(usiValueIdx:=255),tyLyr:=(uiRtStat:=1));
		tyRgtSafetyBarDCHide : tyLyrP0923RgtSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyRgtSafetyBarFBHide : tyLyrP0923RgtSafetyBarFB := (tyLyr:=(uiRtStat:=1));
		tyMag1SafetyBarCom : tyLyrP0923LftSafetyBarCom;
		tyMag1SafetyBarDC : tyLyrP0923LftSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag1SafetyBarFB : tyLyrP0923LftSafetyBarFB;
		tyMag2SafetyBarCom : tyLyrP0923RgtSafetyBarCom := (tyTxtSubTitle:=(usiValueIdx:=1));
		tyMag2SafetyBarDC : tyLyrP0923RgtSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag2SafetyBarFB : tyLyrP0923RgtSafetyBarFB;
		tyMag3SafetyBarCom : tyLyrP0923LftSafetyBarCom := (tyTxtSubTitle:=(usiValueIdx:=2));
		tyMag3SafetyBarDC : tyLyrP0923LftSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag3SafetyBarFB : tyLyrP0923LftSafetyBarFB;
		tyDualMaskHide : tyLyrC0003DualMask := (tyLyr:=(uiRtStat:=1));
		tyDualMaskEStop : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=1),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=1));
		tyDualMaskCWSig : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=2),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=2));
		tyDualMaskSafetyRly : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=3),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=3));
		tyDualMaskPshrInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=29),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=29));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0924TrolleyLck : 	STRUCT 
		tyCom : tyLyrP0924TrolleyLckCom;
		tyDC : tyLyrP0924TrolleyLckDC;
		tyFB : tyLyrP0924TrolleyLckFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0930MagConv1 : 	STRUCT 
		tyCom : tyLyrP0930Mag1ConvCom;
		tyDC : tyLyrP0930Mag1ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0930Mag1ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNavi2Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=1));
		tyNavi3Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=3));
		tyNavi4Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0931MagConv2 : 	STRUCT 
		tyCom : tyLyrP0931Mag2ConvCom;
		tyDC : tyLyrP0931Mag2ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0931Mag2ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyNavi2Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=2));
		tyNavi3Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=4));
		tyNavi4Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=4));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0932MagConv3 : 	STRUCT 
		tyCom : tyLyrP0932Mag3ConvCom;
		tyDC : tyLyrP0932Mag3ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0932Mag3ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyNavi3Lyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=5));
		tyNavi4Lyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=5));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0939MagConv4 : 	STRUCT 
		tyCom : tyLyrP0939Mag4ConvCom;
		tyDC : tyLyrP0939Mag4ConvDC;
		tyFB : tyLyrP0939Mag4ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyNavi4Lyr4 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=5));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0933PullConv : 	STRUCT 
		tyCom : tyLyrP0933PullConvCom;
		tyFB : tyLyrP0933PullConvFB := (tyNumExtSpd:=(sKeypadTitle:='Extend Speed, Sel: 1-8 Speed'),tyNumExtTorqPercent:=(sKeypadTitle:='Extend Torque'));
		tyDC : tyLyrP0933PullConvDC := (tyLyr:=(uiRtStat:=1));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskInShutterInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=9));
		tyFullMaskAWConvInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=30));
		tyFullMaskTravInt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=26));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0934AW : 	STRUCT 
		tyAW : tyLyrP0934AW := (tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd : tyLyrC0001MotionStdAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=4));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=5));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=12));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=20));
		tyFullMaskPullerRetInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=29));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0935Lifter : 	STRUCT 
		tyLifter : tyLyrP0935Lifter := (tyNumNewSlt:=(diValue:=1,diValueMin:=1,sKeypadTitle:='New Slot'),tyNumMagPos:=(sKeypadTitle:='Magazine Position'));
		tyMotionStd : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskPullInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=7));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=10));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=18));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=21));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=22));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=23));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=24));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0936Trav : 	STRUCT 
		tyTrav : tyLyrP0936Trav;
		tyMotionStd : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskPullInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=6));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=16));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=17));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=11));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=19));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0937AWPushOrPuller : 	STRUCT 
		tyAW : tyLyrP0937AWPushOrPuller := (tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd : tyLyrC0001MotionStdAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=4));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=5));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=12));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=20));
		tyFullMaskPullerRetInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=29));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP0937InOutletShutterFB := (tyLyr:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0940CommCtrl : 	STRUCT 
		tyDSSMEMAA : tyLyrP0940CommCtrlDSSMEMA;
		tyDSSMEMAB : tyLyrP0940CommCtrlDSSMEMA;
		tySOT : tyLyrP0940SOTComm;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0950Simu : 	STRUCT 
		tySimu : tyLyrP0950Simu := (tyBtnSimu:=(bRtLk:=TRUE,bValue:=TRUE),tyStringJobNo:=(sValue:='2023-'),tyNumTravSpd:=(diValue:=100000),tyNumLifterSpd:=(diValue:=50000));
		tyAGVToMc : tyLyrP0950SimuAGVToMC;
		tyMcToAGV : tyLyrP0950SimuMCToAGV;
		tyFullMaskHide : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=0,usiTxtIdx:=14),tyLyr:=(uiRtStat:=0));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=0,usiTxtIdx:=15),tyLyr:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1000Lang : 	STRUCT 
		tyLang : tyLyrP1000Lang := (tyBtnEnglish:=(bRtLk:=TRUE,bValue:=TRUE),tyNumYear:=(sKeypadTitle:='Year'),tyNumMonth:=(sKeypadTitle:='Month'),tyNumDay:=(sKeypadTitle:='Day'),tyNumHour:=(sKeypadTitle:='Hour'),tyNumMinute:=(sKeypadTitle:='Minute'),tyNumSecond:=(sKeypadTitle:='Second'));
		tyLangBkUp : tyLyrP1000Lang;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=65),tyTxtTitle:=(usiValueIdx:=20));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1020McSetNavi : 	STRUCT 
		tyNavi : tyLyrP1020McSetNavi;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1021McSetGen : 	STRUCT 
		tyGen : tyLyrP1021McSetGen := (tyStringMcNm:=(sKeypadTitle:='Machine Name'),tyDrpDnDefaultMcMod:=(usiValueMaxIdx:=2,usiValueMinIdx:=0),tyDrpDnDefaultFlippedBrd:=(usiValueMaxIdx:=2,usiValueMinIdx:=0),tyNumSSaverTm:=(diValueMax:=1800,diValueMin:=10,sKeypadTitle:='Screen Saver Time'),tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyStringSubnetMask:=(sKeypadTitle:='Subnet Mask'),tyStringHMIIPAddr:=(sKeypadTitle:='HMI IP Address'),tyNumWidthAtHm:=(sKeypadTitle:='Width At Home Position'),tyNumConvInitTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Conveyor Initialize Time'),tyNumTranOutErrDlyTm:=(diValueMax:=120000,diValueMin:=1000,sKeypadTitle:='Transfer Out Error Delay Time'),tyNumMag1ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag1 Conv Run Time Out'),tyNumMag2ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag2 Conv Run Time Out'),tyNumMag3ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag3 Conv Run Time Out'),tyNumTravPosLaneA:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Trav Position LaneA'),tyNumLiftPosLaneA:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Lifter Position LaneA'),tyNumTravPosLaneB:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Trav Position LaneB'),tyNumLiftPosLaneB:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Lifter Position LaneB'),tyNumTravFixtoFixPosOutlet:=(sKeypadTitle:='Fix To Fix Rail Distance'),tyNumLMCFbTm:=(diValueMax:=180000,sKeypadTitle:='LMC Feedback Time'),tyNumMag1WidthChkDetDist:=(diValue:=2000,diValueMax:=7000,diValueMin:=2000,sKeypadTitle:='Mag1 Detection Dist'),tyNumMag2WidthChkDetDist:=(diValue:=2000,diValueMax:=7000,diValueMin:=2000,sKeypadTitle:='Mag2 Detection Dist'),tyNumMag3WidthChkDetDist:=(diValue:=2000,diValueMax:=7000,diValueMin:=2000,sKeypadTitle:='Mag3 Detection Dist'),tyNumRFIDWrTO:=(diValueMax:=1800000,diValueMin:=1000,sKeypadTitle:='Write RFID Time Out'),tyNumTravLaneBOffset:=(diValueMax:=50000,diValueMin:=-50000),tyNumMmenuButtonPos:=[7((uiRtStat:=1))]);
		tyGenBkUp : tyLyrP1021McSetGen;
		tyNetwork : tyLyrP1021McSetNetwork := (tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyStringSubnetMask:=(sKeypadTitle:='Subnet Mask'),tyLyr:=(uiRtStat:=1));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNaviLyr3 : tyLyrC0004Navi := (tyBitmapPageDisp:=(usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=14),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtSubnetAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=75),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtSubnetErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=76),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSubnetInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=77),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtIPAddrAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=72),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=73),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxChgNetworkAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxIPAddrInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=104),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSubnetInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=105),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=106),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetSubnetErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=107),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSetDHCPError : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=108),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtHMIIPAddrAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=195),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtHMIIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=73),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxHMIIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=74),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxHMIIPAddrInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=104),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetHMIIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=107),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxBtnPosDuplicate : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=147),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1022McSetVComm : 	STRUCT 
		tyVComSel : tyLyrP1022McSetVCommSel;
		tyLF : tyLyrP1022McSetVCommLF;
		tyVComSelBkUp : tyLyrP1022McSetVCommSel;
		tyLFBkUp : tyLyrP1022McSetVCommLF;
		tyVComSvy : tyLyrP1022McSetVCommSvy := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=5000,sKeypadTitle:='Send Alive Tm'),tyNumSvySystemPort:=(diValueMin:=65535,sKeypadTitle:='System Port'),tyLyr:=(uiRtStat:=1));
		tyVComSvyBkUp : tyLyrP1022McSetVCommSvy;
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=0),tyLyr:=(uiRtStat:=0));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=1),tyLyr:=(uiRtStat:=0));
		tyNaviLyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=0));
		tyNaviLyr4 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=0));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=70),tyTxtTitle:=(usiValueIdx:=15));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=15));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1023McSetHComm : 	STRUCT 
		tyDSSelA : tyLyrP1023McSetHCommSel := (tyBtnSMEMA:=(bRtLk:=TRUE,bValue:=TRUE));
		tyDSSMEMAA : tyLyrP1023McSetHCommSMEMA;
		tyDSHermesA : tyLyrP1023McSetHCommDSHermes := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=0,sKeypadTitle:='Send Alive Tm'),tyNumLaneID:=(diValue:=1,diValueMax:=1000,diValueMin:=1,sKeypadTitle:='Lane ID'),tyNumSvrPort:=(diValueMax:=65535,sKeypadTitle:='Sever Port'));
		tyDSSelB : tyLyrP1023McSetHCommSel := (tyBtnSMEMA:=(bRtLk:=TRUE,bValue:=TRUE),tyTxtHeader:=(usiValueIdx:=1));
		tyDSSMEMAB : tyLyrP1023McSetHCommSMEMA;
		tyDSHermesB : tyLyrP1023McSetHCommDSHermes := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=0,sKeypadTitle:='Send Alive Tm'),tyNumLaneID:=(diValue:=1,diValueMax:=1000,diValueMin:=1,sKeypadTitle:='Lane ID'),tyNumSvrPort:=(diValueMax:=65535,sKeypadTitle:='Sever Port'));
		tyDSSelABkUp : tyLyrP1023McSetHCommSel;
		tyDSSMEMAABkUp : tyLyrP1023McSetHCommSMEMA;
		tyDSHermesABkUp : tyLyrP1023McSetHCommDSHermes;
		tyDSSelBBkUp : tyLyrP1023McSetHCommSel;
		tyDSSMEMABBkUp : tyLyrP1023McSetHCommSMEMA;
		tyDSHermesBBkUp : tyLyrP1023McSetHCommDSHermes;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=16),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=16));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=16));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1024McSetAntiGap : 	STRUCT 
		tyAntiGap : tyLyrP1024McSetAntiGap := (tyNumLftSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Left Sensor Signal'),tyNumRgtSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Right Sensor Signal'));
		tyAntiGapBkUp : tyLyrP1024McSetAntiGap;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1025McSetAIVComm : 	STRUCT 
		tyAIVComm : tyLyrP1025McSetAIVComm := (tyNumSvrPort:=(diValueMax:=65535,diValueMin:=0,sKeypadTitle:='Server Port'),tyStringAllwClntIP:=(sKeypadTitle:='Allowed Client IP'),tyNumAllwClntPort:=(diValueMax:=65535,diValueMin:=0,sKeypadTitle:='Allowed Client Port'));
		tyAIVCommBkUp : tyLyrP1025McSetAIVComm;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=14),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=25));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1026McSetTeach : 	STRUCT 
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
		tyTeachTravPosA : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=1),tyBtn2:=(usiTxtIdx:=2),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosB : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=3),tyBtn2:=(usiTxtIdx:=4),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterPosA : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=5),tyBtn2:=(usiTxtIdx:=6),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterPosB : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=7),tyBtn2:=(usiTxtIdx:=8),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyMotionStdTrav : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyMotionStdLifter : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=23));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=24));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUpdtTravPosA : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=81),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosB : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=82),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtLifterPosA : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=83),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterPosB : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=84),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1027McSetUSBSetting : 	STRUCT 
		tyUSBSet : tyLyrP1027McSetUSBSetting;
		tyUSBSetBkUp : tyLyrP1027McSetUSBSetting;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1028McSetRS232Setting : 	STRUCT 
		tyRS232Set : tyLyrP1028McSetRS232Setting := (tyNumStartCode1:=(diValue:=-1,diValueMax:=127,diValueMin:=-1,sKeypadTitle:='Start Code 1'),tyNumStartCode2:=(diValue:=-1,diValueMax:=127,diValueMin:=-1,sKeypadTitle:='Start Code 2'),tyNumEndCode1:=(diValueMax:=127,diValueMin:=-1,sKeypadTitle:='End Code 1'),tyNumEndCode2:=(diValueMax:=127,diValueMin:=-1,sKeypadTitle:='End Code 2'));
		tyRS232SetBkUp : tyLyrP1028McSetRS232Setting;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1030MagSet : 	STRUCT 
		tyMagSet : tyLyrP1030MagSet := (tyStringRecipeNm:=(sKeypadTitle:='Magazine Name'),tyNumSltToSltDist:=(diValueMax:=50000,diValueMin:=1000,sKeypadTitle:='Slot To Slot Distance'),tyNumMaxSlt:=(diValueMax:=60,diValueMin:=1,sKeypadTitle:='Maximum Slot'),tyBtnSave:=(uiMaskRtStat:=0),tyNumLifterMag1Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag1 Lifter Slot 1 Position'),tyNumLifterMag2Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag2 Lifter Slot 1 Position'),tyNumLifterMag3Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag3 Lifter Slot 1 Position'),tyNumLifterMag4Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag4 Lifter Slot 1 Position'),tyNumTravPosMag1:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag1 Trav Pos'),tyNumTravPosMag2:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag2 Trav Pos'),tyNumTravPosMag3:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag3 Trav Pos'),tyNumTravPosMag4:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag4 Trav Pos'),tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='6'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14((0))],a_tyStringDataCol3:=[(usiColor:=1),14((0))],a_tyStringDataCol4:=[(usiColor:=1),14(0)],tyUISlider:=(iMaxValue:=10,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine Name'),tyStringTitle2Col2Row0:=(sValue:='Slot-Slot Dist/Max Slot'),uiMaskRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=46),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=59),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxSaveNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=47),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxReloadCurrRcp : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=50),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelCurrRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=51),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=54),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelNmEmpty : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=60),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=52),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=53),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1031MagSetTeach : 	STRUCT 
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
		tyTeachLifterMag1Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=9),tyBtn2:=(usiTxtIdx:=10),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachLifterMag2Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=11),tyBtn2:=(usiTxtIdx:=12),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachLifterMag3Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=13),tyBtn2:=(usiTxtIdx:=14),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachLifterMag4Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=37),tyBtn2:=(usiTxtIdx:=38),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachTravPosMag1 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=15),tyBtn2:=(usiTxtIdx:=16),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosMag2 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=17),tyBtn2:=(usiTxtIdx:=18),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosMag3 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=19),tyBtn2:=(usiTxtIdx:=20),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosMag4 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=39),tyBtn2:=(usiTxtIdx:=40),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyMotionStdTrav : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyMotionStdLifter : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=23));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=24));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUpdtLifterMag1Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=85),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterMag2Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=86),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterMag3Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=87),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterMag4Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=91),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtTravPosMag1 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=88),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosMag2 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=89),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosMag3 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=90),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosMag4 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=92),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1040ProdSet : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyProdSet : tyLyrP1040ProdSet := (tyStringRecipeNm:=(sKeypadTitle:='Recipe Name'),tyNumProdWidth:=(diValueMax:=500000,diValueMin:=50000,sKeypadTitle:='Product Width'),tyNumFirstSlt:=(diValueMin:=1,sKeypadTitle:='Minimum Slot Value'),tyNumLastSlt:=(diValueMax:=60,sKeypadTitle:='Maximum Slot Value'),tyNumPitch:=(diValueMax:=59,diValueMin:=1,sKeypadTitle:='Pitch'),tyDrpDnMcMode:=(usiValueMaxIdx:=2,usiValueMinIdx:=0),tyDrpDnFlippedBrd:=(usiValueMaxIdx:=2,usiValueMinIdx:=0),tyBtnSave:=(uiMaskRtStat:=0),tyStringSearch:=(sKeypadTitle:='Search'),tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),5(0)],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],tyUISlider:=(iMaxValue:=2000,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Product Name'),tyStringTitle2Col2Row0:=(sValue:='Product Width'),uiMaskRtStat:=1),tyNumProdWidthRear:=(sKeypadTitle:='Rear Product Width'),tyNumPshrOffset:=(diValueMin:=-1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=46),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=59),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxSaveNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=47),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxReloadCurrRcp : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=50),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelCurrRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=51),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=54),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelNmEmpty : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=60),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=52),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=53),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxToXMLAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=61),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyLyr:=(uiRtStat:=0));
		tyMsgBoxToXMLErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=62),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0));
		tyMsgBoxFromXMLAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=63),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyLyr:=(uiRtStat:=0));
		tyMsgBoxFromXMLErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=64),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0));
		tyMsgBoxSaveListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=66),tyTxtTitle:=(usiValueIdx:=8));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1050LFSet : 	STRUCT 
		tyLdr : tyLyrP1050LFSetLdr := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],a_tyTxtDataCol3:=[(usiColor:=1),14(0)],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Machine Name'),tyStringTitle2Col2Row0:=(sValue:='IP Address'),tyStringTitle3Col3Row0:=(sValue:='Status'),tyUISlider:=(iMaxValue:=c_diLFClntNum-c_uiP1050TableSize+1,iMinValue:=1,iValue:=1)),tyNumBeforeOven:=(sKeypadTitle:='Machine Index Before Oven'),tyNumAfterOven:=(sKeypadTitle:='Machine Index After Oven'));
		tyLdrBkUp : tyLyrP1050LFSetLdr;
		tyLdrEdit : tyLyrP1050LFSetLdrEdit := (tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyTxtLblInfoThirdParty:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=158),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxIPAddrDuplicate : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=168),tyTxtTitle:=(usiValueIdx:=9));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1080UsrMgmt : 	STRUCT 
		tyUsrMgmt : tyLyrP1080UsrMgmt := (tyTableList:=(a_tyHotspot:=[11((bRtCompl:=TRUE,bValue:=TRUE)),4((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),4((0))],a_tyStringDataCol1:=[(usiColor:=1),8((0)),2(0),4((0))],a_tyStringDataCol2:=[0,14((0))],a_tyTxtDataCol3:=[(usiColor:=1),8((0)),2(0),4((0))],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Username'),tyStringTitle2Col2Row0:=(sValue:='Level Title'),tyStringTitle3Col3Row0:=(sValue:='Level Title'),tyUISlider:=(iMaxValue:=40,iMinValue:=1,iValue:=1),uiMaskRtStat:=1));
		tyActHide : tyLyrP1080UsrMgmtAct := (tyLyr:=(uiRtStat:=1));
		tyCreate : tyLyrP1080UsrMgmtAct := (tyStringPw:=(sKeypadTitle:='Password'),tyStringUsrNm:=(sKeypadTitle:='User Name'));
		tyEdit : tyLyrP1080UsrMgmtAct := (tyStringPw:=(sKeypadTitle:='Password'),tyStringUsrNm:=(uiMaskRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxAddErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=27),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxEditErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=28),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxAddNmExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=22),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxEditParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=24),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxAddParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=21),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=35),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=37),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=31),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelLastAdminErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=26),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=25),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=30),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1081UsrAccessRgt : 	STRUCT 
		tyUsrAccessRgtSel : tyLyrP1081UsrMgmtUsrAccessRgtSel := (tyDrpDnLevel:=(usiValueMaxIdx:=2));
		tyUsrAccessRgtLvl1 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=0));
		tyUsrAccessRgtLvl2 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=1));
		tyUsrAccessRgtLvl3 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=2));
		tyUsrAccessRgtLvl1BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyUsrAccessRgtLvl2BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyUsrAccessRgtLvl3BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=1),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=34),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)
(*Common Layers*)

TYPE
	tyUICom : 	STRUCT 
		tyMain : tyLyrC0005Main := (tyBtnStep:=(uiRtStat:=1),tyBtnReset:=(uiMaskRtStat:=0),tyBtnStop:=(uiMaskRtStat:=0));
		tyMain1 : tyLyrC0005Main := (tyBtnStart:=(uiRtStat:=1),tyBtnBuzzer:=(uiRtStat:=1),tyBtnStep:=(uiRtStat:=1),tyBtnReset:=(uiRtStat:=1),tyBtnStop:=(uiRtStat:=1),tyBtnAlarm:=(uiRtStat:=1),tyHotspotNaviStart:=(uiRtStat:=1),tyBtnGoMain:=(uiRtStat:=1));
		tySet : tyLyrC0006Set := (tyBtnSave:=(uiMaskRtStat:=0));
		tyNotif : tyLyrC0007Notif := (tyLyr:=(uiRtStat:=1));
		tyInfo : tyLyrC0009Info := (tyLyr:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)
(*Visu Property*)

TYPE
	tyUIProperty : 	STRUCT 
		tyVisu : tyVisu;
		tyKeypad : tyKeypad;
		tyUITxtSnippets : tyTxtSnippets := (sUsrMgmtUsrLv1Nm:='Level 1',sUsrMgmtUsrLv2Nm:='Level 2',sUsrMgmtUsrLv3Nm:='Level 3');
	END_STRUCT;
END_TYPE
