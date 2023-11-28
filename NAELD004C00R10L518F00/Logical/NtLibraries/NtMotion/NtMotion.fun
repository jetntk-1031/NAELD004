(**)

FUNCTION_BLOCK fbMotionCANFullMovAbsBl (*CANopen Motion Control - Move Absolute With Basklash With Full Control Including Power On - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		bDirBl : {REDUND_UNREPLICABLE} BOOL; (*Backlash Direction (Default = FALSE, Reverse Direction = TRUE)*)
		bNoIndexPulse : {REDUND_UNREPLICABLE} BOOL; (*Homing Without Index Pulse (Direction Home At Limit Sensor)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal3; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANFullMovAbs (*CANopen Motion Control - Move Absolute With Full Control Including Power On - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		bNoIndexPulse : {REDUND_UNREPLICABLE} BOOL; (*Homing Without Index Pulse (Direction Home At Limit Sensor)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal3; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK
(**)

FUNCTION_BLOCK fbMotionCANFullMovRel (*CANopen Motion Control - Move Relative With Full Control Including Power On - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal2; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANFullHm (*CANopen Motion Control - Homing With Full Control Including Power On*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		bNoIndexPulse : {REDUND_UNREPLICABLE} BOOL; (*Homing Without Index Pulse (Direction Home At Limit Sensor)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : {REDUND_UNREPLICABLE} tyMotionCANInternal2; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK
(**)

FUNCTION_BLOCK fbMotionCANFullPwrOn (*CANopen Motion Control - Full Control Of Power On*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : {REDUND_UNREPLICABLE} tyMotionCANInternal1; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK
(**)

FUNCTION_BLOCK fbMotionCANModuleOK (*CANopen Motion Control - Module OK Check & Reset*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		bModuleOK : {REDUND_UNREPLICABLE} BOOL; (*Module OK*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device Name*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Node Number*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#3s; (*Reset Axis Error Delay Time*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANPwrOn (*CANopen Motion Control - Power On*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#3s; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANPwrOff (*CANopen Motion Control - Power Off*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2s; (*Time Out*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANHoming (*CANopen Motion Control - Homing*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		bNoIndexPulse : {REDUND_UNREPLICABLE} BOOL; (*Homing Without Index Pulse (Direction Home At Limit Sensor)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANMovAbs (*CANopen Motion Control - Move Absolute - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		DintTesting : DINT; (*Motor Direction*)
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANMovRel (*CANopen Motion Control - Move Relative - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANJog (*CANopen Motion Control - Jogging*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInJog : {REDUND_UNREPLICABLE} tyMotionCANParamInJog; (*Jog Parameters*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION fMotionCANJogStop : BOOL (*CANopen Motion Control - Stop Jogging*)
	VAR_INPUT
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
	END_VAR
END_FUNCTION

FUNCTION_BLOCK fbMotionCANRstAxisErr (*CANopen Motion Control - Reset Axis Error*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionCANStop (*CANopen Motion Control - Stop*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2s; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#100ms; (*Reset Axis Error Delay Time*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION fMotionCANRstCtrlWord : BOOL
	VAR_INPUT
		p_tyParamOutDriver : REFERENCE TO tyMotionCANDriverOut; (*Output - Parameters For Driver*)
	END_VAR
END_FUNCTION
(**)

FUNCTION fMotionCANUpdtDat : BOOL (*CANopen Motion Control Data Update - Delta Motor*)
	VAR_INPUT
		p_tyParamOut : REFERENCE TO tyMotionCANParamOut; (*Output - Parameters Output*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
		tyParamOutDriver : tyMotionCANDriverOut; (*Input Parameters For Driver*)
		tyParamInDriver : tyMotionCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInHm : tyMotionCANParamInHm; (*Homing Parameters*)
		bDir : BOOL; (*Motor Direction*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR
		fbSenChkDly : TON := (PT:=T#2s);
	END_VAR
END_FUNCTION

FUNCTION fMicrometerToPulse : DINT (*Convert um to pulse*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diMicrometer : DINT; (*um Value*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
	END_VAR
	VAR
		tyInternal : tyUMPulseConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fPulseToMicrometer : DINT (*Convert pulse to um*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diPulse : DINT; (*Pulse Value*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
	END_VAR
	VAR
		tyInternal : tyUMPulseConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION f100mRPMToUMPS : DINT (*Micrometer Per Sec Convert To 0.1 RPM*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		di100mRPM : DINT; (*0.1 RPM*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
	END_VAR
	VAR
		tyInternal : tyUMPS100mRPMConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fUMPSTo100mRPM : DINT (*Micrometer Per Sec Convert To 0.1 RPM*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diUMPS : DINT; (*um Value*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR
		tyInternal : tyUMPS100mRPMConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fLifterSltToPosInUMTopMin : DINT (*Convert Slot Number To Position In Micrometer - Top Minimum Slot Number*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diSlt : DINT;
		diSltToSltInUM : DINT;
		diMinSltPosInUM : DINT;
	END_VAR
	VAR
		tyInternal : tySltPosConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fLifterSltToPosInUMBtmMin : DINT (*Convert Slot Number To Position In Micrometer - Bottom Minimum Slot Number*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diSlt : DINT;
		diSltToSltInUM : DINT;
		diMinSltPosInUM : DINT;
	END_VAR
	VAR
		tyInternal : tySltPosConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fLifterPosInUMToSltTopMin : DINT (*Convert Position In Micrometer To Slot - Top Minimum Slot Number*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diPosInUM : DINT;
		diSltToSltInUM : DINT;
		diMinSltPosInUM : DINT;
	END_VAR
	VAR
		tyInternal : tySltPosConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fLifterPosInUMToSltBtmMin : DINT (*Convert Position In Micrometer To Slot - Bottom Minimum Slot Number*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diPosInUM : DINT;
		diSltToSltInUM : DINT;
		diMinSltPosInUM : DINT;
	END_VAR
	VAR
		tyInternal : tySltPosConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fAWWidthToPosInUM : DINT (*Convert Width To Position In Micrometer*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diWidthInUM : DINT;
		diWidthAtHmPosInUM : DINT;
	END_VAR
END_FUNCTION

FUNCTION fAWPosInUMToWidth : DINT (*Convert Position In Micrometer To Width*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diPosInUM : DINT; (*Position In Micrometer*)
		diWidthAtHmPosInUM : DINT; (*Width At Home Position In Micrometer*)
	END_VAR
END_FUNCTION

FUNCTION fMSToEstunHomeAccDec : DINT (*Convert ms to Delta Acc / Dec Value*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diAccDecInMS : DINT; (*Acc / Dec in ms*)
		diVelInUMPS : DINT; (*Moving Velocity in um/s*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
	END_VAR
	VAR
		tyInternal : tyMSAccConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fMSToDeltaAccDec : DINT (*Convert ms to Delta Acc / Dec Value*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diAccDecInMS : DINT; (*Acc / Dec in ms*)
		diVelInUMPS : DINT; (*Moving Velocity in um/s*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR
		tyInternal : tyMSAccConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fMSTo100mRPMPS : DINT (*Convert ms to 0.1RPM/s*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diAccDecInMS : DINT; (*Acc / Dec in ms*)
		diVelInUMPS : DINT; (*Moving Velocity in um/s*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
		eMotorType : eServoMotorType;
	END_VAR
	VAR
		tyInternal : tyMSAccConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fPitchCalc : DINT (*Convert ms to 0.1RPM/s*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diOffset : DINT; (*Offset Value From Min To Max*)
		diMax : DINT; (*Maximum Length*)
		diMin : DINT; (*Minimum Length*)
		diPitch : DINT; (*Original Pitch Value*)
	END_VAR
END_FUNCTION
(**)
(*SDO Read Write*)

FUNCTION_BLOCK fbCANSDOWriteArrayParam (*CANOpen SDO Write Array Param*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionCANParamOut; (*Parameters Output Get From fbMotionCAN*)
		tyTuning : {REDUND_UNREPLICABLE} tyMotionCANTuning; (*Servo Motor Tuning Value*)
		eMotorType : {REDUND_UNREPLICABLE} eServoMotorType;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyCANSDOWriteArrayInternal1; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbCANSDOReadArray (*CANOpen SDO Read Array*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be read (1-127 or 0 for local OD)*)
		a_tyParamIn : {REDUND_UNREPLICABLE} ARRAY[0..19] OF tyCANSDOReadArrayParamIn; (*Input - Parameter*)
	END_VAR
	VAR_OUTPUT
		a_tyParamOut : ARRAY[0..19] OF tyCANSDOReadArrayParamOut; (*Output - Parameter*)
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyCANSDOReadArrayInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbCANSDOWriteArray (*CANOpen SDO Write Array *) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
		a_tyParamIn : {REDUND_UNREPLICABLE} ARRAY[0..19] OF tyCANSDOWriteArrayParamIn; (*Parameter In*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyCANSDOWriteArrayInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK
(*Insert your comment here.*)

FUNCTION_BLOCK fbMotionSchILS1FCANPwrOn (*CANopen Motion Control - Power On*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#3s; (*Time Out*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANPwrOff (*CANopen Motion Control - Power Off*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2s; (*Time Out*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANJog (*CANopen Motion Control - Jogging*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInJog : {REDUND_UNREPLICABLE} tyMotionCANParamInJog; (*Jog Parameters*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Parameters Output Get From fbMotionCAN*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		usiAccSet : USINT;
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		fbCANSDOWrite : CANopenSDOWrite8; (*Local Variables*)
		intJogSpeedLog : INT;
		usiAcc : USINT;
		usiDec : USINT;
		dintSpeed : DINT;
		dintAcc : DINT;
		dintDec : DINT;
		tyInternal : tyMotionCANInternal; (*Local Variables*)
		zzEdge00000 : BOOL;
		bvalue1 : BOOL;
		bvalue2 : BOOL;
		usiACC : USINT;
		bCheck1 : BOOL;
		bCheck2 : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANRstAxisErr (*CANopen Motion Control - Reset Axis Error*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANMovAbs (*CANopen Motion Control - Move Absolute - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Parameters Output Get From fbMotionCAN*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		fbCANSDOWrite : CANopenSDOWrite8; (*Local Variables*)
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANMovRel (*CANopen Motion Control - Move Relative - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		fbCANSDOWrite : CANopenSDOWrite8; (*Local Variables*)
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANHoming (*CANopen Motion Control - Homing*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#300ms; (*Reset Axis Error Delay Time*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		fbCANSDOWrite : CANopenSDOWrite8; (*Local Variables*)
		tyInternal : tyMotionCANInternal; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANStop (*CANopen Motion Control - Stop*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInJog : {REDUND_UNREPLICABLE} tyMotionCANParamInJog; (*Jog Parameters*)
		tyParamInConvert : tyMotionCANParamInConvert;
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2s; (*Time Out*)
		tDlyTm : {REDUND_UNREPLICABLE} TIME := T#100ms; (*Reset Axis Error Delay Time*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionCANInternal; (*Local Variables*)
		fbCANSDOWrite : CANopenSDOWrite8;
		bCheck3 : BOOL;
		usiStep : USINT;
		dintDec : DINT;
		usiDec : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbCANSchILS1FSDOWriteArrayParam (*CANOpen SDO Write Array Param*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Parameters Output Get From fbMotionCAN*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyCANSDOWriteArrayInternal1; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANFullHm (*CANopen Motion Control - Homing With Full Control Including Power On*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANFullHm; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANFullMovAbs (*CANopen Motion Control - Move Absolute With Full Control Including Power On - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionSchILS1FCANFullMovAbs; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK fbMotionSchILS1FCANFullMovAbsBl (*CANopen Motion Control - Move Absolute With Full Control Including Power On - Delta Motor*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		bEn : {REDUND_UNREPLICABLE} BOOL; (*Enable*)
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
		tyParamOut : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInDriver : {REDUND_UNREPLICABLE} tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : {REDUND_UNREPLICABLE} tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInConvert : {REDUND_UNREPLICABLE} tyMotionCANParamInConvert; (*Convert Parameters*)
		bDir : {REDUND_UNREPLICABLE} BOOL; (*Motor Direction*)
		bDirBl : {REDUND_UNREPLICABLE} BOOL; (*Backlash Direction (Default = FALSE, Reverse Direction = TRUE)*)
		tTimeOut : {REDUND_UNREPLICABLE} TIME := T#2m; (*Time Out*)
		sDevice : {REDUND_UNREPLICABLE} STRING[80]; (*Device name (syntax: SL<x>.SS<y>.IF<z>)*)
		usiNode : {REDUND_UNREPLICABLE} USINT; (*Address of the node to be write (1-127 or 0 for local OD)*)
	END_VAR
	VAR_OUTPUT
		udiStatus : UDINT; (*Ready = 65534 , Busy = 65535 , Done = 0 , Other = Error ID*)
	END_VAR
	VAR
		tyInternal : tyMotionSchILS1FCANFullMovAbs; (*Local Variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION fSchILS1FUMPSTo100mRPM : DINT (*Micrometer Per Sec Convert To 0.1 RPM*) (*$GROUP=Nutek,$CAT=User,$GROUPICON=Icon_Nutek.png,$CATICON=User.png*)
	VAR_INPUT
		diUMPS : DINT; (*um Value*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
	END_VAR
	VAR
		tyInternal : tyUMPS100mRPMConvertInternal; (*Local Variables*)
	END_VAR
END_FUNCTION

FUNCTION fMotionSchILS1FCANUpdtDat : BOOL (*CANopen Motion Control Data Update - Delta Motor*)
	VAR_INPUT
		p_tyParamOut : REFERENCE TO tyMotionSchILS1FCANParamOut; (*Output - Parameters Output*)
		tyParamInConvert : tyMotionCANParamInConvert; (*Convert Parameters*)
		tyParamOutDriver : tyMotionSchILS1FCANDriverOut; (*Input Parameters For Driver*)
		tyParamInDriver : tyMotionSchILS1FCANDriverIn; (*Input Parameters For Driver*)
		tyParamInMove : tyMotionCANParamInMove; (*Move Parameters*)
		tyParamInHm : tyMotionSchILS1FCANParamInHm; (*Homing Parameters*)
		bDir : BOOL; (*Motor Direction*)
	END_VAR
	VAR
		fbFwdLmtSenChkDly : TON := (PT:=T#1s);
		fbRevLmtSenChkDly : TON := (PT:=T#1s);
	END_VAR
END_FUNCTION

FUNCTION fMotionSchILS1FCANJogStop : BOOL (*CANopen Motion Control - Stop Jogging*)
	VAR_INPUT
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
	END_VAR
END_FUNCTION

FUNCTION fMotionSchILS1FCANRstCtrlWord : BOOL
	VAR_INPUT
		p_tyParamOutDriver : REFERENCE TO tyMotionSchILS1FCANDriverOut; (*Output - Parameters For Driver*)
	END_VAR
END_FUNCTION
