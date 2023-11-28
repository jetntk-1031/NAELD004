(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_UIStat	:= ADR(eStat);
	p_UIStatus	:= ADR(eStatus);
	p_UIStatTxt	:= ADR(sStatTxt);

	//Alarm
	
	//Output
	p_UIStartupAct 					:= ADR(eStartupAct);
	p_UISimuAct						:= ADR(eSimuAct);
	p_UIHWInfoAct 					:= ADR(eHWInfoAct);
	p_UITLBuzAct 					:= ADR(eTLBuzAct);
	p_UIRstErrAct 					:= ADR(eRstErrAct);
	p_UIProdRcpAct 					:= ADR(eProdRcpAct);
	p_UIMpProdRcpAct				:= ADR(eMpProdRcpAct);
	p_UIMagRcpAct 					:= ADR(eMagRcpAct);
	p_UIMagRcpAct1 					:= ADR(eMagRcpAct1);
	p_UIMcParamAct 					:= ADR(eMcParamAct);
	p_UIUsrMgmtAct 					:= ADR(eUsrMgmtAct);
	p_UIBuffer1Act 					:= ADR(eBuffer1Act);
	p_UIBuffer2Act 					:= ADR(eBuffer2Act);
	p_UIBuffer3Act 					:= ADR(eBuffer3Act);
	p_UIBuffer4Act 					:= ADR(eBuffer4Act);
	p_UIDSSMEMAAAct 				:= ADR(eDSSMEMAAAct);
	p_UIDSSMEMABAct 				:= ADR(eDSSMEMABAct);
	p_UIInShutterAct 				:= ADR(eInShutterAct);
	p_UIInShutterAct2 				:= ADR(eInShutterAct2);
	p_UIInShutterAct3 				:= ADR(eInShutterAct3);
	p_UIOutShutterAct 				:= ADR(eOutShutterAct);
	p_UIOutShutterAct2 				:= ADR(eOutShutterAct2);
	p_UIPullerAct 					:= ADR(ePullerAct);
	p_UIPullConvAct 				:= ADR(ePullConvAct);
	p_UIMagConvSelClp1Act 			:= ADR(eMagConvSelClp1Act);
	p_UIMagConvSelClp2Act 			:= ADR(eMagConvSelClp2Act);
	p_UIMagConvSelClp3Act 			:= ADR(eMagConvSelClp3Act);
	p_UIMagConvSelClp4Act 			:= ADR(eMagConvSelClp4Act);
	p_UIMagConv2Clp1Act 			:= ADR(eMagConv2Clp1Act);
	p_UIMagConv2Clp2Act 			:= ADR(eMagConv2Clp2Act);
	p_UIMagConv2Clp3Act 			:= ADR(eMagConv2Clp3Act);
	p_UIMagConv2Clp4Act 			:= ADR(eMagConv2Clp4Act);
	p_UIServoPPAct 					:= ADR(eServoPullPusherAct);
	
	p_UIAWPushOrPullerAct 			:= ADR(eAWPushOrPullerAct);
	p_UIAWOpenAct 					:= ADR(eAWOpenAct);
	p_UILifterBtmAct 				:= ADR(eLifterBtmAct);
	p_UITravAct 					:= ADR(eTravAct);
	p_UIDOAct 						:= ADR(eDOAct);
	p_UIHermesAct					:= ADR(eHermesAct);
	p_UILFLeaderAct					:= ADR(eLFLeaderAct);
	p_UIOpsAct						:= ADR(eOpsAct);
	p_UIFrmAct						:= ADR(eFrmAct);
	p_UIMtrPshrAct	 				:= ADR(eMtrPshrAct);
	
	p_UIMcParamWr					:= ADR(tyMcParamWr);	

	p_UIProdRcpInfoIn				:= ADR(tyProdRcpInfoIn);
	p_UIProdRcpSearch				:= ADR(sProdRcpSearch);
	p_UIProdRcpScan					:= ADR(sProdRcpScan);
	p_UIProdRcpCurrRcpWr			:= ADR(tyProdRcpCurrRcpWr);
	
	p_UIMagRcpInfoIn				:= ADR(tyMagRcpInfoIn);
	p_UIMagRcpSearch				:= ADR(sMagRcpSearch);
	p_UIMagRcpCurrRcpWr				:= ADR(tyMagRcpCurrRcpWr);
	
	p_UIMagRcpInfoIn1				:= ADR(tyMagRcpInfoIn1);
	p_UIMagRcpSearch1				:= ADR(sMagRcpSearch1);
	p_UIMagRcpCurrRcpWr1			:= ADR(tyMagRcpCurrRcpWr1);
	
	p_UIUsrMgmtInfoIn				:= ADR(tyUsrMgmtInfoIn);
	p_UIUsrMgmtAccessRightLvl1Wr	:= ADR(tyUsrMgmtAccessRightLvl1Wr);
	p_UIUsrMgmtAccessRightLvl2Wr	:= ADR(tyUsrMgmtAccessRightLvl2Wr);
	p_UIUsrMgmtAccessRightLvl3Wr	:= ADR(tyUsrMgmtAccessRightLvl3Wr);
	
	p_UIHermesDSParamWr				:= ADR(a_tyHermesDSParamWr);
	
	P_UISectionLdr					:= ADR(tyP1022McSetVComm.tyLF.tyBtnSectionLdr.bValue);
	
	p_UISetIPAddr					:= ADR(sSetIPAddr);
	p_UISetSubnetMask				:= ADR(sSetSubnetMask);
	p_UINetworkMode					:= ADR(usiNetworkModeSelected);
	
	p_UIMnlMod						:= ADR(bManualMod);
	p_UIUIMnlMod					:= ADR(bUIManualMod);
	p_UIMuteBuz						:= ADR(bMuteBuz);
	p_UISimuMod						:= ADR(usiSimuMod);
	p_UINtWr						:= ADR(eNtWr);	

	p_UIMnlMtrPshrRetSpd			:= ADR(diMnlMtrPshrExtSpd);
	p_UIMnlMtrPshrRetTorq			:= ADR(diMnlMtrPshrExtTorq);
	
	p_UIMnlAWPushOrPullerGoWidth	:= ADR(diMnlAWPushOrPullerGoWidth);
	p_UIMnlAWPushOrPullerNomSpd		:= ADR(diMnlAWPushOrPullerNomSpd);
	p_UIMnlAWPushOrPullerTargetPos	:= ADR(diMnlAWPushOrPullerTargetPos);
	p_UIMnlAWPushOrPullerStepSize	:= ADR(diMnlAWPushOrPullerStepSize);
	p_UIMnlAWPushOrPullerJogSpd		:= ADR(diMnlAWPushOrPullerJogSpd);
	
	p_UIMnlAWGoWidth				:= ADR(diMnlAWGoWidth);
	p_UIMnlAWNomSpd					:= ADR(diMnlAWNomSpd);
	p_UIMnlAWTargetPos				:= ADR(diMnlAWTargetPos);
	p_UIMnlAWStepSize				:= ADR(diMnlAWStepSize);
	p_UIMnlAWJogSpd					:= ADR(diMnlAWJogSpd);
	
	p_UIMnlLifterBtmGoSlt1Pos		:= ADR(diMnlLifterGoSlt1Pos);
	p_UIMnlLifterBtmMag1GoSlt		:= ADR(diMnlLifterMag1GoSlt);
	p_UIMnlLifterBtmMag2GoSlt		:= ADR(diMnlLifterMag2GoSlt);
	p_UIMnlLifterBtmMag3GoSlt		:= ADR(diMnlLifterMag3GoSlt);
	p_UIMnlLifterBtmMag4GoSlt		:= ADR(diMnlLifterMag4GoSlt);
	p_UIMnlLifterBtmNomSpd			:= ADR(diMnlLifterNomSpd);
	p_UIMnlLifterBtmTargetPos		:= ADR(diMnlLifterTargetPos);
	p_UIMnlLifterBtmStepSize		:= ADR(diMnlLifterStepSize);
	p_UIMnlLifterBtmJogSpd			:= ADR(diMnlLifterJogSpd);
	
	p_UIMnlTravNomSpd				:= ADR(diMnlTravNomSpd);
	p_UIMnlTravTargetPos			:= ADR(diMnlTravTargetPos);
	p_UIMnlTravStepSize				:= ADR(diMnlTravStepSize);
	p_UIMnlTravJogSpd				:= ADR(diMnlTravJogSpd);
	
	p_UIVSMEMADSEnA					:= ADR(bVSMEMADSAEn);
	p_UIVSMEMADSEnB					:= ADR(bVSMEMADSBEn);
	p_UIVSMEMADSBA					:= ADR(bVSMEMADSBA);
	p_UIVSMEMADSBB					:= ADR(bVSMEMADSBB);
	
	p_UILeaderRun					:= ADR(bLeaderRun);
	
	p_UIProdAccData					:= ADR(bProdAccData);
	
	p_UIOpsBypsInitConv				:= ADR(bOpsBypsInitConv);
	
	p_UIAIVCommReconnect			:= ADR(bAIVCommReconnect);
	
	p_UINewMag1						:= ADR(bNewMag1);
	p_UINewMag2						:= ADR(bNewMag2);
	p_UINewMag3						:= ADR(bNewMag3);
	p_UINewMag4						:= ADR(bNewMag4);
	p_UIRlsMag1						:= ADR(bRlsMag1);
	p_UIRlsMag2						:= ADR(bRlsMag2);
	p_UIRlsMag3						:= ADR(bRlsMag3);
	p_UIRlsMag4						:= ADR(bRlsMag4);
	p_UIEjectMag1					:= ADR(bEjectMag1);
	p_UIEjectMag2					:= ADR(bEjectMag2);
	p_UIEjectMag3					:= ADR(bEjectMag3);
	p_UIP800Press1					:= ADR(tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetEmpty.bValue);
	p_UIP800Press2					:= ADR(tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetEmpty.bValue);
	p_UIP800Press3					:= ADR(tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetEmpty.bValue);

	p_UIAGVSimulateSig		:= ADR(tyAGVSimulateSig);
	p_UIAGVSimulateOnline 	:= ADR(bAGVSimulateOnline);
	p_UIAGVSimulationOn 	:= ADR(bAGVSimulationOn);
	
	p_UIMismatchOverWriteConfig		:= ADR(bMismatchOverWriteConfig);
	p_UITempAddrFillDone			:= ADR(bTempAddrFillDone);
	p_UIIPConfigChgDone				:= ADR(bIPConfigChgDone);
	p_UIOverwriteIP					:= ADR(bOverwriteIP);
	p_UIOverwriteSubnet				:= ADR(bOverwriteSubnet);
	p_UIOverwriteEthMode			:= ADR(bOverwriteEthMode);
	
	p_UITeachServo					:= ADR(bTeachServo);
	
	p_UISOTSimulationSig1 := ADR(tySOTSimulateSig1);
	p_UISOTSimulationSig2 := ADR(tySOTSimulateSig2);
	p_UISOTSimulationSig3 := ADR(tySOTSimulateSig3);
	p_UISOTSimulationSig4 := ADR(tySOTSimulateSig4);
	
	//AIV Comm
	p_UISOTMagErr1		:= ADR(bSOTMagErr1);
	p_UISOTMagErr2		:= ADR(bSOTMagErr2);
	p_UISOTMagErr3		:= ADR(bSOTMagErr3);
	p_UISOTMagErr4		:= ADR(bSOTMagErr4);
	p_UISOTMagRdy1		:= ADR(bSOTMagRdy1);
	p_UISOTMagRdy2		:= ADR(bSOTMagRdy2);
	p_UISOTMagRdy3		:= ADR(bSOTMagRdy3);
	p_UISOTMagRdy4		:= ADR(bSOTMagRdy4);
	p_UISOTMagAvail1	:= ADR(bSOTMagAvail1);
	p_UISOTMagAvail2	:= ADR(bSOTMagAvail2);
	p_UISOTMagAvail3	:= ADR(bSOTMagAvail3);
	p_UISOTMagAvail4	:= ADR(bSOTMagAvail4);
	p_UISOTMagSLarge1	:= ADR(bSOTMagSLarge1);
	p_UISOTMagSLarge2	:= ADR(bSOTMagSLarge2);
	p_UISOTMagSLarge3	:= ADR(bSOTMagSLarge3);
	p_UISOTMagSLarge4	:= ADR(bSOTMagSLarge4);
	
	p_UIAIVReqBring1	:= ADR(bAIVReqBring1);
	p_UIAIVReqBring2	:= ADR(bAIVReqBring2);
	p_UIAIVReqBring3	:= ADR(bAIVReqBring3);
	p_UIAIVReqBring4	:= ADR(bAIVReqBring4);
	p_UIAIVReqGet1		:= ADR(bAIVReqGet1);
	p_UIAIVReqGet2		:= ADR(bAIVReqGet2);
	p_UIAIVReqGet3		:= ADR(bAIVReqGet3);
	p_UIAIVReqGet4		:= ADR(bAIVReqGet4);
	
	p_UIUSBRdrAct		:= ADR(eUSBRdrAct);
	p_UIUSBRun			:= ADR(bUSBRun);
	p_UIResetButton     := ADR(bResetButton);
	
	p_UIMag1SafetyBarAct:= ADR(eMag1SafetyBarAct);
	p_UIMag2SafetyBarAct:= ADR(eMag2SafetyBarAct);
	p_UIMag3SafetyBarAct:= ADR(eMag3SafetyBarAct);
	
	p_UIUnloadMag					:= ADR(bUnloadMag);
	p_UIBrdOutCntr 		:= ADR(uiBrdOutCntr); //for LMC opcUA 
	p_UIBlkTravLif		:= ADR(bBlkOpsTravLif);
	
	p_UIMnlAWGoWidth		:= ADR(diMnlAWGoWidth);
	p_UIMnlAWNomSpd			:= ADR(diMnlAWNomSpd);
	p_UIMnlAWTargetPos		:= ADR(diMnlAWTargetPos);
	p_UIMnlAWStepSize		:= ADR(diMnlAWStepSize);
	p_UIMnlAWJogSpd			:= ADR(diMnlAWJogSpd);
	
	p_UIMnlPPNomSpd				:= ADR(diMnlPPNomSpd);
	p_UIMnlPPTargetPos			:= ADR(diMnlPPTargetPos);
	p_UIMnlPPStepSize			:= ADR(diMnlPPStepSize);
	p_UIMnlPPJogSpd				:= ADR(diMnlPPJogSpd);
	
	p_UISafetyCurtainReset		:= ADR(bSafetyCurtainReset);
	p_UIMnlBypCurtainPBLED		:= ADR(bBypCurtainPBLED);
	p_UIMnlBypCurtainSen		:= ADR(bBypCurtainSen);
	p_UIMachineSafetySigToDS 	:= ADR(bMachineSafetySigToDS);
	
	//new for Hermes 1.3
	p_UIHermesSvyParamWr			:= ADR(tyHermesSvyParamWr); 
	p_UIQueryBoardInfo				:= ADR(bQueryBoardInfo);
	p_UIQueryWorkOrderInfo			:= ADR(bQueryWorkOrderInfo);
	p_UISaveHMIConfigure            := ADR(bSaveHMIConfigure);
	p_UISaveHMISvyConfig            := ADR(bSaveHMISvyConfig);
	p_UITopBarcode                  := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringTopBarcode.sValue);
	p_UIBottomBarcode               := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringBottomBarcode.sValue);
	p_UIMagazineId                  := ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazineSlotId              := ADR(iSlotId);
	p_UIPCBBarcode                  := ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	p_UISkipWorkOrder		    	:= ADR(bSkipWorkOrder);
	p_UIReadWorkOrder		    	:= ADR(bReadWorkOrder);
	p_UIDeleteWorkOrder		    	:= ADR(bDeleteWorkOrder);
	//Horizontal comm
	p_UIHCommModChg					:= ADR(bHCommModChg);
	
	p_UITrolleyLckAct1				:= ADR(eTrolleyLckAct1);
	p_UITrolleyLckAct2				:= ADR(eTrolleyLckAct2);
	p_UITrolleyUnlck1				:= ADR(tyP0200OpsGen.tyOps.tyBtnTrolleyUnlck1.bValue);
	p_UITrolleyUnlck2				:= ADR(tyP0200OpsGen.tyOps.tyBtnTrolleyUnlck2.bValue);

	
	//Add
	p_UISetHMIIPAddr				:= ADR(sSetHMIIPAddr);
	p_UIUpdtHMIIPAddr				:= ADR(bUpdtHMIIPAddr);
END_PROGRAM