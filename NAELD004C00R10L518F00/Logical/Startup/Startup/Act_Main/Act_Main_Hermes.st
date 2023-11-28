(** 2019-05-04 **)
ACTION Act_Main_Hermes:

	CASE usiStep OF
		0:
			eHermesAct	:= HermesActCreateDir;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActCreateDir) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 1;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		1:
			eHermesAct	:= HermesActReadRetain;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActReadRetain) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 2;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		2:
			eHermesAct	:= HermesActReadConfig;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActReadConfig) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		10:
			eRmtHermesAct	:= HermesActDeleteOldLog;
	
			IF (p_eRmtHermesStatus = Done) AND (p_eRmtHermesStat = HermesActDeleteOldLog) THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 11;
				
			ELSIF p_eRmtHermesStatus = Error THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 20;
				
			END_IF
			
		11:
			eRmtHermesAct	:= HermesActReadConfig;
	
			IF (p_eRmtHermesStatus = Done) AND (p_eRmtHermesStat = HermesActReadConfig) THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 20;
				
			ELSIF p_eRmtHermesStatus = Error THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 20;
				
			END_IF
				
		20:
			eDSHermesAAct	:= HermesActDeleteOldLog;
	
			IF (p_eDSHermesAStatus = Done) AND (p_eDSHermesAStat = HermesActDeleteOldLog) THEN
				
				eDSHermesAAct	:= HermesActIdle;
				usiStep			:= 30;
				
			ELSIF p_eDSHermesAStatus = Error THEN
				
				eDSHermesAAct	:= HermesActIdle;
				usiStep			:= 30;
				
			END_IF
			
		30:
			eDSHermesBAct	:= HermesActDeleteOldLog;
	
			IF (p_eDSHermesBStatus = Done) AND (p_eDSHermesBStat = HermesActDeleteOldLog) THEN
				
				eDSHermesBAct	:= HermesActIdle;
				usiStep			:= 0;
			//	eStartupStep1	:= StartupStepSDOWrite;
				eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF p_eDSHermesBStatus = Error THEN
				
				eDSHermesBAct	:= HermesActIdle;
				usiStep			:= 0;
			//	eStartupStep1	:= StartupStepSDOWrite;
				eStartupStep1	:= StartupStepSetupUI;
				
			END_IF
			
	END_CASE
	
END_ACTION
