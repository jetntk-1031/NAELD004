(*2019-05-09*)
(**)
(*Action*)

TYPE
	eMagRcpAction : 
		(
		MagRcpActIdle,
		MagRcpActCreateDir,
		MagRcpActAddEdit,
		MagRcpActDel,
		MagRcpActGetInfo,
		MagRcpActGetList,
		MagRcpActFilter,
		MagRcpActReadCurrRcp,
		MagRcpActLoadRcp,
		MagRcpActWriteCurrRcpParam,
		MagRcpActSaveList,
		MagRcpActSort
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyMagRcpParam : 	STRUCT 
		sRcpNm : STRING[30];
		diTtlSlt : DINT;
		diSltToSltInUM : DINT;
		diMag1Slt1PosInUM : DINT;
		diMag2Slt1PosInUM : DINT;
		diMag3Slt1PosInUM : DINT;
		diMag4Slt1PosInUM : DINT;
		diMag1TravPosInUM : DINT;
		diMag2TravPosInUM : DINT;
		diMag3TravPosInUM : DINT;
		diMag4TravPosInUM : DINT;
		usiMagModel : USINT; (*0=CAB706.2/1=CAB716.2/2=CAB717.2*)
		sDisplayInfo : STRING[30];
		diMagMaxBrdWidth : DINT;
		dtLastModified : DATE_AND_TIME;
		bSafetyBarDisabled : BOOL;
		bMagHeightChkEn : BOOL;
	END_STRUCT;
END_TYPE
