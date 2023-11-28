(** 2019-10-21 **)
ACTION Act_Main_SDOWrite:
	
	CASE usiStep OF
	
		0:
			eAWPushPulAct	:= AWActBGStartModOKChk;
			
			IF (p_eAWPushOrPullerStatus = Done) AND (p_eAWPushOrPullerStat = AWActBGStartModOKChk) THEN
				
				eAWPushPulAct	:= AWActIdle;
				usiStep		:= 5;
				
			ELSIF p_eAWPushOrPullerStatus = Error THEN
				
				eAWPushPulAct		:= AWActIdle;
				usiStep		:= 5;
				
			END_IF
			
			
		5:
			eAWAct	:= AWActBGStartModOKChk;
			
			IF (p_eAWStatus = Done) AND (p_eAWStat = AWActBGStartModOKChk) THEN
				
				eAWAct		:= AWActIdle;
				usiStep		:= 10;
				
			ELSIF p_eAWStatus = Error THEN
				
				eAWAct		:= AWActIdle;
				usiStep		:= 10;
				
			END_IF
			
		10:
			eServoPPAct	:= PPActBGStartModOKChk;
			
			IF (p_eServoPPStatus = Done) AND (p_eServoPPStat = PPActBGStartModOKChk) THEN
				
				eServoPPAct	:= PPActIdle;
				usiStep		:= 15;
				
			ELSIF p_eServoPPStatus = Error THEN
				
				eServoPPAct	:= PPActIdle;
				usiStep		:= 15;
				
			END_IF
		
			
		15:
			eTravAct	:= TravActBGStartModOKChk;
			
			IF (p_eTravStatus = Done) AND (p_eTravStat = TravActBGStartModOKChk) THEN
				
				eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			ELSIF p_eTravStatus = Error THEN
				
				eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			END_IF
			
			
		20:
			eLifterAct	:= LifterActBGStartModOKChk;
			
			IF (p_eLifterStatus = Done) AND (p_eLifterStat = LifterActBGStartModOKChk) THEN
				
				eLifterAct		:= LifterActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF p_eLifterStatus = Error THEN
				
				eLifterAct		:= LifterActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;
				
			END_IF
			
	END_CASE
	
END_ACTION
