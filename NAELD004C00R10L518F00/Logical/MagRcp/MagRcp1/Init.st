(** 2019-05-04 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagRcpStat1	:= ADR(eStat);
	p_MagRcpStatus1	:= ADR(eStatus);
	p_MagRcpStatTxt1	:= ADR(sStatTxt);
	
	//Alarm
	p_MagRcpAlmData1	:= ADR(tyAlmData);
	
	//Output
	p_MagRcpNmExist1		:= ADR(bNmExist);
	p_MagRcpNmNotExist1		:= ADR(bNmNotExist);
	p_MagRcpNmEmpty1		:= ADR(bNmEmpty);
	p_MagRcpListFull1		:= ADR(bListFull);
	p_MagRcpCurrList1		:= ADR(a_tyCurrList);
	p_MagRcpFilterList1		:= ADR(a_tyFilterList);
	p_MagRcpSortedList1		:= ADR(a_tySortList);
	p_MagRcpInfoOut1		:= ADR(tyInfoOut);
	p_MagRcpFileNotFound1	:= ADR(bFileNotFound);
	
	p_MagRcpCurrRcp1				:= ADR(tyCurrRcp);
	p_MagRcpCurrRcpNm1				:= ADR(tyCurrRcp.sRcpNm);
	p_MagRcpCurrRcpTtlSlt1			:= ADR(tyCurrRcp.diTtlSlt);
	p_MagRcpCurrRcpSltToSlt1		:= ADR(tyCurrRcp.diSltToSltInUM);
	p_MagRcpCurrRcpMag1Slt1Pos1		:= ADR(tyCurrRcp.diMag1Slt1PosInUM);
	p_MagRcpCurrRcpMag2Slt1Pos1		:= ADR(tyCurrRcp.diMag2Slt1PosInUM);
	p_MagRcpCurrRcpMag3Slt1Pos1		:= ADR(tyCurrRcp.diMag3Slt1PosInUM);
	p_MagRcpCurrRcpMag4Slt1Pos1		:= ADR(tyCurrRcp.diMag4Slt1PosInUM);
	p_MagRcpCurrRcpMag1TravPos1		:= ADR(tyCurrRcp.diMag1TravPosInUM);
	p_MagRcpCurrRcpMag2TravPos1		:= ADR(tyCurrRcp.diMag2TravPosInUM);
	p_MagRcpCurrRcpMag3TravPos1		:= ADR(tyCurrRcp.diMag3TravPosInUM);
	p_MagRcpCurrRcpMag4TravPos1		:= ADR(tyCurrRcp.diMag4TravPosInUM);
	p_MagRcpCurrRcpDisplayInfo1		:= ADR(tyCurrRcp.sDisplayInfo);
	p_MagRcpCurrRcpLastModified1	:= ADR(tyCurrRcp.dtLastModified);
	p_MagRcpCurrRcpMagMaxBrdWidth1	:= ADR(tyCurrRcp.diMagMaxBrdWidth);
	p_MagRcpCurrRcpMagModel1		:= ADR(tyCurrRcp.usiMagModel);
	p_MagRcpCurrRcpSBarDisabled1	:= ADR(tyCurrRcp.bSafetyBarDisabled);
	p_MagRcpCurrRcpMagHeightChkEn1	:= ADR(tyCurrRcp.bMagHeightChkEn);
	(* Always Change If Project Change *)
	
END_PROGRAM