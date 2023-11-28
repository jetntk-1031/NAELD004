(** 2019-05-04 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_McParamStat		:= ADR(eStat);
	p_McParamStatus		:= ADR(eStatus);
	p_McParamStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_McParamAlmData	:= ADR(tyAlmData);
	
	//Output
	p_McParamFileNotFound				:= ADR(bFileNotFound);
	
	p_McParamCurr						:= ADR(tyMcParamCurr);
	
	p_McParamLFOnline					:= ADR(tyMcParamCurr.a_bLFOnline);
	p_McParamLFIPAddr					:= ADR(tyMcParamCurr.a_sLFIPAddr);
	
	p_McParamMcNm						:= ADR(tyMcParamCurr.sMcNm);
	p_McParamSSaverTm					:= ADR(tyMcParamCurr.uiSSaverTmInSec);
	p_McParamSSaverEn					:= ADR(tyMcParamCurr.bSSaverEn);
	p_McParamDefaultMcMod				:= ADR(tyMcParamCurr.usiDefaultMcMod);
	p_McParamDefaultFlippedBrd			:= ADR(tyMcParamCurr.usiDefaultFlippedBrd);
	p_McParamWidthAtHmPos				:= ADR(tyMcParamCurr.diWidthAtHmPosInUM);
	p_McParamConvInitTm					:= ADR(tyMcParamCurr.diConvInitTmInMS);
	p_McParamTranOutErrDlyTm			:= ADR(tyMcParamCurr.diTranOutErrDlyTmInMS);
	p_McParamMag1ConvRunTmOut			:= ADR(tyMcParamCurr.diMag1ConvRunTmOutInMS);
	p_McParamMag2ConvRunTmOut			:= ADR(tyMcParamCurr.diMag2ConvRunTmOutInMS);
	p_McParamMag3ConvRunTmOut			:= ADR(tyMcParamCurr.diMag3ConvRunTmOutInMS);
	p_McParamMag4ConvRunTmOut			:= ADR(tyMcParamCurr.diMag4ConvRunTmOutInMS);
	p_McParamTravPosA					:= ADR(tyMcParamCurr.diTravPosA);
	p_McParamTravPosB					:= ADR(tyMcParamCurr.diTravPosB);
	p_McParamLifterPosA					:= ADR(tyMcParamCurr.diLifterPosA);
	p_McParamLifterPosB					:= ADR(tyMcParamCurr.diLifterPosB);
	p_McParamAWDis						:= ADR(tyMcParamCurr.bAWDis);
	p_McParamMnlAccDat					:= ADR(tyMcParamCurr.bMnlAccDat);
	p_McParamAutoStepEn					:= ADR(tyMcParamCurr.bAutoStepEn);
	p_McParamVSMEMAEn					:= ADR(tyMcParamCurr.bVSMEMAEn);
	p_McParamChgParamEn					:= ADR(tyMcParamCurr.bChgParamEn);
	p_McParamHermesRmtEn				:= ADR(tyMcParamCurr.bHermesRmtEn);
	p_McParamLongBrdEn					:= ADR(tyMcParamCurr.bLongBrdEn); 
	p_McParamOutShutterDis				:= ADR(tyMcParamCurr.bOutShutterDis);
	p_McParamMagAutoDetTm				:= ADR(tyMcParamCurr.diMagAutoDetectSenTmInMS);
	p_McParamAGVComEn					:= ADR(tyMcParamCurr.bAGVComEn);
	
	p_McParamLFEn						:= ADR(tyMcParamCurr.bLFEn);
	p_McParamLCSLFEn					:= ADR(tyMcParamCurr.bLCSLFEn);
	p_McParamLCSReqRcpEn				:= ADR(tyMcParamCurr.bLCSReqRcpEn);
	p_McParamLCSManageRcpEn				:= ADR(tyMcParamCurr.bLCSManageRcpEn);
	p_McParamLCSLiveDatEn				:= ADR(tyMcParamCurr.bLCSLiveDatEn);
	p_McParamLFLeaderMc					:= ADR(tyMcParamCurr.bLFLeaderMc);
	p_McParamSectionLeader				:= ADR(tyMcParamCurr.bSectionLeader);
	p_McParamDSWidthChkEn				:= ADR(tyMcParamCurr.bDSWidthChkEn);
	p_McParamLFMcIdxBeforeOven			:= ADR(tyMcParamCurr.diLFMcIdxBeforeOven);
	p_McParamLFMcIdxAfterOven			:= ADR(tyMcParamCurr.diLFMcIdxAfterOven);
	
	p_McParamLang						:= ADR(tyMcParamCurr.usiLang);
	
	p_McParamConvLftSenAntiGap			:= ADR(tyMcParamCurr.tyLftSenAntiGapDly);
	p_McParamConvLftSenOnTm				:= ADR(tyMcParamCurr.tyLftSenAntiGapDly.diSigOnTm);
	p_McParamConvLftSenOffTm			:= ADR(tyMcParamCurr.tyLftSenAntiGapDly.diSigOffTm);
	p_McParamConvRgtSenAntiGap			:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly);
	p_McParamConvRgtSenOnTm				:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly.diSigOnTm);
	p_McParamConvRgtSenOffTm			:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly.diSigOffTm);
	
	p_McParamMagConvEntrySenAntiGap		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly);
	p_McParamMagConvEntrySenOnTm		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm);
	p_McParamMagConvEntrySenOffTm		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm);
	
	p_McParamMagConvPresentAntiGap		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly);
	p_McParamMagConvPresentSenOnTm		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
	p_McParamMagConvPresentSenOffTm		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);

	p_McParamDSCommAMod					:= ADR(tyMcParamCurr.eDSCommA);
	p_McParamDSSMEMAAParam				:= ADR(tyMcParamCurr.tyDSCommASMEMA);
	p_McParamDSSMEMAASelection			:= ADR(tyMcParamCurr.tyDSCommASMEMA.eSelection);
	p_McParamDBAAStatSetGd				:= ADR(tyMcParamCurr.tyDSCommASMEMA.bStatSigSetGd);
	
	p_McParamDSCommBMod					:= ADR(tyMcParamCurr.eDSCommB);
	p_McParamDSSMEMABParam				:= ADR(tyMcParamCurr.tyDSCommBSMEMA);
	p_McParamDSSMEMABSelection			:= ADR(tyMcParamCurr.tyDSCommBSMEMA.eSelection);
	p_McParamDBABStatSetGd				:= ADR(tyMcParamCurr.tyDSCommBSMEMA.bStatSigSetGd);
	
	p_McParamLFMcIdxBeforeOven2			:= ADR(tyMcParamCurr.diLFMcIdxBeforeOven2);
	p_McParamLFMcIdxAfterOven2			:= ADR(tyMcParamCurr.diLFMcIdxAfterOven2);
