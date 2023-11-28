(** 2019-01-07 **)
ACTION Act_Link:
	
	IF EDGEPOS(p_tyLinkUSSMEMA1AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA1AlmData.sProgNm	:= 'Mag1_1';
		p_tyLinkUSSMEMA1AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkUSSMEMA2AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA2AlmData.sProgNm	:= 'Mag2_1';
		p_tyLinkUSSMEMA2AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkUSSMEMA3AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA3AlmData.sProgNm	:= 'Mag3_1';
		p_tyLinkUSSMEMA3AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA1AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA1AlmData.sProgNm	:= 'Mag1_2';
		p_tyLinkDSSMEMA1AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA2AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA2AlmData.sProgNm	:= 'Mag2_2';
		p_tyLinkDSSMEMA2AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA3AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA3AlmData.sProgNm	:= 'Mag3_2';
		p_tyLinkDSSMEMA3AlmData.sAlmMsg	:= 'Pulling Board Failed';
	END_IF
	
	//Index 1 For Internal Use
	
	pa_tyAlmData[2]		:= p_tyLinkUsrFolderAlmData;
	pa_tyAlmData[3]		:= p_tyLinkLibVerAlmData;
	pa_tyAlmData[4]		:= p_tyLinkTimeAlmData;
	pa_tyAlmData[5]		:= p_tyLinkTimeAlmData1;
	pa_tyAlmData[6]		:= p_tyLinkHWInfoAlmData;
	pa_tyAlmData[7]		:= p_tyLinkProdRcpAlmData;
	pa_tyAlmData[8]		:= p_tyLinkMpProdRcpAlmData;
	pa_tyAlmData[9]		:= p_tyLinkMagRcpAlmData;
	pa_tyAlmData[10]	:= p_tyLinkMagRcpAlmData1;
	
	pa_tyAlmData[11]	:= p_tyLinkMcParamAlmData;
	pa_tyAlmData[12]	:= p_tyLinkNtParamAlmData;
	pa_tyAlmData[13]	:= p_tyLinkUsrMgmtAlmData;
	pa_tyAlmData[14]	:= p_tyLinkBuffer1AlmData;
	pa_tyAlmData[15]	:= p_tyLinkBuffer2AlmData;
	pa_tyAlmData[16]	:= p_tyLinkBuffer3AlmData;
	pa_tyAlmData[17]	:= p_tyLinkBuffer4AlmData;
	pa_tyAlmData[18]	:= p_tyLinkUSSMEMA1AlmData;
	pa_tyAlmData[19]	:= p_tyLinkUSSMEMA2AlmData;
	pa_tyAlmData[20]	:= p_tyLinkUSSMEMA3AlmData;
	pa_tyAlmData[21]	:= p_tyLinkUSSMEMA4AlmData;
	pa_tyAlmData[22]	:= p_tyLinkDSSMEMA1AlmData;
	pa_tyAlmData[23]	:= p_tyLinkDSSMEMA2AlmData;
	pa_tyAlmData[24]	:= p_tyLinkDSSMEMA3AlmData;
	pa_tyAlmData[25]	:= p_tyLinkDSSMEMA4AlmData;
	
	pa_tyAlmData[26]	:= p_tyLinkDSSMEMAAAlmData;
	pa_tyAlmData[27]	:= p_tyLinkDSSMEMABAlmData;
	pa_tyAlmData[28]	:= p_tyLinkInShutterAlmData;
	pa_tyAlmData[29]	:= p_tyLinkOutShutterAlmData;
	pa_tyAlmData[30]	:= p_tyLinkPullerAlmData;
	pa_tyAlmData[31]	:= p_tyLinkPullConvAlmData;
	pa_tyAlmData[32]	:= p_tyLinkMagConv1AlmData;
	pa_tyAlmData[33]	:= p_tyLinkMagConv2AlmData;
	pa_tyAlmData[34]	:= p_tyLinkMagConv3AlmData;
	pa_tyAlmData[35]	:= p_tyLinkMagConv4AlmData;
	
	pa_tyAlmData[36]	:= p_tyLinkAWOpenAlmData;
	pa_tyAlmData[37]	:= p_tyLinkAWOpenAlmData1;
	pa_tyAlmData[38]	:= p_tyLinkAWOpenAlmData2;
	pa_tyAlmData[39]	:= p_tyLinkAWOpenAlmData3;
	pa_tyAlmData[40]	:= p_tyLinkTravAlmData;
	pa_tyAlmData[41]	:= p_tyLinkTravAlmData1;
	pa_tyAlmData[42]	:= p_tyLinkTravAlmData2;
	pa_tyAlmData[43]	:= p_tyLinkTravAlmData3;
	pa_tyAlmData[44]	:= p_tyLinkLifterBtmAlmData;
	pa_tyAlmData[45]	:= p_tyLinkLifterBtmAlmData1;
	pa_tyAlmData[46]	:= p_tyLinkLifterBtmAlmData2;
	pa_tyAlmData[47]	:= p_tyLinkLifterBtmAlmData3;
	pa_tyAlmData[48]	:= p_tyLinkDIAlmData1;
	pa_tyAlmData[49]	:= p_tyLinkDIAlmData2;
	pa_tyAlmData[50]	:= p_tyLinkDIAlmData3;
	pa_tyAlmData[51]	:= p_tyLinkDIAlmData4;
	
	pa_tyAlmData[52]	:= p_tyLinkAGVMag1AlmData;
	pa_tyAlmData[53]	:= p_tyLinkAGVMag2AlmData;
	pa_tyAlmData[54]	:= p_tyLinkAGVMag3AlmData;
	pa_tyAlmData[55]	:= p_tyLinkAGVMag4AlmData;
	
	pa_tyAlmData[56]	:= p_tyLinkHermesAlmData;
	pa_tyAlmData[57]	:= p_tyLinkDSHermesAAlmData;
	pa_tyAlmData[58]	:= p_tyLinkDSHermesAAlmData1;
	pa_tyAlmData[59]	:= p_tyLinkDSHermesAAlmData2;
	pa_tyAlmData[60]	:= p_tyLinkDSHermesAAlmData3;
	pa_tyAlmData[61]	:= p_tyLinkDSHermesAAlmData4;
	
	pa_tyAlmData[62]	:= p_tyLinkDSHermesBAlmData;
	pa_tyAlmData[63]	:= p_tyLinkDSHermesBAlmData1;
	pa_tyAlmData[64]	:= p_tyLinkDSHermesBAlmData2;
	pa_tyAlmData[65]	:= p_tyLinkDSHermesBAlmData3;
	pa_tyAlmData[66]	:= p_tyLinkDSHermesBAlmData4;
	
	pa_tyAlmData[67]	:= p_tyLinkRmtHermesAlmData;
	pa_tyAlmData[68]	:= p_tyLinkRmtHermesAlmData1;
	pa_tyAlmData[69]	:= p_tyLinkRmtHermesAlmData2;
	pa_tyAlmData[70]	:= p_tyLinkRmtHermesAlmData3;
	pa_tyAlmData[71]	:= p_tyLinkLFLeaderAlmData;
	pa_tyAlmData[72]	:= p_tyLinkLFFollowerAlmData;
	pa_tyAlmData[73]	:= p_tyLinkLFFollowerInfoData;
	pa_tyAlmData[74]	:= p_tyLinkLFFollowerInfoData1;
	pa_tyAlmData[75]	:= p_tyLinkFollower1AlmData;
	pa_tyAlmData[76]	:= p_tyLinkFollower1InfoData;
	pa_tyAlmData[77]	:= p_tyLinkFollower1InfoData1;
	pa_tyAlmData[78]	:= p_tyLinkFollower2AlmData;
	pa_tyAlmData[79]	:= p_tyLinkFollower2InfoData;
	pa_tyAlmData[80]	:= p_tyLinkFollower2InfoData1;
	pa_tyAlmData[81]	:= p_tyLinkLCSMngRcpAlmData;
	pa_tyAlmData[82]	:= p_tyLinkLCSLFAlmData;
	pa_tyAlmData[83]	:= p_tyLinkLCSLFInfoData;
	pa_tyAlmData[84]	:= p_tyLinkOpsTravLifLDAlmData;

	pa_tyAlmData[85]	:= p_tyLinkPPAlmData;
	pa_tyAlmData[86]	:= p_tyLinkPPAlmData1;
	pa_tyAlmData[87]	:= p_tyLinkPPAlmData2;
	pa_tyAlmData[89]	:= p_tyLinkPPAlmData3;
//	pa_tyAlmData[90]	:= p_tyLinkOpsMagLD3AlmData;
//	pa_tyAlmData[91]	:= p_tyLinkOpsMagLD3AlmData1;
//	pa_tyAlmData[92]	:= p_tyLinkOpsMagLD4AlmData;
//	pa_tyAlmData[93]	:= p_tyLinkOpsMagLD4AlmData1;
	pa_tyAlmData[94]	:= p_tyLinkOpsLifMagLDAlmData;
	pa_tyAlmData[95]	:= p_tyLinkOpsLifMagLDAlmData1;
	
	pa_tyAlmData[96]	:= p_tyLinkOpsMagConvLD1AlmData;
	pa_tyAlmData[97]	:= p_tyLinkOpsMagConvLD1AlmData1;
	pa_tyAlmData[98]	:= p_tyLinkOpsMagConvLD2AlmData;
	pa_tyAlmData[99]	:= p_tyLinkOpsMagConvLD2AlmData1;
	pa_tyAlmData[100]	:= p_tyLinkOpsMagConvLD3AlmData;
	pa_tyAlmData[101]	:= p_tyLinkOpsMagConvLD3AlmData1;
	pa_tyAlmData[102]	:= p_tyLinkOpsMagConvLD4AlmData;
	pa_tyAlmData[103]	:= p_tyLinkOpsMagConvLD4AlmData1;
	
	pa_tyAlmData[104]	:= p_tyLinkSelClamp1AlmData;
	pa_tyAlmData[105]	:= p_tyLinkSelClamp2AlmData;
	pa_tyAlmData[106]	:= p_tyLinkSelClamp3AlmData;
	pa_tyAlmData[107]	:= p_tyLinkSelClamp4AlmData;
	
	pa_tyAlmData[108]	:= p_tyLinkUSSOT1AlmData;
	pa_tyAlmData[109]	:= p_tyLinkUSSOT2AlmData;
	pa_tyAlmData[110]	:= p_tyLinkUSSOT3AlmData;
	pa_tyAlmData[111]	:= p_tyLinkUSSOT4AlmData;
	pa_tyAlmData[112]	:= p_tyLinkDSSOT1AlmData;
	pa_tyAlmData[113]	:= p_tyLinkDSSOT2AlmData;
	pa_tyAlmData[114]	:= p_tyLinkDSSOT3AlmData;
	pa_tyAlmData[115]	:= p_tyLinkDSSOT4AlmData;
	
	pa_tyAlmData[116]	:= p_tyLinkMcAlarmData;
	pa_tyAlmData[117]	:= p_tyLinkMc1AlarmData;
	
	pa_tyAlmData[118]	:= p_tyLinkUSBBarcodeAlmData;	
	pa_tyAlmData[119]	:= p_tyLinkUSBBarcodeAlmData1;	
	pa_tyAlmData[120]	:= p_tyLinkUSBBarcodeAlmData2;
	
	pa_tyAlmData[121]	:= p_tyLinkAGVAlmData1;
	pa_tyAlmData[122]	:= p_tyLinkRS232FrmAlmData;
	
	pa_tyAlmData[123]	:= p_tyLinkAWPushOrPullerAlmData;
	pa_tyAlmData[124]	:= p_tyLinkAWPushOrPullerAlmData1;
	pa_tyAlmData[125]	:= p_tyLinkAWPushOrPullerAlmData2;
	pa_tyAlmData[126]	:= p_tyLinkAWPushOrPullerAlmData3;
	pa_tyAlmData[127]	:= p_tyLinkMtrPshrAlmData;
	
	pa_tyAlmData[128]	:= p_tyLinkInShutterAlmData2;
	pa_tyAlmData[129]	:= p_tyLinkInShutterAlmData3;
	
	pa_tyAlmData[130]	:= p_tyLinkDIAlmData5;
	pa_tyAlmData[131]	:= p_tyLinkDIAlmData6;		//JOHN
	
//	pa_tyAlmData[131]	:= p_tyLinkUSHermesInfoData1;//new for Hermes 1.3
//	pa_tyAlmData[132]	:= p_tyLinkUSHermesInfoData2;//new for Hermes 1.3
//	pa_tyAlmData[133]	:= p_tyLinkUSHermesAlmData5;//new for Hermes 1.3
	pa_tyAlmData[134]	:= p_tyLinkRmtHermesInfoData;//new for Hermes 1.3
	pa_tyAlmData[135]	:= p_tyLinkSvyHermesAlmData;//new for Hermes 1.3
	pa_tyAlmData[136]	:= p_tyLinkSvyHermesAlmData1;//new for Hermes 1.3
	pa_tyAlmData[137]	:= p_tyLinkSvyHermesAlmData2;//new for Hermes 1.3
	pa_tyAlmData[138]	:= p_tyLinkSvyHermesAlmData3;//new for Hermes 1.3
	pa_tyAlmData[139]	:= p_tyLinkSvyHermesInfoData;//new for Hermes 1.3
	pa_tyAlmData[140]	:= p_tyLinkSvyHermesInfoData1;//new for Hermes 1.3
	pa_tyAlmData[141]	:= p_tyLinkSvyHermesInfoData2;//new for Hermes 1.3
	pa_tyAlmData[142]	:= p_tyLinkSvyHermesInfoData3;//new for Hermes 1.3
	pa_tyAlmData[143]	:= p_tyLinkSvyHermesAlmData4;//new for Hermes 1.3
	pa_tyAlmData[144]	:= p_tyLinkSvyHermesInfoData4;//new for Hermes 1.3
	
	pa_tyAlmData[145]	:= p_tyLinkAutoRcpAlmData;
	pa_tyAlmData[146]	:= p_tyLinkAutoRcpInfoData;
	pa_tyAlmData[147]	:= p_tyLinkAutoRcpInfoData1;
	pa_tyAlmData[148]	:= p_tyLinkOutShutterAlmData2;
	pa_tyAlmData[149]	:= p_tyLinkTrllyAlmData;
	pa_tyAlmData[150]	:= p_tyLinkTrlly2AlmData;

END_ACTION
