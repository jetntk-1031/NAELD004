/* Automation Studio generated header file */
/* Do not edit ! */
/* NtMotion 5.01.0 */

#ifndef _NTMOTION_
#define _NTMOTION_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _NtMotion_VERSION
#define _NtMotion_VERSION 5.01.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum eServoMotorType
{	DeltaAsdaA2,
	SchneiderLexium28,
	EstunPronet,
	LeadShineEM556
} eServoMotorType;

typedef struct tyMotionCANTuning
{	signed long diAsdaA2Inertia;
	signed long diAsdaA2PosLoopGain;
	signed long diAsdaA2PosFFGain;
	signed long diAsdaA2SpdLoopGain;
	signed long diAsdaA2SpdIntegral;
	signed long diAsdaA2LowPassFltr;
	signed long diAsdaA2AntiInterGain;
	signed long diAsdaA2FirstTorqueCmd;
	signed long diLex28LTNDderivativeGain_P800;
	signed long diLex28LTNIintegralGain_P801;
	signed long diLex28LTNIVdeIntlGain_P802;
	signed long diLex28LTNPpropotionalGain_P803;
	signed long diLex28LTNUSERGAIN_P804;
	signed long diLex28NLAFFLPFHZspringFil_P805;
	signed long diLex28NLFILTDAMPING_P814;
	signed long diLex28NLFILTT1_P815;
	signed long diPronetInertia;
	signed long diPronetRealTimeAutoAdjSet;
	signed long diPronetPosLoopGain;
	signed long diPronetSpdLoopGain;
	signed long diPronetSpdIntegral;
	signed long diPronetTorqueFilter;
	signed long diPronetPosFeedForward;
	signed long diPronetLowSpeedTestFiltering;
	signed long diPronetStopMode;
} tyMotionCANTuning;

typedef struct tyMotionCANInternal
{	unsigned char usiStep;
	unsigned long udiErrStatus;
	struct TON fbHomeSenTO;
	struct TON fbTO;
	struct TON fbTO1;
	struct TON fbTm;
	struct TON fbTm1;
	struct TON fbTm2;
	signed long diMovPosInUM;
	struct CANopenNMT fbRstNode;
	unsigned char usiCntr;
	unsigned char usiCntr1;
	struct TON fbDecTm;
} tyMotionCANInternal;

typedef struct tyMotionCANDriverOut
{	signed long diJogVel_60FF;
	signed long diTargetPos_607A;
	signed char siHmMethod_6098;
	signed char siModOfOpt_6060;
	unsigned long udiMoveSpd_6081;
	unsigned short uiCtrlword_6040;
	unsigned long udiSchProfileAcc_6083;
	unsigned long udiSchProfileDec_6084;
	unsigned short siSchHmMethod_6098;
} tyMotionCANDriverOut;

typedef struct fbMotionCANRstAxisErr
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	plctime tDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANRstAxisErr_typ;

typedef struct tyMotionCANDriverIn
{	signed long diActualPos_6064;
	signed char siModOfOptDisp_6061;
	unsigned short uiErrCode_603F;
	unsigned short uiStatword_6041;
	unsigned long udiDigitalInputs_60FD;
} tyMotionCANDriverIn;

typedef struct fbMotionCANPwrOn
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANPwrOn_typ;

typedef struct tyMotionCANInternal1
{	unsigned char usiStep;
	unsigned char usiAxisErrCnt;
	unsigned char usiPwrOnCnt;
	struct fbMotionCANRstAxisErr fbMotionCANRstAxisErr;
	struct fbMotionCANPwrOn fbMotionCANPwrOn;
} tyMotionCANInternal1;

typedef struct tyMotionCANParamOut
{	plcbit bPwrOn;
	plcbit bIsHomed;
	plcbit bInPos;
	plcbit bStopped;
	plcbit bFwdLmtSen;
	plcbit bRevLmtSen;
	plcbit bAxisErr;
	plcbit bPosDiff;
	signed long diActualPosInUM;
	unsigned long udiAxisErrID;
	signed long diHmSpdForSwitch;
	signed long diHmSpdForZero;
	signed long diProfileAcc;
	signed long diProfileDec;
	signed long diHmAcc;
	unsigned long diSchProfileAcc;
	unsigned long diSchProfileDec;
	signed long diSchHmMode;
} tyMotionCANParamOut;

