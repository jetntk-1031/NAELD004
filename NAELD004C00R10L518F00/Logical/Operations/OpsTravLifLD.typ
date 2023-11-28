(*2018-12-11*)
(**)
(*Configuration*)

TYPE
	eLDMod : 
		(
		LDModLoadLnA,
		LDModLoadLnB,
		LDModLoadLnAB
		);
	eLDMag : 
		(
		LDMagDual,
		LDMagTriple,
		LDMagQuadruple
		);
END_TYPE

(**)

TYPE
	tyParamTravLifLD : 	STRUCT 
		a_bUSDis : ARRAY[1..4]OF BOOL := [4(FALSE)];
		a_bDSDis : ARRAY[1..4]OF BOOL := [4(FALSE)];
		a_usiUSPriority : ARRAY[1..4]OF USINT := [1,2,3,1(0)];
		a_usiDSPriority : ARRAY[1..4]OF USINT := [1,2,3,1(0)];
	END_STRUCT;
END_TYPE

(**)
(*Sequence*)

TYPE
	eTravLifLDStep : 
		(
		TravLifLDStepNA,
		TravLifLDStepInitConv,
		TravLifLDStepInitInletPneuCls,
		TravLifLDStepInitInOutPneuCls,
		TravLifLDStepInitTravLif,
		TravLifLDStepInitAWTravLif,
		TravLifLDStepAWMov,
		TravLifLDStepTravLifMov,
		TravLifLDStepUSSigWait,
		TravLifLDStepUSSigRechk,
		TravLifLDStepInletPneuOpn,
		TravLifLDStepUSSigRechkTwice,
		TravLifLDStepUSComm,
		TravLifLDStepEntBrd,
		TravLifLDStepInletPneuCls,
		TravLifLDStepDSSigWait,
		TravLifLDStepDSSigRechk,
		TravLifLDStepOutletPneuOpn,
		TravLifLDStepDSSigRechkTwice,
		TravLifLDStepChkRgtSenForDBAOn,
		TravLifLDStepDSComm,
		TravLifLDStepExitBrd,
		TravLifLDStepOutletPneuCls,
		TravLifLDStepTranInErr
		);
	eTravLifLDStep1 : 
		(
		TravLifLDStep1NA,
		TravLifLDStep1InitConv,
		TravLifLDStep1InitInletPneuCls,
		TravLifLDStep1InitInOutPneuCls,
		TravLifLDStep1InitTravLif,
		TravLifLDStep1InitAWTravLif,
		TravLifLDStep1DSSigWait100,
		TravLifLDStep1AWMov,
		TravLifLDStep1Standby,
		TravLifLDStep1USSigWait,
		TravLifLDStep1PreEntAllServo200,
		TravLifLDStep1PreEntMove300,
		TravLifLDStep1TraLifNxtUnlBffr,
		TravLifLDStep1PreEntTravLifMov,
		TravLifLDStep1EntTraLifMovRotCyl,
		TravLifLDStep1USSigRechk,
		TravLifLDStep1InletPneuOpn,
		MagPlat_Step1InletPneuOpn,
		TravLifLDStep1USSigRechkTwice,
		TravLifLDStep1USMagWidthChk,
		TravLifLDStep1USComm,
		TravLifLDStep1EntPullerExt,
		TravLifLDStep1EntPullerRetWait,
		TravLifLDStep1EntTravLifMov,
		TravLifLDStep1EntBrd,
		MagPlat_Step1EntBrd,
		TravLifLDStep1InletPneuCls,
		MagPlat_Step1InletPneuCls,
		TravLifLDStep1DSSigWait,
		TravLifLDStep1ExitTravLifMov,
		TravLifLDStep1InShutClsInt,
		TravLifLDStep1DSSigRechk,
		TravLifLDStep1OutletPneuOpn,
		TravLifLDStep1DSSigRechkTwice,
		TravLifLDStep1ChkRgtSenForDBAOn,
		TravLifLDStep1DSComm,
		TravLifLDStep1ExitBrd,
		TravLifLDStep1OutletPneuCls,
		TravLifLDStep1TranInErr,
		TravLifLDStep1TranOutBrdStuckErr,
		TravLifLDStep1MagWidthErr,
		TravLifLDStep1OutletShutErr,
		TravLifLDStep1ConvEntBrdLostErr
		);
	eTravLifLDPos : 
		(
		TravLifLDPosInvalid,
		TravLifLDPosUS1,
		TravLifLDPosUS2,
		TravLifLDPosUS3,
		TravLifLDPosDS1,
		TravLifLDPosDS2,
		TravLifLDPosDS3,
		TravLifLDPosUS4
		);
END_TYPE
