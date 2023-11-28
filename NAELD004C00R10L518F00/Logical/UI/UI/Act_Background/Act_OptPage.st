
ACTION Act_OptPage:
	
	//Prevent Screen Saver Interupt Program
	IF tyProperty.tyVisu.uiCurrPage <> 0 THEN
		eCurrPage := tyProperty.tyVisu.uiCurrPage;
	ELSE
		Act_OptP0000McStatus;
		Act_OptP0000RunningNm;
		Act_OptP0000StatDisp;
	END_IF
	
	Act_OptP0000DisableSSaver;
	Act_OptP0000TouchTimer;			//Auto Logout
	Act_OptP0000Hermes; //new for Hermes 1.3
	Act_OptP0002ToP1081UnlockCoverPB; 

	IF (tyProperty.tyVisu.uiChgPage = 65535) AND (usiChgPage = 0) THEN
		
		Act_OptC0005GoHomeCtrl;
		Act_OptC0005ShowNotif;
		Act_OptC0005AutoCtrl;
		Act_OptC0005RstErr;
		Act_OptC0005StatBarCtrl;
		Act_OptC0005Buzzer;
		Act_OptC0005ChgPage;
		Act_OptC0007Notif;
		Act_OptC0009Info;
		
		Act_OptP0202InsertRmvMag;
		Act_OptP0203InsertRmvMag;
		Act_OptP0204InsertRmvMag;
		Act_OptP0200WorkOrderToLMC;
	
		
		CASE eCurrPage OF
			
			UIP0001Startup:
				Act_OptP0001Startup;
				
			UIP0100Login:
				Act_OptP0100Keypad;
				Act_OptP0100NomLogin;	
				Act_OptP0100BypassLogin;
				Act_OptP0100Logout;
				
			UIP0200OpsGen:
				Act_OptP0200ChgPage;
				Act_OptP0200UpdtDat;
				Act_OptP0200VSMEMA;
				Act_OptP0200RcyMsg;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0202RstMnl;
				Act_OptP0203RstMnl;
				Act_OptP0204RstMnl;
				Act_OptP0200BarCodeScannerAndOthers;     
				Act_OptP0200BarCodeChgRcp;  
				Act_OptP0200Keypad;
				
			UIP0201OpsTravLifter:
				Act_OptP0201Navi;
				Act_OptP0201UpdtDat;
				Act_OptP0201IOMonitor;
				Act_OptP0201ChgParam;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0201CurrWorkOrderInfo; //new for Hermes 1.3
				Act_OptP0201QueryWorkOrderInfo; //new for Hermes 1.3
				Act_OptP0201QueryBoardInfo;//new for Hermes 1.3
				Act_OptP0201BarcodeScanner;//new for Hermes 1.3

			UIP0202OpsMag1:
				Act_OptP0202Navi;
				Act_OptP0202UpdtDat;
				Act_OptP0202IOMonitor;
				Act_OptP0202ChgPage;
				Act_OptP0202_P0003AIVDat;
				Act_OptP0202ChgParam;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0202ToP0204_P0003UnloadMag;
				
			UIP0203OpsMag2:
				Act_OptP0203Navi;
				Act_OptP0203UpdtDat;
				Act_OptP0203IOMonitor;
				Act_OptP0203ChgPage;
				Act_OptP0203_P0003AIVDat;
				Act_OptP0203ChgParam;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0202ToP0204_P0003UnloadMag;
				
			UIP0204OpsMag3:
				Act_OptP0204Navi;
				Act_OptP0204UpdtDat;
				Act_OptP0204IOMonitor;
				Act_OptP0204ChgPage;
				Act_OptP0204_P0003AIVDat;
				Act_OptP0204ChgParam;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0202ToP0204_P0003UnloadMag;
				
			UIP0205OpsAIV:
				Act_OptP0205Navi;
				Act_OptP0205IOMonitor;
			
			UIP0206OpsMag4:
				Act_OptP0206Navi;
				Act_OptP0206UpdtDat;
				Act_OptP0206IOMonitor;
				Act_OptP0206ChgPage;
				Act_OptP0206_P0003AIVDat;
				Act_OptP0206ChgParam;
				Act_OptP0200ToP0204_P0003AccDat;
				Act_OptP0200ToP0204BypsInitConv;
				Act_OptP0202ToP0204_P0003UnloadMag;
				
			UIP0300McInfo:
				
			UIP0400ProdSel:
				Act_OptP0400Search;
				Act_OptP0400Load;
				Act_OptP0400Preview;
				Act_OptP0400Table;
				Act_OptP0400Keypad;
				Act_OptP0400Mask;
				Act_OptP0400Sort;
				Act_OptP0400RcpPopUp;
				
			UIP0410MagSel:
				Act_OptP0410Navi;
				Act_OptP0410Load;
				Act_OptP0410Preview;
				Act_OptP0410Table;
				Act_OptP0410Mask;
				Act_OptP0410Sort;
				
			UIP0600Alm:
				Act_OptP0600Alm;
				Act_OptP0600RcyMsg;
				
			UIP0700LFCtrl:
				Act_OptP0700LFLeaderCtrl;
				Act_OptP0700Mask;
				Act_OptP0700Table;
				
			UIP0800MagInfo:
				Act_OptP0800Navi;
				Act_OptP0800Table1;
				Act_OptP0800Mag1Updt;
				Act_OptP0800Table2;
				Act_OptP0800Mag2Updt;
				Act_OptP0800Table3;
				Act_OptP0800Mag3Updt;
				Act_OptP0800Table4;
				Act_OptP0800Mag4Updt;
				
			UIP0002Menu,UIP0003MMenu, UIP0900GenIn, UIP0910GenOut, UIP0920MtrNPneuCtrl, UIP0921Shutter, UIP0923SafetyBar, UIP0924TrolleyLck, UIP0930MagConv1, UIP0931MagConv2, UIP0932MagConv3, UIP0933PullConv, UIP0934AW, UIP0935Lifter, UIP0936Trav, UIP0937AWPushOrPuller, UIP0939MagConv4, UIP0940CommCtrl:
				IF eCurrPage = UIP0002Menu THEN	
					Act_OptP0002Mask;
					Act_OptP0002ChgPage;
					Act_OptP0002MsgGuide;
					Act_OptP0002UpdtData;
				END_IF
				
				IF eCurrPage =  UIP0003MMenu THEN
					Act_OptP0003UpdtStat;
					Act_OptP0200ToP0204_P0003AccDat;
					Act_OptP0202ToP0204_P0003UnloadMag;
					Act_OptP0202_P0003AIVDat;
					Act_OptP0203_P0003AIVDat;
					Act_OptP0204_P0003AIVDat;
					Act_OptP0206_P0003AIVDat;
				END_IF
				
				Act_OptP0002ManualCtrl;
				Act_OptP0910RstMnl;
				Act_OptP0921RstMnl;
				Act_OptP0923RstMnl;
				Act_OptP0924RstMnl;
				Act_OptP0930RstMnl;
				Act_OptP0931RstMnl;
				Act_OptP0932RstMnl;
				Act_OptP0933RstMnl;
				Act_OptP0934RstMnl;
				Act_OptP0935RstMnl;
				Act_OptP0936RstMnl;
				Act_OptP0937RstMnl;
				Act_OptP0939RstMnl;
				Act_OptP0940RstMnl;
				Act_OptP0950RstMnl;
				Act_OptP0202RstMnl;
				Act_OptP0203RstMnl;
				Act_OptP0204RstMnl;
				Act_OptP0205RstMnl;
				Act_OptP0206RstMnl;
				
				IF bUIManualMod = TRUE THEN
					
					//General Input
					Act_OptP0900ReadDI;
					
					//General Output
					Act_OptP0910WriteDO;
	
					//MtrNPneuCtrl
					Act_OptP0920FullMask;
					Act_OptP0920ChgPage;
				
					//Inlet & Outlet Shutter
					Act_OptP0921DualMask;
					Act_OptP0921Navi;
					Act_OptP0921InletShutterChgLyr; //inlet shutter
					Act_OptP0921InletShutterSen;
					Act_OptP0921InletShutterFB;
					Act_OptP0921InletShutterFBStat;
					Act_OptP0921InletShutterDC;
					Act_OptP0921InletShutterChgLyr2;
					Act_OptP0921InletShutterSen2;
					Act_OptP0921InletShutterFB2;
					Act_OptP0921InletShutterFBStat2;
					Act_OptP0921InletShutterDC2;
					Act_OptP0921InletShutterChgLyr3;
					Act_OptP0921InletShutterSen3;
					Act_OptP0921InletShutterFB3;
					Act_OptP0921InletShutterFBStat3;
					Act_OptP0921InletShutterDC3;
					Act_OptP0921OutletShutterChgLyr; //outlet shutter
					Act_OptP0921OutletShutterSen;
					Act_OptP0921OutletShutterFB;
					Act_OptP0921OutletShutterFBStat;
					Act_OptP0921OutletShutterDC;
					Act_OptP0921OutletShutterChgLyr2; 
					Act_OptP0921OutletShutterSen2;
					Act_OptP0921OutletShutterFB2;
					Act_OptP0921OutletShutterFBStat2;
					Act_OptP0921OutletShutterDC2;
					
					//Safety Bar
					Act_OptP0923DualMask;
					Act_OptP0923Navi;
					Act_OptP0923Mag1SafetyBarChgLyr;
					Act_OptP0923Mag1SafetyBarSen;
					Act_OptP0923Mag1SafetyBarFB;
					Act_OptP0923Mag1SafetyBarFBStat;
					Act_OptP0923Mag1SafetyBarDC;
					Act_OptP0923Mag2SafetyBarChgLyr;
					Act_OptP0923Mag2SafetyBarSen;
					Act_OptP0923Mag2SafetyBarFB;
					Act_OptP0923Mag2SafetyBarFBStat;
					Act_OptP0923Mag2SafetyBarDC;
					Act_OptP0923Mag3SafetyBarChgLyr;
					Act_OptP0923Mag3SafetyBarSen;
					Act_OptP0923Mag3SafetyBarFB;
					Act_OptP0923Mag3SafetyBarFBStat;
					Act_OptP0923Mag3SafetyBarDC;
					
					//Trolley lock
					Act_OptP0924FullMask;
					Act_OptP0924Navi;
					Act_OptP0924TrolleyLckChgLyr;
					Act_OptP0924TrolleyLckSen;
					Act_OptP0924TrolleyLckFB;
					Act_OptP0924TrolleyLckFBStat;
					Act_OptP0924TrolleyLckDC;
					
					//Magazine Conveyor 1
					Act_OptP0930FullMask;
					Act_OptP0930Navi;
					Act_OptP0930MagConv1ChgLyr;
					Act_OptP0930MagConv1Sen;
					Act_OptP0930MagConv1FB;
					Act_OptP0930MagConv1FBStat;
					Act_OptP0930MagConv1DC;
					
					//Magazine Conveyor 2
					Act_OptP0931FullMask;
					Act_OptP0931Navi;
					Act_OptP0931MagConv2ChgLyr;
					Act_OptP0931MagConv2Sen;
					Act_OptP0931MagConv2FB;
					Act_OptP0931MagConv2FBStat;
					Act_OptP0931MagConv2DC;
					
					//Magazine Conveyor 3
					Act_OptP0932FullMask;
					Act_OptP0932Navi;
					Act_OptP0932MagConv3ChgLyr;
					Act_OptP0932MagConv3Sen;
					Act_OptP0932MagConv3FB;
					Act_OptP0932MagConv3FBStat;
					Act_OptP0932MagConv3DC;
					
					//Puller Conveyor
					Act_OptP0933FullMask;
					Act_OptP0933Navi;
					Act_OptP0933PullerConvChgLyr;
					Act_OptP0933PullerConvSen;
					Act_OptP0933PullerConvFB;
					Act_OptP0933PullerConvFBStat;
					Act_OptP0933PullerConvDC;
					Act_OptP0933Keypad;
					//AutoWidth
					Act_OptP0934FullMask;
					Act_OptP0934Navi;
					Act_OptP0934FBCtrl;
					Act_OptP0934FBStat;
					Act_OptP0934Mask;
					Act_OptP0934UpdtDat;	
					Act_OptP0934Keypad;
					
					//Lifter
					Act_OptP0935FullMask;
					Act_OptP0935Navi;
					Act_OptP0935FBCtrl;
					Act_OptP0935FBStat;
					Act_OptP0935Mask;
					Act_OptP0935UpdtDat;	
					Act_OptP0935Keypad;
					
					//Traverser
					Act_OptP0936FullMask;
					Act_OptP0936Navi;
					Act_OptP0936FBCtrl;
					Act_OptP0936FBStat;
					Act_OptP0936Mask;
					Act_OptP0936UpdtDat;	
					Act_OptP0936Keypad;
					
					//Pusher Or Puller Auto Width
					Act_OptP0937FullMask;
					Act_OptP0937Navi;
					Act_OptP0937FBCtrl;
					Act_OptP0937FBStat;
					Act_OptP0937Mask;
					Act_OptP0937UpdtDat;	
					Act_OptP0937Keypad;
					
					//Magazine Conveyor 4
					Act_OptP0939FullMask;
					Act_OptP0939Navi;
					Act_OptP0939MagConv4ChgLyr;
					Act_OptP0939MagConv4Sen;
					Act_OptP0939MagConv4FB;
					Act_OptP0939MagConv4FBStat;
					Act_OptP0939MagConv4DC;
					
					//Communication
					Act_OptP0940FullMask;
					Act_OptP0940ReadDI;
					Act_OptP0940WriteDO;
					
				END_IF
				
			UIP0950Simu:
				Act_OptP0950Ctrl;
				Act_OptP0950SimuMod;
			
				
			UIP1000Lang:
				Act_OptP1000SelectLang;
				Act_OptP1000Keypad;
				
			UIP1020McSetNavi:
				Act_OptP1020Navi;
				
			UIP1021McSetGen:
				Act_OptP1021Navi;
				Act_OptP1021Save;
				Act_OptP1021Keypad;
				Act_OptP1021Teach;
				Act_OptP1021IPAddr;
				Act_OptP1021SubnetMask;
				Act_OptP1021HMIIPAddr;
				Act_OptP1021DHCPSetting;
				
			UIP1022McSetVComm:
				Act_OptP1022Navi;
				Act_OptP1022Save;
				Act_OptP1022DisLF;
				Act_OptP1022Keypad; //new for Hermes 1.3

			UIP1023McSetHComm:
				Act_OptP1023Navi;
				Act_OptP1023ShowLyr;
				Act_OptP1023Save;
				Act_OptP1023DSSel;		
				Act_OptP1023Keypad;
				
			UIP1024McSetAntiGap:
				Act_OptP1024Navi;
				Act_OptP1024Save;
				Act_OptP1024Keypad;
				