typedef struct fbMotionCANFullPwrOn
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal1 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANFullPwrOn_typ;

typedef struct fbMotionCANHoming
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	plctime tDlyTm;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
	plcbit bNoIndexPulse;
} fbMotionCANHoming_typ;

typedef struct tyMotionCANParamInMove
{	signed long diPosInUM;
	signed long diDistInUM;
	signed long diBacklashDistInUM;
	signed long diVelInUMPS;
	signed long diAcc;
	signed long diDec;
} tyMotionCANParamInMove;

typedef struct tyMotionCANParamInConvert
{	signed long diPitchInUM;
	signed long diPulsePerRev;
	signed long diPrimaryGearRatio;
	signed long diSecondaryGearRatio;
} tyMotionCANParamInConvert;

typedef struct fbMotionCANMovRel
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	plctime tDlyTm;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionCANMovRel_typ;

typedef struct fbMotionCANStop
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	plctime tDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANStop_typ;

typedef struct tyMotionCANInternal2
{	unsigned char usiStep;
	unsigned long udiErrStatus;
	struct TON fbTO;
	struct fbMotionCANFullPwrOn fbMotionCANFullPwrOn;
	struct fbMotionCANHoming fbMotionCANHoming;
	struct fbMotionCANMovRel fbMotionCANMovRel;
	struct fbMotionCANStop fbMotionCANStop;
} tyMotionCANInternal2;

typedef struct fbMotionCANFullHm
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal2 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
	plcbit bNoIndexPulse;
} fbMotionCANFullHm_typ;

typedef struct fbMotionCANMovAbs
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	plctime tDlyTm;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	signed long DintTesting;
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionCANMovAbs_typ;

typedef struct tyMotionCANInternal3
{	plcbit bLimitMoveAllowed;
	unsigned char usiStep;
	unsigned long udiErrStatus;
	signed long diMovePosInUM;
	struct fbMotionCANFullHm fbMotionCANFullHm;
	struct fbMotionCANMovAbs fbMotionCANMovAbs;
	struct fbMotionCANMovAbs fbMotionCANMovAbsBl;
	struct fbMotionCANStop fbMotionCANStop;
} tyMotionCANInternal3;

typedef struct tyMotionCANInternal4
{	struct fbMotionCANMovAbs fbMotionCANMovAbs;
	struct fbMotionCANMovRel fbMotionCANMovRel;
} tyMotionCANInternal4;

typedef struct tyCANSDOWriteArrayParamIn
{	unsigned short uiIdx;
	unsigned char usiSubIdx;
	unsigned long udiDat;
	unsigned char usiDatLen;
} tyCANSDOWriteArrayParamIn;

typedef struct tyCANSDOWriteArrayInternal
{	unsigned char usiLoopIdx;
	struct CANopenSDOWrite8 fbCANSDOWrite;
} tyCANSDOWriteArrayInternal;

