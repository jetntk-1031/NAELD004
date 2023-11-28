(*2020-07-24*)
(**)
(*Action*)

TYPE
	eProdRcpAction : 
		(
		ProdRcpActIdle,
		ProdRcpActCreateDir,
		ProdRcpActAddEdit,
		ProdRcpActDel,
		ProdRcpActGetInfo,
		ProdRcpActGetList,
		ProdRcpActFilter,
		ProdRcpActLoadRcp,
		ProdRcpActAdd,
		ProdRcpActEdit,
		ProdRcpActReadCurrRcp,
		ProdRcpActWriteCurrRcpParam,
		ProdRcpActSaveList,
		ProdRcpActSort,
		ProdRcpActEndCharFilter
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyProdRcpParam : 	STRUCT 
		sRcpNm : STRING[254];
		diWidthInUM : DINT;
		diWidthInUM2 : DINT;
		diIntvlCntr : DINT;
		diMinSltValue : DINT;
		diMaxSltValue : DINT;
		diPitch : DINT;
		usiMcMod : USINT;
		usiFlippedBrd : USINT;
		bTopToBtm : BOOL;
		bLongBrd : BOOL;
		sDisplayInfo : STRING[30];
		dtLastModified : DATE_AND_TIME;
		diWidthInUMRear : DINT;
		diPitchRear : DINT;
		diMinSltValueRear : DINT;
		diMaxSltValueRear : DINT;
		diMtrPshrExtSpd : DINT; (*Puller*)
		diMtrPshrExtTorq : DINT;
		diPshrOffset : DINT;
	END_STRUCT;
END_TYPE
