(** 2020-05-26 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bOps ACCESS ADR(bOps);
	p_bManual ACCESS ADR(bManual);
	p_diWidthAtHmPos ACCESS ADR(diWidthAtHmPos);
	p_tyTuning ACCESS ADR(tyTuning);
	p_diGoWidth ACCESS ADR(diGoWidth);
	p_diJogVelInUMPS ACCESS ADR(diJogVelInUMPS);
	p_diMovePosInUM ACCESS ADR(diMovePosInUM);
	p_diMoveDistInUM ACCESS ADR(diMoveDistInUM);
	p_diMoveVelInUMPS ACCESS ADR(diMoveVelInUMPS);
	p_diMoveAcc ACCESS ADR(diMoveAcc);
	p_diMoveDec ACCESS ADR(diMoveDec);
	p_diMinAbsPosInUM ACCESS ADR(diMinAbsPosInUM);
	p_diMaxAbsPosInUM ACCESS ADR(diMaxAbsPosInUM);
	p_diMinWidthInUM ACCESS ADR(diMinWidthInUM);
	p_diMaxWidthInUM ACCESS ADR(diMaxWidthInUM);
	p_diWidthOffsetInUM ACCESS ADR(diWidthOffsetInUM);
	p_bInletSensor ACCESS ADR(bInletSensor);
	p_bOutletSensor ACCESS ADR(bOutletSensor);
	p_bClearSensor ACCESS ADR(bClearSensor);
	p_bMiddleSensor ACCESS ADR(bMiddleSensor);
	p_bInterruptSensor ACCESS ADR(bInterruptSensor);
	p_bOpenInterruptSensor ACCESS ADR(bOpenInterruptSensor);
	p_bCloseInterruptSensor ACCESS ADR(bCloseInterruptSensor);
	p_bDir ACCESS ADR(bDir);
	p_bDirBl ACCESS ADR(bDirBl);
	p_bNoIndexPulse ACCESS ADR(bNoIndexPulse);
	p_usiNode ACCESS ADR(usiNode);
	p_sDevice ACCESS ADR(sDevice);
	p_sProgNm ACCESS ADR(sProgNm);
	p_diMoveBacklashDistInUM ACCESS ADR(diMoveBacklashDistInUM);
	p_diPitchInUM ACCESS ADR(diPitchInUM);
	p_tyParamInHm ACCESS ADR(tyParamInHm);
	p_tyParamInConvert ACCESS ADR(tyParamInConvert);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_eNtParamMotorType ACCESS ADR(eMotorType);
	p_diServoTorque ACCESS ADR(diServoTorque);
	p_diRcp1MtrPshrExtTorq ACCESS ADR(diRcp1MtrPshrExtTorq);
END_ACTION