typedef struct fbCANSDOWriteArray
{
	/* VAR_INPUT (analog) */
	plcstring sDevice[81];
	unsigned char usiNode;
	struct tyCANSDOWriteArrayParamIn a_tyParamIn[20];
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyCANSDOWriteArrayInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbCANSDOWriteArray_typ;

typedef struct tyCANSDOWriteArrayInternal1
{	struct fbCANSDOWriteArray fbCANSDOWriteArray;
} tyCANSDOWriteArrayInternal1;

typedef struct tyCANSDOReadArrayInternal
{	unsigned char usiLoopIdx;
	struct CANopenSDORead8 fbCANSDORead;
} tyCANSDOReadArrayInternal;

typedef struct tyCANSDOReadArrayParamIn
{	unsigned short uiIdx;
	unsigned char usiSubIdx;
} tyCANSDOReadArrayParamIn;

typedef struct tyCANSDOReadArrayParamOut
{	unsigned long udiDat;
	unsigned char usiDatLen;
} tyCANSDOReadArrayParamOut;

typedef struct tyMotionCANParamInHm
{	signed char siMode;
	signed long diStartVelInUMPS;
	signed long diOffsetVelInUMPS;
	signed long diAcc;
} tyMotionCANParamInHm;

typedef struct tyMotionCANParamInJog
{	signed long diVelInUMPS;
	signed long diAccInUMPS;
	signed long diDecInUMPS;
} tyMotionCANParamInJog;

typedef struct tyUMPulseConvertInternal
{	float rMicrometer;
	float rPitchInUM;
	float rPrimaryGearRatio;
	float rPulse;
	float rPulsePerRev;
	float rSecondaryGearRatio;
} tyUMPulseConvertInternal;

typedef struct tyUMPS100mRPMConvertInternal
{	float rUMPS;
	float rPitchInUM;
	float rPrimaryGearRatio;
	float r100mRPM;
	float rSecondaryGearRatio;
} tyUMPS100mRPMConvertInternal;

typedef struct tySltPosConvertInternal
{	float rPosInUM;
	float rSlt;
	float rMinSltPosInUM;
	float rSltToSltInUM;
} tySltPosConvertInternal;

typedef struct tyMSAccConvertInternal
{	float rAccDecInMSOut;
	float rAccDecInMSIn;
	float rPitchInMM;
	float rGearRatio;
	float rVelInMMPS;
	float rVelInRPM;
	float rVelIn100mRPM;
	float rAccDecIn100mRPMPS;
	float rPulsePerRev;
} tyMSAccConvertInternal;

typedef struct tyMotionSchILS1FCANDriverOut
{	unsigned char usiDriveCtrl_301Esub1;
	unsigned char usiModeCtrl_301Esub2;
	signed short intRef16_301Esub5;
	signed long diRef32_301Esub6;
} tyMotionSchILS1FCANDriverOut;

typedef struct tyMotionSchILS1FCANDriverIn
{	unsigned char usiModeStat_301Esub3;
	unsigned short uiDriveStat_301Esub4;
	signed char siAct8_301Esub7;
	signed long diAct32_301Esub8;
} tyMotionSchILS1FCANDriverIn;

typedef struct tyMotionSchILS1FCANParamOut
{	plcbit bPwrOn;
	plcbit bIsHomed;
	plcbit bInPos;
	plcbit bStopped;
	plcbit bFwdLmtSen;
	plcbit bRevLmtSen;
	plcbit bAxisErr;
	plcbit bPosDiff;
	signed long diActualPosInUM;
	unsigned long udiAxisErrID;
	unsigned long udiHmMode;
	unsigned long udiHmSpdToSwitch;
	unsigned long udiHmSpdFromSwitch;
	unsigned long udiHmDistFromSwitch;
} tyMotionSchILS1FCANParamOut;

typedef struct tyMotionSchILS1FCANParamInHm
{	signed long udiHmSpdToSwitchInUMPS;
	signed long udiHmSpdFromSwitchInUMPS;
	signed long udiHmDistFromSwitchInUM;
} tyMotionSchILS1FCANParamInHm;

typedef struct fbMotionSchILS1FCANPwrOn
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionSchILS1FCANPwrOn_typ;

typedef struct fbMotionSchILS1FCANHoming
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	plctime tDlyTm;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct CANopenSDOWrite8 fbCANSDOWrite;
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionSchILS1FCANHoming_typ;

typedef struct fbMotionSchILS1FCANStop
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInJog tyParamInJog;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plcstring sDevice[81];
	unsigned char usiNode;
	plctime tTimeOut;
	plctime tDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	struct CANopenSDOWrite8 fbCANSDOWrite;
	unsigned char usiStep;
	signed long dintDec;
	unsigned char usiDec;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	/* VAR (digital) */
	plcbit bCheck3;
} fbMotionSchILS1FCANStop_typ;

typedef struct tyMotionSchILS1FCANFullHm
{	unsigned char usiStep;
	unsigned long udiErrStatus;
	struct TON fbTO;
	struct fbMotionSchILS1FCANPwrOn fbMotionCANFullPwrOn;
	struct fbMotionSchILS1FCANHoming fbMotionCANHoming;
	struct fbMotionSchILS1FCANStop fbMotionCANStop;
} tyMotionSchILS1FCANFullHm;

typedef struct tyMotionSchILS1FCANParam
{	signed long diAutoSpdInUMPS;
	signed long diBacklashDistInUM;
} tyMotionSchILS1FCANParam;

typedef struct fbMotionSchILS1FCANFullHm
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionSchILS1FCANFullHm tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionSchILS1FCANFullHm_typ;

