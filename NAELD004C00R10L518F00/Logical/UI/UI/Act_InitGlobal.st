(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_StartupUIAct;
	
	p_bOpsRun ACCESS p_OpsRun;
	
	p_bStartupRun ACCESS p_StartupRun;
	p_eStartupStat ACCESS p_StartupStat;
	p_eStartupStatus ACCESS p_StartupStatus;
	p_sStartupStatTxt ACCESS p_StartupStatTxt;
	p_eStartupStep ACCESS p_StartupStep;
	p_sStartupStepTxt ACCESS p_StartupStepTxt;
	p_bStartupGetConfigDone ACCESS p_StartupGetConfigDone;
	p_bStartupMismatchSetConfigDone ACCESS p_StartupMismatchSetConfigDone;
	p_bStartupUISettingsLoadDone ACCESS p_StartupUISettingsLoadDone;
	
	p_eHWInfoStat ACCESS p_HWInfoStat;
	p_eHWInfoStatus ACCESS p_HWInfoStatus;
	p_sHWInfoStatTxt ACCESS p_HWInfoStatTxt;
	p_sHWInfoIPAddr ACCESS p_HWInfoIPAddr;
	p_sHWInfoSubnetMask ACCESS p_HWInfoSubnetMask;
	p_udiHWInfoEthMode ACCESS p_HWInfoEthMode;
	
	p_eTLBuzStat ACCESS p_TLBuzStat;
	p_eTLBuzStatus ACCESS p_TLBuzStatus;
	p_sTLBuzStatTxt ACCESS p_TLBuzStatTxt;
	
	p_tyAlarmCurrList ACCESS p_AlarmCurrList;
	p_tyAlarmRcyList ACCESS p_AlarmRecoveryList;
	p_tyAlarmHistoryList ACCESS p_AlarmHistoryList;
	p_bAlarmWarning ACCESS p_AlarmWarning;
	p_bAlarmErr ACCESS p_AlarmErr;
	p_bAlarmInfo ACCESS p_AlarmInfo;
	p_bAlarmInfoLF ACCESS p_AlarmInfoLF;
	p_sAlarmInfoMsg ACCESS p_AlarmInfoMsg;
	
	p_eRstErrStat ACCESS p_RstErrStat;
	p_eRstErrStatus ACCESS p_RstErrStatus;
	p_sRstErrStatTxt ACCESS p_RstErrStatTxt;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat;
	p_eProdRcpStatus ACCESS p_ProdRcpStatus;
	p_sProdRcpStatTxt ACCESS p_ProdRcpStatTxt;
	p_tyProdRcpFilterList ACCESS p_ProdRcpFilterList;
	p_tyProdRcpSortedList ACCESS p_ProdRcpSortedList;
	p_tyProdRcpCurrList	ACCESS p_ProdRcpCurrList;
	p_tyProdRcpCurrRcp0 ACCESS p_ProdRcpCurrRcp0;
	p_tyProdRcpCurrRcp1 ACCESS p_ProdRcpCurrRcp1;
	p_tyProdRcpCurrRcp2 ACCESS p_ProdRcpCurrRcp2;
	p_tyProdRcpInfoOut ACCESS p_ProdRcpInfoOut;
	p_bProdRcpNmEmpty ACCESS p_ProdRcpNmEmpty;
	p_bProdRcpListFull ACCESS p_ProdRcpListFull;
	p_bProdRcpNmNotExist ACCESS p_ProdRcpNmNotExist;
	
	p_eMpProdRcpStat ACCESS p_MpProdRcpStat;
	p_eMpProdRcpStatus ACCESS p_MpProdRcpStatus;
	
	p_eMagRcpStat ACCESS p_MagRcpStat;
	p_eMagRcpStatus ACCESS p_MagRcpStatus;
	p_sMagRcpStatTxt ACCESS p_MagRcpStatTxt;
	p_tyMagRcpFilterList ACCESS p_MagRcpFilterList;
	p_tyMagRcpSortedList ACCESS p_MagRcpSortedList;
	p_tyMagRcpCurrList ACCESS p_MagRcpCurrList;
	p_tyMagRcpInfoOut ACCESS p_MagRcpInfoOut;
	p_tyMagRcpCurrRcp ACCESS p_MagRcpCurrRcp;
	p_bMagRcpNmEmpty ACCESS p_MagRcpNmEmpty;
	p_bMagRcpListFull ACCESS p_MagRcpListFull;
	p_bMagRcpNmNotExist ACCESS p_MagRcpNmNotExist;
	
	p_eMagRcpStat1 ACCESS p_MagRcpStat1;
	p_eMagRcpStatus1 ACCESS p_MagRcpStatus1;
	p_sMagRcpStatTxt1 ACCESS p_MagRcpStatTxt1;
	p_tyMagRcpFilterList1 ACCESS p_MagRcpFilterList1;
	p_tyMagRcpSortedList1 ACCESS p_MagRcpSortedList1;
	p_tyMagRcpCurrList1 ACCESS p_MagRcpCurrList1;
	p_tyMagRcpInfoOut1 ACCESS p_MagRcpInfoOut1;
	p_tyMagRcpCurrRcp1 ACCESS p_MagRcpCurrRcp1;
	p_bMagRcpNmEmpty1 ACCESS p_MagRcpNmEmpty1;
	p_bMagRcpListFull1 ACCESS p_MagRcpListFull1;
	p_bMagRcpNmNotExist1 ACCESS p_MagRcpNmNotExist1;
	p_diMagRcp1TravPos ACCESS p_MagRcpCurrRcpMag1TravPos;
	p_diMagRcp2TravPos ACCESS p_MagRcpCurrRcpMag2TravPos;
	p_diMagRcp3TravPos ACCESS p_MagRcpCurrRcpMag3TravPos;

	p_eMcParamStat ACCESS p_McParamStat;
	p_eMcParamStatus ACCESS p_McParamStatus;
	p_sMcParamStatTxt ACCESS p_McParamStatTxt;
	p_tyMcParamCurr	ACCESS p_McParamCurr;
	
	p_tyNtParamCurr ACCESS p_NtParamCurr;
	
	p_eUsrMgmtStat ACCESS p_UsrMgmtStat;
	p_eUsrMgmtStatus ACCESS p_UsrMgmtStatus;
	p_sUsrMgmtStatTxt ACCESS p_UsrMgmtStatTxt;
	p_tyUsrMgmtCurrUsr ACCESS p_UsrMgmtCurrUsr;
	p_tyUsrMgmtCurrAccessRgt ACCESS p_UsrMgmtCurrAccessRight;
	p_tyUsrMgmtAllList ACCESS p_UsrMgmtAllList;
	p_tyUsrMgmtLv2List ACCESS p_UsrMgmtLvl2List;
	p_tyUsrMgmtLv3List ACCESS p_UsrMgmtLvl3List;
	p_tyUsrMgmtAdminList ACCESS p_UsrMgmtAdminList;
	p_bUsrMgmtNmEmpty ACCESS p_UsrMgmtNmEmpty;
	p_bUsrMgmtListFull ACCESS p_UsrMgmtListFull;
	p_bUsrMgmtNmExist ACCESS p_UsrMgmtNmExist;
	p_bUsrMgmtNmNotExist ACCESS p_UsrMgmtNmNotExist;
	p_bUsrMgmtLastAdmin ACCESS p_UsrMgmtLastAdmin;
	p_bUsrMgmtLoginSuccess ACCESS p_UsrMgmtLoginSuccess;
	p_bUsrMgmtPwMismatch ACCESS p_UsrMgmtPwMismatch;
	p_bUsrMgmtUnableDelete ACCESS p_UsrMgmtUnableDelete;
	p_tyUsrMgmtFullData ACCESS p_UsrMgmtFullData;
	
	p_eBuffer1Stat ACCESS p_Buffer1Stat;
	p_eBuffer1Status ACCESS p_Buffer1Status;
	p_sBuffer1StatTxt ACCESS p_Buffer1StatTxt;
	p_tyBuffer1DispBffr ACCESS p_Buffer1DispBffr;
	p_tyBuffer1BffrStat ACCESS p_Buffer1BffrStat;
	p_bBuffer1MagPresent ACCESS p_Buffer1MagPresent;
	p_bBuffer1MagRemoved ACCESS p_Buffer1MagRemoved;
	
	p_eBuffer2Stat ACCESS p_Buffer2Stat;
	p_eBuffer2Status ACCESS p_Buffer2Status;
	p_sBuffer2StatTxt ACCESS p_Buffer2StatTxt;
	p_tyBuffer2DispBffr ACCESS p_Buffer2DispBffr;
	p_tyBuffer2BffrStat ACCESS p_Buffer2BffrStat;
	p_bBuffer2MagPresent ACCESS p_Buffer2MagPresent;
	p_bBuffer2MagRemoved ACCESS p_Buffer2MagRemoved;
	
	p_eBuffer3Stat ACCESS p_Buffer3Stat;
	p_eBuffer3Status ACCESS p_Buffer3Status;
	p_sBuffer3StatTxt ACCESS p_Buffer3StatTxt;
	p_tyBuffer3DispBffr ACCESS p_Buffer3DispBffr;
	p_tyBuffer3BffrStat ACCESS p_Buffer3BffrStat;
	p_bBuffer3MagPresent ACCESS p_Buffer3MagPresent;
	p_bBuffer3MagRemoved ACCESS p_Buffer3MagRemoved;
	
	p_eBuffer4Stat ACCESS p_Buffer4Stat;
	p_eBuffer4Status ACCESS p_Buffer4Status;
	p_sBuffer4StatTxt ACCESS p_Buffer4StatTxt;
	p_tyBuffer4DispBffr ACCESS p_Buffer4DispBffr;
	p_tyBuffer4BffrStat ACCESS p_Buffer4BffrStat;
	p_bBuffer4MagPresent ACCESS p_Buffer4MagPresent;
	p_bBuffer4MagRemoved ACCESS p_Buffer4MagRemoved;
	
	p_eDSSMEMAAStat ACCESS p_DSSMEMAAStat;
	p_eDSSMEMAAStatus ACCESS p_DSSMEMAAStatus;
	p_sDSSMEMAAStatTxt ACCESS p_DSSMEMAAStatTxt;
	p_bDSSMEMAAUSRdy ACCESS p_DSSMEMAAUSRdy;
	p_bDSSMEMAAUSGdBrdRdy ACCESS p_DSSMEMAAUSGdBrdRdy;
	p_bDSSMEMAADSRdy ACCESS p_DSSMEMAADSRdy;
	
	p_eDSSMEMABStat ACCESS p_DSSMEMABStat;
	p_eDSSMEMABStatus ACCESS p_DSSMEMABStatus;
	p_sDSSMEMABStatTxt ACCESS p_DSSMEMABStatTxt;
	p_bDSSMEMABUSRdy ACCESS p_DSSMEMABUSRdy;
	p_bDSSMEMABUSGdBrdRdy ACCESS p_DSSMEMABUSGdBrdRdy;
	p_bDSSMEMABDSRdy ACCESS p_DSSMEMABDSRdy;
	
	p_eInShutterStat ACCESS p_Pneu2SenInShutterStat;
	p_eInShutterStatus ACCESS p_Pneu2SenInShutterStatus;
	p_sInShutterStatTxt ACCESS p_Pneu2SenInShutterStatTxt;
	p_bInShutterExtCtrl ACCESS p_Pneu2SenInShutterExtCtrl;
	p_bInShutterRetCtrl ACCESS p_Pneu2SenInShutterRetCtrl;
	p_bInShutterTwoCtrlOut ACCESS p_Pneu2SenInShutterTwoCtrlOut;
	p_bInShutterExtended ACCESS p_Pneu2SenInShutterExtended;
	p_bInShutterRetracted ACCESS p_Pneu2SenInShutterRetracted;
		
	p_eInShutterStat2 ACCESS p_Pneu2SenInShutterStat2;
	p_eInShutterStatus2 ACCESS p_Pneu2SenInShutterStatus2;
	p_sInShutterStatTxt2 ACCESS p_Pneu2SenInShutterStatTxt2;
	p_bInShutterExtCtrl2 ACCESS p_Pneu2SenInShutterExtCtrl2;
	p_bInShutterRetCtrl2 ACCESS p_Pneu2SenInShutterRetCtrl2;
	p_bInShutterTwoCtrlOut2 ACCESS p_Pneu2SenInShutterTwoCtrlOut2;
	p_bInShutterExtended2 ACCESS p_Pneu2SenInShutterExtended2;
	p_bInShutterRetracted2 ACCESS p_Pneu2SenInShutterRetracted2;
	
	p_eInShutterStat3 ACCESS p_Pneu2SenInShutterStat3;
	p_eInShutterStatus3 ACCESS p_Pneu2SenInShutterStatus3;
	p_sInShutterStatTxt3 ACCESS p_Pneu2SenInShutterStatTxt3;
	p_bInShutterExtCtrl3 ACCESS p_Pneu2SenInShutterExtCtrl3;
	p_bInShutterRetCtrl3 ACCESS p_Pneu2SenInShutterRetCtrl3;
	p_bInShutterTwoCtrlOut3 ACCESS p_Pneu2SenInShutterTwoCtrlOut3;
	p_bInShutterExtended3 ACCESS p_Pneu2SenInShutterExtended3;
	p_bInShutterRetracted3 ACCESS p_Pneu2SenInShutterRetracted3;

	p_eOutShutterStat ACCESS p_Pneu2SenOutShutterStat;
	p_eOutShutterStatus ACCESS p_Pneu2SenOutShutterStatus;
	p_sOutShutterStatTxt ACCESS p_Pneu2SenOutShutterStatTxt;
	p_bOutShutterExtCtrl ACCESS p_Pneu2SenOutShutterExtCtrl;
	p_bOutShutterRetCtrl ACCESS p_Pneu2SenOutShutterRetCtrl;
	p_bOutShutterTwoCtrlOut ACCESS p_Pneu2SenOutShutterTwoCtrlOut;
	p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended;
	p_bOutShutterRetracted ACCESS p_Pneu2SenOutShutterRetracted;

	p_eOutShutterStat2 ACCESS p_Pneu2SenOutShutterStat2;
	p_eOutShutterStatus2 ACCESS p_Pneu2SenOutShutterStatus2;
	p_sOutShutterStatTxt2 ACCESS p_Pneu2SenOutShutterStatTxt2;
	p_bOutShutterExtCtrl2 ACCESS p_Pneu2SenOutShutterExtCtrl2;
	p_bOutShutterRetCtrl2 ACCESS p_Pneu2SenOutShutterRetCtrl2;
	p_bOutShutterTwoCtrlOut2 ACCESS p_Pneu2SenOutShutterTwoCtrlOut2;
	p_bOutShutterExtended2 ACCESS p_Pneu2SenOutShutterExtended2;
	p_bOutShutterRetracted2 ACCESS p_Pneu2SenOutShutterRetracted2;
	
	p_eSelClamp1Stat ACCESS p_PneuNoSenSelClamp1Stat;
	p_eSelClamp1Status ACCESS p_PneuNoSenSelClamp1Status;
	p_sSelClamp1StatTxt ACCESS p_PneuNoSenSelClamp1StatTxt;
	p_bSelClamp1ExtCtrl ACCESS p_PneuNoSenSelClamp1ExtCtrl;
	p_bSelClamp1RetCtrl ACCESS p_PneuNoSenSelClamp1RetCtrl;
	p_bSelClamp1TwoCtrlOut ACCESS p_PneuNoSenSelClamp1TwoCtrlOut;
	p_bSelClamp1Extended ACCESS p_PneuNoSenSelClamp1Extended;
	p_bSelClamp1Retracted ACCESS p_PneuNoSenSelClamp1Retracted;
	
	p_eSelClamp2Stat ACCESS p_PneuNoSenSelClamp2Stat;
	p_eSelClamp2Status ACCESS p_PneuNoSenSelClamp2Status;
	p_sSelClamp2StatTxt ACCESS p_PneuNoSenSelClamp2StatTxt;
	p_bSelClamp2ExtCtrl ACCESS p_PneuNoSenSelClamp2ExtCtrl;
	p_bSelClamp2RetCtrl ACCESS p_PneuNoSenSelClamp2RetCtrl;
	p_bSelClamp2TwoCtrlOut ACCESS p_PneuNoSenSelClamp2TwoCtrlOut;
	p_bSelClamp2Extended ACCESS p_PneuNoSenSelClamp2Extended;
	p_bSelClamp2Retracted ACCESS p_PneuNoSenSelClamp2Retracted;

	p_eSelClamp3Stat ACCESS p_PneuNoSenSelClamp3Stat;
	p_eSelClamp3Status ACCESS p_PneuNoSenSelClamp3Status;
	p_sSelClamp3StatTxt ACCESS p_PneuNoSenSelClamp3StatTxt;
	p_bSelClamp3ExtCtrl ACCESS p_PneuNoSenSelClamp3ExtCtrl;
	p_bSelClamp3RetCtrl ACCESS p_PneuNoSenSelClamp3RetCtrl;
	p_bSelClamp3TwoCtrlOut ACCESS p_PneuNoSenSelClamp3TwoCtrlOut;
	p_bSelClamp3Extended ACCESS p_PneuNoSenSelClamp3Extended;
	p_bSelClamp3Retracted ACCESS p_PneuNoSenSelClamp3Retracted;
	
	p_eSelClamp4Stat ACCESS p_PneuNoSenSelClamp4Stat;
	p_eSelClamp4Status ACCESS p_PneuNoSenSelClamp4Status;
	p_sSelClamp4StatTxt ACCESS p_PneuNoSenSelClamp4StatTxt;
	p_bSelClamp4ExtCtrl ACCESS p_PneuNoSenSelClamp4ExtCtrl;
	p_bSelClamp4RetCtrl ACCESS p_PneuNoSenSelClamp4RetCtrl;
	p_bSelClamp4TwoCtrlOut ACCESS p_PneuNoSenSelClamp4TwoCtrlOut;
	p_bSelClamp4Extended ACCESS p_PneuNoSenSelClamp4Extended;
	p_bSelClamp4Retracted ACCESS p_PneuNoSenSelClamp4Retracted;
	
	p_ePullerStat ACCESS p_Pneu2SenPullerStat;
	p_ePullerStatus ACCESS p_Pneu2SenPullerStatus;
	p_sPullerStatTxt ACCESS p_Pneu2SenPullerStatTxt;
	p_bPullerExtCtrl ACCESS p_Pneu2SenPullerExtCtrl;
	p_bPullerRetCtrl ACCESS p_Pneu2SenPullerRetCtrl;
	p_bPullerTwoCtrlOut ACCESS p_Pneu2SenPullerTwoCtrlOut;
	p_bPullerExtended ACCESS p_Pneu2SenPullerExtended;
	p_bPullerRetracted ACCESS p_Pneu2SenPullerRetracted;
	
	p_ePullConvStat ACCESS p_PullConvStat;
	p_ePullConvStatus ACCESS p_PullConvStatus;
	p_sPullConvStatTxt ACCESS p_PullConvStatTxt;
	p_bPullConvHvBrd ACCESS p_PullConvHvBrd;
	p_bPullConvGdBrd ACCESS p_PullConvGdBrd;
	p_bPullConvMtrSigOnOrLToR ACCESS p_PullConvMtrSigOnOrLToR;
	p_bPullConvMtrDirOrRToL ACCESS p_PullConvMtrDirOrRToL;
	p_bPullConvPullerExtCtrl ACCESS p_PullConvPullerExtCtrl;
	p_bPullConvPullerRetCtrl ACCESS p_PullConvPullerRetCtrl;
	p_bPullConvPullerTwoOutputCtrl ACCESS p_PullConvPullerTwoOutputControl;
	p_bPullConvRotRemoteCtrl ACCESS p_PullConvRotRemoteCtrl;
	p_bPullConvRotTwoOutputCtrl ACCESS p_PullConvRotTwoOutputControl;
	
	p_eMagConv2Clp1Stat ACCESS p_MagConv2Clp1Stat;
	p_eMagConv2Clp1Status ACCESS p_MagConv2Clp1Status;
	p_sMagConv2Clp1StatTxt ACCESS p_MagConv2Clp1StatTxt;
	p_bMagConv2Clp1HvMag ACCESS p_MagConv2Clp1HvMag;
	p_bMagConv2Clp1MtrSigOnOrLToR ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bMagConv2Clp1MtrDirOrRToL ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bMagConv2Clp1ClprFixClampCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl;
	p_bMagConv2Clp1ClprRmtClampCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
	p_bMagConv2Clp1ClprTwoOutputCtrl ACCESS p_MagConv2Clp1ClprTwoOutputCtrl;
	
	p_eMagConv2Clp2Stat ACCESS p_MagConv2Clp2Stat;
	p_eMagConv2Clp2Status ACCESS p_MagConv2Clp2Status;
	p_sMagConv2Clp2StatTxt ACCESS p_MagConv2Clp2StatTxt;
	p_bMagConv2Clp2HvMag ACCESS p_MagConv2Clp2HvMag;
	p_bMagConv2Clp2MtrSigOnOrLToR ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bMagConv2Clp2MtrDirOrRToL ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bMagConv2Clp2ClprFixClampCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMagConv2Clp2ClprRmtClampCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMagConv2Clp2ClprTwoOutputCtrl ACCESS p_MagConv2Clp2ClprTwoOutputCtrl;
	
	p_eMagConv2Clp3Stat ACCESS p_MagConv2Clp3Stat;
	p_eMagConv2Clp3Status ACCESS p_MagConv2Clp3Status;
	p_sMagConv2Clp3StatTxt ACCESS p_MagConv2Clp3StatTxt;
	p_bMagConv2Clp3HvMag ACCESS p_MagConv2Clp3HvMag;
	p_bMagConv2Clp3MtrSigOnOrLToR ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bMagConv2Clp3MtrDirOrRToL ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bMagConv2Clp3ClprFixClampCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMagConv2Clp3ClprRmtClampCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	p_bMagConv2Clp3ClprTwoOutputCtrl ACCESS p_MagConv2Clp3ClprTwoOutputCtrl;
	
	p_eMagConv2Clp4Stat ACCESS p_MagConv2Clp4Stat;
	p_eMagConv2Clp4Status ACCESS p_MagConv2Clp4Status;
	p_sMagConv2Clp4StatTxt ACCESS p_MagConv2Clp4StatTxt;
	p_bMagConv2Clp4HvMag ACCESS p_MagConv2Clp4HvMag;
	p_bMagConv2Clp4MtrSigOnOrLToR ACCESS p_MagConv2Clp4MtrSigOnOrLToR;
	p_bMagConv2Clp4MtrDirOrRToL ACCESS p_MagConv2Clp4MtrDirOrRToL;
	p_bMagConv2Clp4ClprFixClampCtrl ACCESS p_MagConv2Clp4FixClprClampCtrl;
	p_bMagConv2Clp4ClprRmtClampCtrl ACCESS p_MagConv2Clp4RmtClprClampCtrl;
	p_bMagConv2Clp4ClprTwoOutputCtrl ACCESS p_MagConv2Clp4ClprTwoOutputCtrl;
		
	p_bAWPushOrPullerPrep ACCESS p_NtParamAWPusherPrep;
	p_eAWPushOrPullerStat ACCESS p_AWPushOrPullerStat;
	p_eAWPushOrPullerStatus ACCESS p_AWPushOrPullerStatus;
	p_sAWPushOrPullerStatTxt ACCESS p_AWPushOrPullerStatTxt;
	p_udiAWPushOrPullerAxisErrID ACCESS p_AWPushOrPullerAxisErrID;
	p_bAWPushOrPullerAxisErr ACCESS p_AWPushOrPullerAxisErr;
	p_bAWPushOrPullerPwrOn ACCESS p_AWPushOrPullerPwrOn;
	p_bAWPushOrPullerIsHomed ACCESS p_AWPushOrPullerIsHomed;
	p_diAWPushOrPullerActualPos ACCESS p_AWPushOrPullerActualPos;
	p_bAWPushOrPullerFwdLmtSen ACCESS p_AWPushOrPullerFwdLmtSen;
	p_bAWPushOrPullerRevLmtSen ACCESS p_AWPushOrPullerRevLmtSen;
	p_sAWPushOrPullerAxisErrTxt ACCESS p_AWPushOrPullerAxisErrTxt;
	p_bAWPushOrPullerJogging ACCESS p_AWPushOrPullerJogging;
	p_bAWPushOrPullerOpenSen ACCESS p_AWPushOrPullerOpenSen;
	p_bAWPushOrPullerCloseSen ACCESS p_AWPushOrPullerCloseSen;
	
	p_eAWOpenStat ACCESS p_AWOpenStat;
	p_eAWOpenStatus ACCESS p_AWOpenStatus;
	p_sAWOpenStatTxt ACCESS p_AWOpenStatTxt;
	p_udiAWOpenAxisErrID ACCESS p_AWOpenAxisErrID;
	p_bAWOpenAxisErr ACCESS p_AWOpenAxisErr;
	p_bAWOpenPwrOn ACCESS p_AWOpenPwrOn;
	p_bAWOpenIsHomed ACCESS p_AWOpenIsHomed;
	p_diAWOpenActualPos ACCESS p_AWOpenActualPos;
	p_bAWOpenFwdLmtSen ACCESS p_AWOpenFwdLmtSen;
	p_bAWOpenRevLmtSen ACCESS p_AWOpenRevLmtSen;
	p_bAWOpenWidthPosDiff ACCESS p_AWOpenWidthPosDiff;
	p_sAWOpenAxisErrTxt ACCESS p_AWOpenAxisErrTxt;
	p_bAWOpenJogging ACCESS p_AWOpenJogging;
	p_bAWOpenOpenSen ACCESS p_AWOpenOpenSen;
	p_bAWOpenCloseSen ACCESS p_AWOpenCloseSen;
	
	p_eLifterBtmStat ACCESS p_LifterBtmStat;
	p_eLifterBtmStatus ACCESS p_LifterBtmStatus;
	p_sLifterBtmStatTxt ACCESS p_LifterBtmStatTxt;
	p_bLifterBtmPwrOn ACCESS p_LifterBtmPwrOn;
	p_bLifterBtmIsHomed ACCESS p_LifterBtmIsHomed;
	p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
	p_bLifterBtmAxisErr ACCESS p_LifterBtmAxisErr;
	p_udiLifterBtmAxisErrID ACCESS p_LifterBtmAxisErrID;
	p_sLifterBtmAxisErrTxt ACCESS p_LifterBtmAxisErrTxt;
	p_bLifterBtmFwdLmtSen ACCESS p_LifterBtmFwdLmtSen;
	p_bLifterBtmRevLmtSen ACCESS p_LifterBtmRevLmtSen;
	p_diLifterBtmActualPos ACCESS p_LifterBtmActualPos;
	p_bLifterBtmJogging ACCESS p_LifterBtmJogging;
	p_diLifterBtmCurrSltA ACCESS p_LifterBtmCurrSltA;
	p_diLifterBtmCurrSltB ACCESS p_LifterBtmCurrSltB;
	p_diLifterBtmCurrSltC ACCESS p_LifterBtmCurrSltC;
	p_bLifterBtmUpSen ACCESS p_LifterBtmUpSen;
	p_bLifterBtmDownSen ACCESS p_LifterBtmDownSen;
	p_bLifterBtmSltAPosDiff ACCESS p_LifterBtmSltAPosDiff;
	
	p_eTravStat ACCESS p_TravStat;
	p_eTravStatus ACCESS p_TravStatus;
	p_sTravStatTxt	ACCESS p_TravStatTxt;
	p_bTravPwrOn ACCESS p_TravPwrOn;
	p_bTravIsHomed ACCESS p_TravIsHomed;
	p_bTravPosDiff ACCESS p_TravPosDiff;
	p_bTravAxisErr ACCESS p_TravAxisErr;
	p_udiTravAxisErrID ACCESS p_TravAxisErrID;
	p_sTravAxisErrTxt ACCESS p_TravAxisErrTxt;
	p_bTravFwdLmtSen ACCESS p_TravFwdLmtSen;
	p_bTravRevLmtSen ACCESS p_TravRevLmtSen;
	p_diTravActualPos ACCESS p_TravActualPos;
	p_bTravJogging ACCESS p_TravJogging;
	p_bTravFrontSen ACCESS p_TravFrontSen;
	p_bTravRearSen ACCESS p_TravRearSen;
	p_bTravAPosDiff ACCESS p_TravAPosDiff;
	p_bTravBPosDiff ACCESS p_TravBPosDiff;
	p_bTravCPosDiff ACCESS p_TravCPosDiff;
	p_bTravDPosDiff ACCESS p_TravDPosDiff;
	p_bTravEPosDiff ACCESS p_TravEPosDiff;
	p_bTravFPosDiff ACCESS p_TravFPosDiff;
	p_bTravGPosDiff ACCESS p_TravGPosDiff;
	p_bTravHPosDiff ACCESS p_TravHPosDiff;
	
	p_tyDI ACCESS p_DI;
	
	p_eDOStat ACCESS p_DOStat;
	p_eDOStatus ACCESS p_DOStatus;
	p_sDOStatTxt ACCESS p_DOStatTxt;
	p_tyDO ACCESS p_DO;
	
	p_eHermesStat ACCESS p_HermesStat;
	p_eHermesStatus ACCESS p_HermesStatus;
	p_tyHermesConfiguration ACCESS p_HermesConfiguration;
	
	p_eDSHermesAStat ACCESS p_DSHermesAStat;
	p_eDSHermesAStatus ACCESS p_DSHermesAStatus;
	p_sDSHermesAStatTxt ACCESS p_DSHermesAStatTxt;
	p_bDSHermesAUSRdy ACCESS p_DSHermesAUSRdy;
	p_bDSHermesADSRdy ACCESS p_DSHermesADSRdy;
	p_bDSHermesAUSGdRdy ACCESS p_DSHermesAUSGdRdy;
	p_bDSHermesADSGdRdy ACCESS p_DSHermesADSGdRdy;
	p_bDSHermesAConnected ACCESS p_DSHermesAConnected;
	
	p_eDSHermesBStat ACCESS p_DSHermesBStat;
	p_eDSHermesBStatus ACCESS p_DSHermesBStatus;
	p_sDSHermesBStatTxt ACCESS p_DSHermesBStatTxt;
	p_bDSHermesBUSRdy ACCESS p_DSHermesBUSRdy;
	p_bDSHermesBDSRdy ACCESS p_DSHermesBDSRdy;
	p_bDSHermesBUSGdRdy ACCESS p_DSHermesBUSGdRdy;
	p_bDSHermesBDSGdRdy ACCESS p_DSHermesBDSGdRdy;
	p_bDSHermesBConnected ACCESS p_DSHermesBConnected;
	
	p_eLFLeaderStat ACCESS p_LFLeaderStat;
	p_eLFLeaderStatus ACCESS p_LFLeaderStatus;
	p_tyLFLeaderFollowerInfo ACCESS p_LFLeaderFollowerInfo;
	p_tyLFLeaderFollowerToLeaderTag ACCESS p_LFLeaderFollowerToLeaderTag;
	
	p_bLFFollowerProdAccDataMnl ACCESS p_LFFollowerProdAccDataMnl;
	p_bLFFollowerLdrSeqCtrlInActive ACCESS p_LFFollowerLdrSeqCtrlInActive;
	p_bLFFollowerDSAllow ACCESS p_LFFollowerDSAllow;
	p_bLFFollowerUSAllow ACCESS p_LFFollowerUSAllow;
	
	p_bLCSLFAccDataMnl ACCESS p_LCSLFAccDataMnl;
	
	p_eOpsStat ACCESS p_OpsStat;
	p_eOpsStatus ACCESS p_OpsStatus;
	p_sOpsStatTxt ACCESS p_OpsStatTxt;
	p_eOpsOpsStatus ACCESS p_OpsOpsStatus;
	p_bOpsStatusRun ACCESS p_OpsStatusRun;
	p_bOpsStatusStop ACCESS p_OpsStatusStop;
	p_bOpsStatusCycleStop ACCESS p_OpsStatusCycleStop;
	p_bOpsStatusStep ACCESS p_OpsStatusStep;
	
	p_sOpsTravLifLDStepTxt ACCESS p_OpsTravLifLDStepTxt;
	//	p_sOpsMagLD1StepTxt ACCESS p_OpsMagLD1StepTxt;
	//	p_sOpsMagLD2StepTxt ACCESS p_OpsMagLD2StepTxt;
	//	p_sOpsMagLD3StepTxt ACCESS p_OpsMagLD3StepTxt;
	//	p_sOpsMagLD4StepTxt ACCESS p_OpsMagLD4StepTxt;
	p_sOpsMagConvLD1StepTxt ACCESS p_OpsMagConvLD1StepTxt;
	p_sOpsMagConvLD2StepTxt ACCESS p_OpsMagConvLD2StepTxt;
	p_sOpsMagConvLD3StepTxt ACCESS p_OpsMagConvLD3StepTxt;
	p_sOpsMagConvLD4StepTxt ACCESS p_OpsMagConvLD4StepTxt;
	
	p_bOpsTravLifLDInitConv ACCESS p_OpsTravLifLDInitConv;
	p_bOpsTravLifLDAWPosDiff ACCESS p_OpsTravLifLDAWPosDiff;
	p_bOpsTravLifLDExitBrd ACCESS p_OpsTravLifLDExitBrd;
	p_eOpsTravLifPosGo ACCESS p_OpsTravLifLDPosGo;
	p_bOpsTravLifStandby ACCESS p_OpsTravLifStandby;
	
	p_bOpsLifMagLDUnloading ACCESS p_OpsLifMagLDUnloading;
	p_sOpsLifMagLDStepTxt ACCESS p_OpsLifMagLDStepTxt;
	
	p_bOpsMagConvLD1InitDone ACCESS p_OpsMagConvLD1InitDone;
	p_bOpsMagConvLD2InitDone ACCESS p_OpsMagConvLD2InitDone;
	p_bOpsMagConvLD3InitDone ACCESS p_OpsMagConvLD3InitDone;
	p_bOpsMagConvLD4InitDone ACCESS p_OpsMagConvLD4InitDone;
	p_bOpsMagConvLD1MagExitedWait ACCESS p_OpsMagConvLD1ExitedWait;
	p_bOpsMagConvLD2MagExitedWait ACCESS p_OpsMagConvLD2ExitedWait;
	p_bOpsMagConvLD3MagExitedWait ACCESS p_OpsMagConvLD3ExitedWait;
	p_bOpsMagConvLD4MagExitedWait ACCESS p_OpsMagConvLD4ExitedWait;
	p_bOpsMagConvLD1NewMagAllw ACCESS p_OpsMagConvLD1NewMagAllw;
	p_bOpsMagConvLD2NewMagAllw ACCESS p_OpsMagConvLD2NewMagAllw;
	p_bOpsMagConvLD3NewMagAllw ACCESS p_OpsMagConvLD3NewMagAllw;
	p_bOpsMagConvLD4NewMagAllw ACCESS p_OpsMagConvLD4NewMagAllw;
	p_bOpsMagConvLD1RlsMagAllw ACCESS p_OpsMagConvLD1RlsMagAllw;
	p_bOpsMagConvLD2RlsMagAllw ACCESS p_OpsMagConvLD2RlsMagAllw;
	p_bOpsMagConvLD3RlsMagAllw ACCESS p_OpsMagConvLD3RlsMagAllw;
	p_bOpsMagConvLD4RlsMagAllw ACCESS p_OpsMagConvLD4RlsMagAllw;
	p_bOpsMagConvLD1RlsMagUmask ACCESS p_OpsMagConvLD1RlsMagUmask;
	p_bOpsMagConvLD2RlsMagUmask ACCESS p_OpsMagConvLD2RlsMagUmask;
	p_bOpsMagConvLD3RlsMagUmask ACCESS p_OpsMagConvLD3RlsMagUmask;
	p_bOpsMagConvLD1ExtMes ACCESS p_OpsMagConvLD1ExtMes;
	p_bOpsMagConvLD2ExtMes ACCESS p_OpsMagConvLD2ExtMes;
	p_bOpsMagConvLD3ExtMes ACCESS p_OpsMagConvLD3ExtMes;
	p_bOpsMagConvLD1HModChgDone ACCESS p_OpsMagConvLD1HModChgDone;
	p_bOpsMagConvLD2HModChgDone ACCESS p_OpsMagConvLD2HModChgDone;
	p_bOpsMagConvLD3HModChgDone ACCESS p_OpsMagConvLD3HModChgDone;
	
	p_tyDTMagToAGV1 ACCESS p_AGVMag1DTMagToAGV;
	p_tyDTMagToAGV2 ACCESS p_AGVMag2DTMagToAGV;
	p_tyDTMagToAGV3 ACCESS p_AGVMag3DTMagToAGV;
	p_tyDTMagToAGV4 ACCESS p_AGVMag4DTMagToAGV;
	
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	p_bAGVOnline ACCESS p_AGVOnline;
	p_bMachineOnline ACCESS p_MachineOnline;
	p_tyDTMagToAGV ACCESS p_DTMagToAGV;
	p_bAGVSimulationOn ACCESS p_AGVSimulationOn;
	p_tyTagToMes ACCESS p_TagToMes;
	p_tyTagFromMes ACCESS p_TagFromMes;
	
	//Simulation
	p_eSimuStat ACCESS p_SimuStat;
	p_eSimuStatus ACCESS p_SimuStatus;
	
	p_eSimuSimuStatus ACCESS p_SimuSimuStatus;
	p_bSimuStatusRun ACCESS p_SimuStatusRun;
	p_bSimuStatusStop ACCESS p_SimuStatusStop;
	p_bSimuStatusCycleStop ACCESS p_SimuStatusCycleStop;
	p_bSimuStatusStep ACCESS p_SimuStatusStep;
	p_sNtParamJobNo ACCESS p_NtParamJobNo;
	p_usiNtParamNtAddr ACCESS p_NtParamNtAddr;
	p_eNtParamStat ACCESS p_NtParamStat;
	p_eNtParamStatus ACCESS p_NtParamStatus;
	p_diNtParamLifterAutoSpd ACCESS p_NtParamLifterAutoSpd;
	p_diNtParamTravAutoSpd ACCESS p_NtParamTravAutoSpd;
	
	//USB Barcode Reader
	p_eUSBRdrStat ACCESS p_USBRdrStat;                  
	p_eUSBRdrStatus ACCESS p_USBRdrStatus;                  
	p_sUSBRdrBarcodeOut ACCESS p_USBRdrBarcodeOut; 
	p_bUSBDisconnected ACCESS p_USBDisconnected;
	
	p_eFrmStat ACCESS p_FrmStat;                        
	p_eFrmStatus ACCESS p_FrmStatus;                    
	p_sFrmFullMsgRd ACCESS p_FrmFullMsgRd;              
	p_sFrmMsgRd	ACCESS p_FrmMsgRd;                      
	p_bFrmMsgRdValid ACCESS p_FrmMsgRdValid;            
	p_uiFrmMsgRdLen ACCESS p_FrmMsgRdLen;  
	
	p_eMtrPshrStat ACCESS p_MtrPshrStat;
	p_eMtrPshrStatus ACCESS p_MtrPshrStatus;
	p_sMtrPshrStatTxt ACCESS p_MtrPshrStatTxt;
	
	p_eMag1SafetyBarStat ACCESS p_Pneu2SMag1SafetyBarStat;
	p_eMag1SafetyBarStatus ACCESS p_Pneu2SMag1SafetyBarStatus;
	p_sMag1SafetyBarStatTxt ACCESS p_Pneu2SMag1SafetyBarStatTxt;
	p_bMag1SafetyBarExtCtrl ACCESS p_Pneu2SMag1SafetyBarExtCtrl;
	p_bMag1SafetyBarRetCtrl ACCESS p_Pneu2SMag1SafetyBarRetCtrl;
	p_bMag1SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag1SafetyBarTwoCtrlOut;
	p_bMag1SafetyBarExtended ACCESS p_Pneu2SMag1SafetyBarExtended;
	p_bMag1SafetyBarRetracted ACCESS p_Pneu2SMag1SafetyBarRetracted;
	
	p_eMag2SafetyBarStat ACCESS p_Pneu2SMag2SafetyBarStat;
	p_eMag2SafetyBarStatus ACCESS p_Pneu2SMag2SafetyBarStatus;
	p_sMag2SafetyBarStatTxt ACCESS p_Pneu2SMag2SafetyBarStatTxt;
	p_bMag2SafetyBarExtCtrl ACCESS p_Pneu2SMag2SafetyBarExtCtrl;
	p_bMag2SafetyBarRetCtrl ACCESS p_Pneu2SMag2SafetyBarRetCtrl;
	p_bMag2SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag2SafetyBarTwoCtrlOut;
	p_bMag2SafetyBarExtended ACCESS p_Pneu2SMag2SafetyBarExtended;
	p_bMag2SafetyBarRetracted ACCESS p_Pneu2SMag2SafetyBarRetracted;
	
	p_eMag3SafetyBarStat ACCESS p_Pneu2SMag3SafetyBarStat;
	p_eMag3SafetyBarStatus ACCESS p_Pneu2SMag3SafetyBarStatus;
	p_sMag3SafetyBarStatTxt ACCESS p_Pneu2SMag3SafetyBarStatTxt;
	p_bMag3SafetyBarExtCtrl ACCESS p_Pneu2SMag3SafetyBarExtCtrl;
	p_bMag3SafetyBarRetCtrl ACCESS p_Pneu2SMag3SafetyBarRetCtrl;
	p_bMag3SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag3SafetyBarTwoCtrlOut;
	p_bMag3SafetyBarExtended ACCESS p_Pneu2SMag3SafetyBarExtended;
	p_bMag3SafetyBarRetracted ACCESS p_Pneu2SMag3SafetyBarRetracted;
	
	p_diNtParamPullerHeightInMM ACCESS p_NtParamPullerHeightInMM;
	
	p_eTrolleyLckStat ACCESS p_PneuExtSenTrllyStat;
	p_eTrolleyLckStatus ACCESS p_PneuExtSenTrllyStatus;
	p_sTrolleyLckStatTxt ACCESS p_PneuExtSenTrllyStatTxt;
	p_bTrolleyLckExtCtrl ACCESS p_PneuExtSenTrllyExtCtrl;
	p_bTrolleyLckRetCtrl ACCESS p_PneuExtSenTrllyRetCtrl;
	p_bTrolleyLckTwoCtrlOut ACCESS p_PneuExtSenTrllyTwoCtrlOut;
	p_bTrolleyLckExtended ACCESS p_PneuExtSenTrllyExtended;
	p_bTrolleyLckRetracted ACCESS p_PneuExtSenTrllyRetracted;

	p_eTrolleyLckStat2 ACCESS p_PneuExtSenTrlly2Stat;
	p_eTrolleyLckStatus2 ACCESS p_PneuExtSenTrlly2Status;
	p_sTrolleyLckStatTxt2 ACCESS p_PneuExtSenTrlly2StatTxt;
	p_bTrolleyLckExtCtrl2 ACCESS p_PneuExtSenTrlly2ExtCtrl;
	p_bTrolleyLckRetCtrl2 ACCESS p_PneuExtSenTrlly2RetCtrl;
	p_bTrolleyLckTwoCtrlOut2 ACCESS p_PneuExtSenTrlly2TwoCtrlOut;
	p_bTrolleyLckExtended2 ACCESS p_PneuExtSenTrlly2Extended;
	p_bTrolleyLckRetracted2 ACCESS p_PneuExtSenTrlly2Retracted;

	p_ePPStat ACCESS p_PPStat;
	p_ePPStatus ACCESS p_PPStatus;
	p_sPPStatTxt ACCESS p_PPStatTxt;
	p_bPPPwrOn ACCESS p_PPPwrOn;
	p_bPPIsHomed ACCESS p_PPIsHomed;
	p_bPPPosDiff ACCESS p_PPPosDiff;
	p_bPPAxisErr ACCESS p_PPAxisErr;
	p_udiPPAxisErrID ACCESS p_PPAxisErrID;
	p_sPPAxisErrTxt ACCESS p_PPAxisErrTxt;
	p_bPPFwdLmtSen ACCESS p_PPFwdLmtSen;
	p_bPPRevLmtSen ACCESS p_PPRevLmtSen;
	p_diPPActualPos ACCESS p_PPActualPos;
	p_bPPJogging ACCESS p_PPJogging;
	p_bPPExtSen ACCESS p_PPExtSen;
	p_bPPRetSen ACCESS p_DIPullerRetRS;
	
	p_tyMcAlmData ACCESS p_McAlmData;
			
	//new for Hermes 1.3
	p_bRmtUpdateUIData ACCESS p_RmtHermesUpdateUIData;//new for Hermes 1.3
	p_bSvyUpdateUIData ACCESS p_SvyHermesUpdateUIData;//new for Hermes 1.3
	p_bRcvBoardInfoOk ACCESS p_SvyHermesUpdateUIData;//p_USHermesRcvBoardInfoOk;//new for Hermes 1.3
	p_bRcvBoardInfoIncompl ACCESS p_SvyHermesUpdateUIData;//p_USHermesRcvbBoardInfoIncompl;//new for Hermes 1.3
	p_bTransportFinished ACCESS p_DSHermesATransportFinishedSnd;//new for Hermes 1.3
	p_sWorkOrderId ACCESS p_SvyHermesWorkOrderId; //Work Order Id from SupervisoryHermes
	p_bWaitDecision ACCESS p_StartupWaitDecision;//new for Hermes 1.3
	
		
	p_tySendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData;
	p_tySvyHermesSendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData;
	p_tySvyHermesBypassSendWOData ACCESS p_SvyHermesBypassSendWOData;
//	p_bOpsConvWaitForTopUpBrd ACCESS p_OpsConvWaitForTopUpBrd;  
	p_diReqLoaderWidthInUM ACCESS p_ReqLoaderWidthInUM;
	p_bQueryBypassWorkOrder ACCESS p_QueryBypassWorkOrder;
	p_bReplyBypassWorkOrderInfo ACCESS p_ReplyBypassWorkOrderInfo;
	p_bRcvWorkOrderInfo1 ACCESS p_RcvWorkOrderInfo1;
//	p_bOpsPneuStepLifToLoadPos ACCESS p_OpsPneuStepLifToLoadPos;
	p_bNewIncomingBoard ACCESS p_NewIncomingBoard;
	
	//AutoRcp
	p_diLinkAutoRcpMag1Pitch ACCESS p_diAutoRcpMag1Pitch;
	p_diLinkAutoRcpMag1MinSlt ACCESS p_diAutoRcpMag1MinSlt;
	p_diLinkAutoRcpMag1MaxSlt ACCESS p_diAutoRcpMag1MaxSlt;
	
	p_diLinkAutoRcpMag2Pitch ACCESS p_diAutoRcpMag2Pitch;
	p_diLinkAutoRcpMag2MinSlt ACCESS p_diAutoRcpMag2MinSlt;
	p_diLinkAutoRcpMag2MaxSlt ACCESS p_diAutoRcpMag2MaxSlt;

	p_diLinkAutoRcpMag3Pitch ACCESS p_diAutoRcpMag3Pitch;
	p_diLinkAutoRcpMag3MinSlt ACCESS p_diAutoRcpMag3MinSlt;
	p_diLinkAutoRcpMag3MaxSlt ACCESS p_diAutoRcpMag3MaxSlt;
	p_ausiSvyMagAccOrder ACCESS p_SvyHermesMagAccOrder;
	p_tyAutoRcpMagRcp ACCESS p_AutoRcpMagRcp;//display in prod name

END_ACTION
