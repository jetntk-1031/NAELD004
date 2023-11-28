(*2018-12-10*)
(**)

TYPE
	ePage : 
		(
		UIP0000SSaver := 0, (*Page Screen Saver*)
		UIP0001Startup := 1, (*Page Startup*)
		UIP0002Menu := 2, (*Page Menu*)
		UIP0003MMenu,
		UIP0100Login := 100, (*Page Login*)
		UIP0200OpsGen := 200, (*Page Operation*)
		UIP0201OpsTravLifter := 201, (*Page Operation Traverser Lifter*)
		UIP0202OpsMag1 := 202, (*Page Operation Magazine 1*)
		UIP0203OpsMag2 := 203, (*Page Operation Magazine 2*)
		UIP0204OpsMag3 := 204, (*Page Operation Magazine 3*)
		UIP0205OpsAIV := 205, (*Page Operation Magazine 3*)
		UIP0206OpsMag4 := 206, (*Page Operation Magazine 3*)
		UIP0300McInfo := 300, (*Page Machine Info*)
		UIP0400ProdSel := 400, (*Page Product Selection*)
		UIP0410MagSel := 410, (*Page Magazine Selection*)
		UIP0600Alm := 600, (*Page Alarm*)
		UIP0700LFCtrl := 700, (*Page Leader Follower Control*)
		UIP0800MagInfo := 800, (*Page Magazine Info*)
		UIP0900GenIn := 900, (*Page General Input*)
		UIP0910GenOut := 910, (*Page General Output*)
		UIP0920MtrNPneuCtrl := 920, (*Page Motor And Pneumatic Control*)
		UIP0921Shutter := 921, (*Page Shutter*)
		UIP0923SafetyBar := 923, (*Page Safety Bar*)
		UIP0924TrolleyLck := 924, (*Page Safety Bar*)
		UIP0930MagConv1 := 930, (*Page Magazine Conveyor 1*)
		UIP0931MagConv2 := 931, (*Page Magazine Conveyor 2*)
		UIP0932MagConv3 := 932, (*Page Magazine Conveyor 3*)
		UIP0933PullConv := 933, (*Page Puller Conveyor*)
		UIP0934AW := 934, (*Page Auto Width*)
		UIP0935Lifter := 935, (*Page Lifter*)
		UIP0936Trav := 936, (*Page Traverser*)
		UIP0937AWPushOrPuller := 937, (*Page Pusher Auto Width*)
		UIP0939MagConv4 := 939, (*Page Magazine Conveyor 3*)
		UIP0940CommCtrl := 940, (*Page Communication Control*)
		UIP0950Simu := 950, (*Page Simulation*)
		UIP1000Lang := 1000, (*Page Language And Setup*)
		UIP1020McSetNavi := 1020, (*Page Machine Setting - Navigation*)
		UIP1021McSetGen := 1021, (*Page Machine Setting - General*)
		UIP1022McSetVComm := 1022, (*Page Machine Setting - Vertical Communication*)
		UIP1023McSetHComm := 1023, (*Page Machine Setting - Horizontal Communication*)
		UIP1024McSetAntiGap := 1024, (*Page Machine Setting - Anti Gap*)
		UIP1025McSetAIVComm := 1025, (*Page Machine Setting - AIV Communication*)
		UIP1026McSetTeach := 1026, (*Page Machine Setting - Teaching*)
		UIP1027McSetUSBSet := 1027, (*Page Machine Setting - USB*)
		UIP1028McSetRS232Set := 1028, (*Page Machine Settings RS232 Settings*)
		UIP1030MagSet := 1030, (*Page Magazine Setting*)
		UIP1031MagSetTeach := 1031, (*Page Magazine Setting - Teaching*)
		UIP1040ProdSet := 1040, (*Page Product Setting*)
		UIP1050LFSet := 1050, (*Page Leader Follower Setup*)
		UIP1080UsrMgmt := 1080, (*Page User Management*)
		UIP1081UsrMgmtUsrAccessRgt := 1081 (*Page User Management - Access Right*)
		);
	tyTable : 	STRUCT 
		bSliderActive : BOOL := FALSE;
		bTableActive : BOOL := FALSE;
		sVisuNm : STRING[80] := 'Visu';
		uiSelectedRow : UINT := 1;
		uiSelectedRowOld : UINT := 1;
		uiTablePos : UINT := 1;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUITagNm : 	STRUCT 
		sWorkOrder : STRING[30];
		uiQuantities : UINT;
		diTotalBrd : DINT;
		sLogMessage : STRING[80];
		bProcess : BOOL;
	END_STRUCT;
END_TYPE