//			UIP1025McSetAIVComm:
//				Act_OptP1025Navi;
//				Act_OptP1025Save;
//				Act_OptP1025Keypad;
				
			UIP1026McSetTeach:
				Act_OptP1026Navi;
				Act_OptP1026FullMask;
				Act_OptP1026Mnl;
				
				//Traverser
				Act_OptP1026TravTeach;
				Act_OptP1026TravFBCtrl;
				Act_OptP1026TravFBStat;
				Act_OptP1026TravMask;
				Act_OptP1026TravUpdtDat;
				Act_OptP1026TravKeypad;
				Act_OptP1026TravRstMnl;
				
				//Lifter
				Act_OptP1026LifterTeach;
				Act_OptP1026LifterFBCtrl;
				Act_OptP1026LifterFBStat;
				Act_OptP1026LifterMask;
				Act_OptP1026LifterUpdtDat;
				Act_OptP1026LifterKeypad;
				Act_OptP1026LifterRstMnl;
			
			UIP1027McSetUSBSet:
				Act_OptP1027Navi;
				Act_OptP1027Save;
				Act_OptP1027Keypad;	
			
			UIP1028McSetRS232Set:
				Act_OptP1028Navi;
				Act_OptP1028Save;
				Act_OptP1028Keypad;
				
			UIP1030MagSet:
				Act_OptP1030Mask;
				Act_OptP1030Save;
				Act_OptP1030Del;
				Act_OptP1030Table;
				Act_OptP1030LoadData;
				Act_OptP1030Keypad;
				Act_OptP1030Teach;
				Act_OptP1030Sort;
				
			UIP1031MagSetTeach:
				Act_OptP1031Navi;
				Act_OptP1031FullMask;
				Act_OptP1031Mnl;
				
				//Traverser
				Act_OptP1031TravTeach;
				Act_OptP1031TravFBCtrl;
				Act_OptP1031TravFBStat;
				Act_OptP1031TravMask;
				Act_OptP1031TravUpdtDat;
				Act_OptP1031TravKeypad;
				Act_OptP1031TravRstMnl;
				
				//Lifter
				Act_OptP1031LifterTeach;
				Act_OptP1031LifterFBCtrl;
				Act_OptP1031LifterFBStat;
				Act_OptP1031LifterMask;
				Act_OptP1031LifterUpdtDat;
				Act_OptP1031LifterKeypad;
				Act_OptP1031LifterRstMnl;
				
			UIP1040ProdSet:
				Act_OptP1040Mask;
				Act_OptP1040Save;
				Act_OptP1040Del;
				Act_OptP1040Table;
				Act_OptP1040LoadData;
				Act_OptP1040Search;
				Act_OptP1040Keypad;
				Act_OptP1040Limit;
				Act_OptP1040ToXML;
				Act_OptP1040FromXML;
				Act_OptP1040Sort;
				Act_OptP1040RcpPopUp;
				
			UIP1050LFSet:
				Act_OptP1050Keypad;
				Act_OptP1050Edit;
				Act_OptP1050Online;
				Act_OptP1050Offline;
				Act_OptP1050Delete;	
				Act_OptP1050ShftUp;
				Act_OptP1050ShftDwn;	
				Act_OptP1050Mask;
				Act_OptP1050Table;	
				Act_OptP1050Oven;
				
			UIP1080UsrMgmt:
				Act_OptP1080Keypad;
				Act_OptP1080AddUsr;		
				Act_OptP1080DelUsr;		
				Act_OptP1080EditUsr;
				Act_OptP1080EditAccess;
				Act_OptP1080Table;
				
			UIP1081UsrMgmtUsrAccessRgt:
				Act_OptP1081Navi;
				Act_OptP1081Save;
				Act_OptP1081Load;
				Act_OptP1081Keypad;
			
		END_CASE
		
	END_IF
	
END_ACTION
