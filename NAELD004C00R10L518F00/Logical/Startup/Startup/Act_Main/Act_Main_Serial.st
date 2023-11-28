(** 2019-03-28 **)
ACTION Act_Main_Serial:

	CASE usiStep OF
		0:
			eFrmAct	:= FrmActCreateDir;
	
			IF (p_eFrmStatus = Done) AND (p_eFrmStat = FrmActCreateDir)THEN
			
				eFrmAct		:= FrmActIdle;
				usiStep			:= 1;
				
			ELSIF p_eFrmStatus = Error THEN
				
				eFrmAct			:= FrmActIdle;
				usiStep			:= 1;
				eStartupStep1	:= StartupStepHermes;
				
			END_IF
			
		1:
			eFrmAct	:= FrmActDeleteOldLog;

			IF (p_eFrmStatus = Done) AND (p_eFrmStat = FrmActDeleteOldLog) THEN 
				
				eFrmAct			:= FrmActIdle;
				usiStep			:= 2;
				
			ELSIF p_eFrmStatus = Error THEN
				
				eFrmAct			:= FrmActIdle;
				usiStep			:= 2;
				eStartupStep1	:= StartupStepHermes;
				
			END_IF
			
		2:
			eUSBAct	:= USBRdrActCreateDir;
			IF (p_eUSBStatus = Done) AND (p_eUSBStat = USBRdrActCreateDir) THEN
				eUSBAct		:= USBRdrActIdle;
				usiStep			:= 3;
				
			ELSIF  p_eUSBStatus = Error THEN
				eUSBAct			:= USBRdrActIdle;
				usiStep			:= 3;
			END_IF
		
		3:
			eUSBAct	:= USBRdrActDeleteOldLog;
			IF (p_eUSBStatus = Done) AND (p_eUSBStat = USBRdrActDeleteOldLog)THEN 
				eUSBAct			:= USBRdrActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepHermes;
				
			ELSIF p_eUSBStatus = Error THEN
				
				eUSBAct			:= USBRdrActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepHermes;
				
			END_IF
	END_CASE
	
END_ACTION