typedef struct fbMotionSchILS1FCANMovAbs
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	plctime tTimeOut;
	plctime tDlyTm;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct CANopenSDOWrite8 fbCANSDOWrite;
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionSchILS1FCANMovAbs_typ;

typedef struct fbMotionSchILS1FCANJog
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamInConvert tyParamInConvert;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInJog tyParamInJog;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	plcstring sDevice[81];
	unsigned char usiNode;
	plctime tTimeOut;
	plctime tDlyTm;
	unsigned char usiAccSet;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct CANopenSDOWrite8 fbCANSDOWrite;
	signed short intJogSpeedLog;
	unsigned char usiAcc;
	unsigned char usiDec;
	signed long dintSpeed;
	signed long dintAcc;
	signed long dintDec;
	struct tyMotionCANInternal tyInternal;
	unsigned char usiACC;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	/* VAR (digital) */
	plcbit zzEdge00000;
	plcbit bvalue1;
	plcbit bvalue2;
	plcbit bCheck1;
	plcbit bCheck2;
} fbMotionSchILS1FCANJog_typ;

typedef struct tyMotionSchILS1FCANFullMovAbs
{	plcbit bLimitMoveAllowed;
	unsigned char usiStep;
	unsigned long udiErrStatus;
	signed long diMovePosInUM;
	struct fbMotionSchILS1FCANFullHm fbMotionCANFullHm;
	struct fbMotionSchILS1FCANMovAbs fbMotionCANMovAbs;
	struct fbMotionSchILS1FCANMovAbs fbMotionCANMovAbsBl;
	struct fbMotionSchILS1FCANStop fbMotionCANStop;
	struct fbMotionSchILS1FCANJog fbMotionCANJog;
	struct TON fbTO;
} tyMotionSchILS1FCANFullMovAbs;

typedef struct fbMotionCANFullMovAbsBl
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal3 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
	plcbit bDirBl;
	plcbit bNoIndexPulse;
} fbMotionCANFullMovAbsBl_typ;

typedef struct fbMotionCANFullMovAbs
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal3 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
	plcbit bNoIndexPulse;
} fbMotionCANFullMovAbs_typ;

typedef struct fbMotionCANFullMovRel
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal2 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionCANFullMovRel_typ;

typedef struct fbMotionCANModuleOK
{
	/* VAR_INPUT (analog) */
	plcstring sDevice[81];
	unsigned char usiNode;
	plctime tDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bModuleOK;
} fbMotionCANModuleOK_typ;

typedef struct fbMotionCANPwrOff
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANPwrOff_typ;