//	p_McParamAIVComm					:= ADR(tyMcParamCurr.tyAIVComm);
//	p_McParamAIVSvrPort					:= ADR(tyMcParamCurr.tyAIVComm.uiSvrPort);
//	p_McParamAIVClientPort				:= ADR(tyMcParamCurr.tyAIVComm.uiClientPort);
//	p_McParamAIVClientAddr				:= ADR(tyMcParamCurr.tyAIVComm.sClientAddress);
	
	p_McParamWidthOffset				:= ADR(tyMcParamCurr.diWidthOffsetInUM);
	
	p_McParamNetworkMod					:= ADR(tyMcParamCurr.eNetworkMod);
	
	p_McParamLFSeqStayActive			:= ADR(tyMcParamCurr.bLFSeqStayActive);
	p_McParamLFBuzMute					:= ADR(tyMcParamCurr.bLFBuzMute);
	
	p_McParamVID			     		:= ADR(tyMcParamCurr.diVID);        
	p_McParamPID			    		:= ADR(tyMcParamCurr.diPID);  
	p_McParamScannerEn					:= ADR(tyMcParamCurr.bScannerEn);
	
	p_McParamAGVComProtocol				:= ADR(tyMcParamCurr.eAGVComProtocol);
	p_McParamMagExMode					:= ADR(tyMcParamCurr.eMagExMode);
	
	p_McParamRS232StartCode1		:= ADR(tyMcParamCurr.diRS232StartCode1);
	p_McParamRS232StartCode2		:= ADR(tyMcParamCurr.diRS232StartCode2);
	p_McParamRS232EndCode1			:= ADR(tyMcParamCurr.diRS232EndCode1);
	p_McParamRS232EndCode2			:= ADR(tyMcParamCurr.diRS232EndCode2);
	
	p_McParamAWPusherAtHmPos			:= ADR(tyMcParamCurr.diAWPusherAtHmPosInUM);
	p_McParamAWPusherDis				:= ADR(tyMcParamCurr.bAWPusherDis);
	
	p_McParamTravOutletFixtoFixPos	:= ADR(tyMcParamCurr.diTravOutletFixtoFixPos);
	p_McParamDisableFMWarning		:= ADR(tyMcParamCurr.bDisableFMWarning);
	p_McParamDBAOnWOAlign			:= ADR(tyMcParamCurr.bDBAOnWOAlign);
	
	p_McParamMagWidthChkDis			:= ADR(tyMcParamCurr.bMagWidthChkDis);
	p_McParamMag1WidthChkDetDist	:= ADR(tyMcParamCurr.diMag1WidthChkDetDist);
	p_McParamMag2WidthChkDetDist	:= ADR(tyMcParamCurr.diMag2WidthChkDetDist);
	p_McParamMag3WidthChkDetDist	:= ADR(tyMcParamCurr.diMag3WidthChkDetDist);
	p_McParamDBAOnRgtSen 		    := ADR(tyMcParamCurr.bDBAOnRgtSen);						    // ADD for OPL 52: Shift bDBAOnRgtSen frm NtParam to Mc Param
	p_McParamHermesSvyEn			:= ADR(tyMcParamCurr.bHermesSvyEn);//new for Hermes 1.3
	p_McParamHermesScannerEn		:= ADR(tyMcParamCurr.bHermesScannerEn);//new for Hermes 1.3
	p_McParamMesRFIDEn				:= ADR(tyMcParamCurr.bMesRFIDEn);
	p_McParamMesRFIDTOInMS			:= ADR(tyMcParamCurr.diMesRFIDTOInMS);
	p_McParamTravLaneBOffset		:= ADR(tyMcParamCurr.diTravLaneBOffset);

	(* Always Change If Project Change *)
	
END_PROGRAM