typedef struct fbMotionCANJog
{
	/* VAR_INPUT (analog) */
	struct tyMotionCANDriverOut* p_tyParamOutDriver;
	struct tyMotionCANParamInConvert tyParamInConvert;
	struct tyMotionCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInJog tyParamInJog;
	struct tyMotionCANParamInMove tyParamInMove;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionCANJog_typ;

typedef struct fbCANSDOWriteArrayParam
{
	/* VAR_INPUT (analog) */
	plcstring sDevice[81];
	unsigned char usiNode;
	struct tyMotionCANParamOut tyParamOut;
	struct tyMotionCANTuning tyTuning;
	enum eServoMotorType eMotorType;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyCANSDOWriteArrayInternal1 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbCANSDOWriteArrayParam_typ;

typedef struct fbCANSDOReadArray
{
	/* VAR_INPUT (analog) */
	plcstring sDevice[81];
	unsigned char usiNode;
	struct tyCANSDOReadArrayParamIn a_tyParamIn[20];
	/* VAR_OUTPUT (analog) */
	struct tyCANSDOReadArrayParamOut a_tyParamOut[20];
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyCANSDOReadArrayInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbCANSDOReadArray_typ;

typedef struct fbMotionSchILS1FCANPwrOff
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	plctime tTimeOut;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionSchILS1FCANPwrOff_typ;

typedef struct fbMotionSchILS1FCANRstAxisErr
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	plctime tDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbMotionSchILS1FCANRstAxisErr_typ;

typedef struct fbMotionSchILS1FCANMovRel
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	plctime tDlyTm;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct CANopenSDOWrite8 fbCANSDOWrite;
	struct tyMotionCANInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionSchILS1FCANMovRel_typ;

typedef struct fbCANSchILS1FSDOWriteArrayParam
{
	/* VAR_INPUT (analog) */
	plcstring sDevice[81];
	unsigned char usiNode;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyCANSDOWriteArrayInternal1 tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbCANSchILS1FSDOWriteArrayParam_typ;

typedef struct fbMotionSchILS1FCANFullMovAbs
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionSchILS1FCANFullMovAbs tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
} fbMotionSchILS1FCANFullMovAbs_typ;

typedef struct fbMotionSchILS1FCANFullMovAbsBl
{
	/* VAR_INPUT (analog) */
	struct tyMotionSchILS1FCANDriverOut* p_tyParamOutDriver;
	struct tyMotionSchILS1FCANParamOut tyParamOut;
	struct tyMotionSchILS1FCANDriverIn tyParamInDriver;
	struct tyMotionCANParamInMove tyParamInMove;
	struct tyMotionCANParamInConvert tyParamInConvert;
	plctime tTimeOut;
	plcstring sDevice[81];
	unsigned char usiNode;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyMotionSchILS1FCANFullMovAbs tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDir;
	plcbit bDirBl;
} fbMotionSchILS1FCANFullMovAbsBl_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void fbMotionCANFullMovAbsBl(struct fbMotionCANFullMovAbsBl* inst);
_BUR_PUBLIC void fbMotionCANFullMovAbs(struct fbMotionCANFullMovAbs* inst);
_BUR_PUBLIC void fbMotionCANFullMovRel(struct fbMotionCANFullMovRel* inst);
_BUR_PUBLIC void fbMotionCANFullHm(struct fbMotionCANFullHm* inst);
_BUR_PUBLIC void fbMotionCANFullPwrOn(struct fbMotionCANFullPwrOn* inst);
_BUR_PUBLIC void fbMotionCANModuleOK(struct fbMotionCANModuleOK* inst);
_BUR_PUBLIC void fbMotionCANPwrOn(struct fbMotionCANPwrOn* inst);
_BUR_PUBLIC void fbMotionCANPwrOff(struct fbMotionCANPwrOff* inst);
_BUR_PUBLIC void fbMotionCANHoming(struct fbMotionCANHoming* inst);
_BUR_PUBLIC void fbMotionCANMovAbs(struct fbMotionCANMovAbs* inst);
_BUR_PUBLIC void fbMotionCANMovRel(struct fbMotionCANMovRel* inst);
_BUR_PUBLIC void fbMotionCANJog(struct fbMotionCANJog* inst);
_BUR_PUBLIC void fbMotionCANRstAxisErr(struct fbMotionCANRstAxisErr* inst);
_BUR_PUBLIC void fbMotionCANStop(struct fbMotionCANStop* inst);
_BUR_PUBLIC void fbCANSDOWriteArrayParam(struct fbCANSDOWriteArrayParam* inst);
_BUR_PUBLIC void fbCANSDOReadArray(struct fbCANSDOReadArray* inst);
_BUR_PUBLIC void fbCANSDOWriteArray(struct fbCANSDOWriteArray* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANPwrOn(struct fbMotionSchILS1FCANPwrOn* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANPwrOff(struct fbMotionSchILS1FCANPwrOff* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANJog(struct fbMotionSchILS1FCANJog* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANRstAxisErr(struct fbMotionSchILS1FCANRstAxisErr* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANMovAbs(struct fbMotionSchILS1FCANMovAbs* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANMovRel(struct fbMotionSchILS1FCANMovRel* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANHoming(struct fbMotionSchILS1FCANHoming* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANStop(struct fbMotionSchILS1FCANStop* inst);
_BUR_PUBLIC void fbCANSchILS1FSDOWriteArrayParam(struct fbCANSchILS1FSDOWriteArrayParam* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANFullHm(struct fbMotionSchILS1FCANFullHm* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANFullMovAbs(struct fbMotionSchILS1FCANFullMovAbs* inst);
_BUR_PUBLIC void fbMotionSchILS1FCANFullMovAbsBl(struct fbMotionSchILS1FCANFullMovAbsBl* inst);
_BUR_PUBLIC plcbit fMotionCANJogStop(struct tyMotionCANDriverOut** p_tyParamOutDriver);
_BUR_PUBLIC plcbit fMotionCANRstCtrlWord(struct tyMotionCANDriverOut** p_tyParamOutDriver);
_BUR_PUBLIC plcbit fMotionCANUpdtDat(struct tyMotionCANParamOut** p_tyParamOut, struct tyMotionCANParamInConvert* tyParamInConvert, struct tyMotionCANDriverOut* tyParamOutDriver, struct tyMotionCANDriverIn* tyParamInDriver, struct tyMotionCANParamInMove* tyParamInMove, struct tyMotionCANParamInHm* tyParamInHm, plcbit bDir, enum eServoMotorType eMotorType);
_BUR_PUBLIC signed long fMicrometerToPulse(signed long diMicrometer, struct tyMotionCANParamInConvert* tyParamInConvert);
_BUR_PUBLIC signed long fPulseToMicrometer(signed long diPulse, struct tyMotionCANParamInConvert* tyParamInConvert);
_BUR_PUBLIC signed long f100mRPMToUMPS(signed long di100mRPM, struct tyMotionCANParamInConvert* tyParamInConvert);
_BUR_PUBLIC signed long fUMPSTo100mRPM(signed long diUMPS, struct tyMotionCANParamInConvert* tyParamInConvert, enum eServoMotorType eMotorType);
_BUR_PUBLIC signed long fLifterSltToPosInUMTopMin(signed long diSlt, signed long diSltToSltInUM, signed long diMinSltPosInUM);
_BUR_PUBLIC signed long fLifterSltToPosInUMBtmMin(signed long diSlt, signed long diSltToSltInUM, signed long diMinSltPosInUM);
_BUR_PUBLIC signed long fLifterPosInUMToSltTopMin(signed long diPosInUM, signed long diSltToSltInUM, signed long diMinSltPosInUM);
_BUR_PUBLIC signed long fLifterPosInUMToSltBtmMin(signed long diPosInUM, signed long diSltToSltInUM, signed long diMinSltPosInUM);
_BUR_PUBLIC signed long fAWWidthToPosInUM(signed long diWidthInUM, signed long diWidthAtHmPosInUM);
_BUR_PUBLIC signed long fAWPosInUMToWidth(signed long diPosInUM, signed long diWidthAtHmPosInUM);
_BUR_PUBLIC signed long fMSToEstunHomeAccDec(signed long diAccDecInMS, signed long diVelInUMPS, struct tyMotionCANParamInConvert* tyParamInConvert);
_BUR_PUBLIC signed long fMSToDeltaAccDec(signed long diAccDecInMS, signed long diVelInUMPS, struct tyMotionCANParamInConvert* tyParamInConvert, enum eServoMotorType eMotorType);
_BUR_PUBLIC signed long fMSTo100mRPMPS(signed long diAccDecInMS, signed long diVelInUMPS, struct tyMotionCANParamInConvert* tyParamInConvert, enum eServoMotorType eMotorType);
_BUR_PUBLIC signed long fPitchCalc(signed long diOffset, signed long diMax, signed long diMin, signed long diPitch);
_BUR_PUBLIC signed long fSchILS1FUMPSTo100mRPM(signed long diUMPS, struct tyMotionCANParamInConvert* tyParamInConvert);
_BUR_PUBLIC plcbit fMotionSchILS1FCANUpdtDat(struct tyMotionSchILS1FCANParamOut** p_tyParamOut, struct tyMotionCANParamInConvert* tyParamInConvert, struct tyMotionSchILS1FCANDriverOut* tyParamOutDriver, struct tyMotionSchILS1FCANDriverIn* tyParamInDriver, struct tyMotionCANParamInMove* tyParamInMove, struct tyMotionSchILS1FCANParamInHm* tyParamInHm, plcbit bDir);
_BUR_PUBLIC plcbit fMotionSchILS1FCANJogStop(struct tyMotionSchILS1FCANDriverOut** p_tyParamOutDriver);
_BUR_PUBLIC plcbit fMotionSchILS1FCANRstCtrlWord(struct tyMotionSchILS1FCANDriverOut** p_tyParamOutDriver);


#ifdef __cplusplus
};
#endif
#endif /* _NTMOTION_ */

