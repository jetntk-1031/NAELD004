(** 2019-05-04 **)
ACTION Act_Main_Recipe:
	
	CASE usiStep OF
		0:
			eProdRcpAct	:= ProdRcpActCreateDir;
	
			IF (p_eProdRcpStatus = Done) AND (p_eProdRcpStat = ProdRcpActCreateDir) THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 1;
				
			ELSIF p_eProdRcpStatus = Error THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
			
		1:
			eProdRcpAct	:= ProdRcpActGetList;
	
			IF (p_eProdRcpStatus = Done) AND (p_eProdRcpStat = ProdRcpActGetList) THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 2;
				
			ELSIF p_eProdRcpStatus = Error THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
		
		2:
			eProdRcpAct	:= ProdRcpActReadCurrRcp;
	
			IF (p_eProdRcpStatus = Done) AND (p_eProdRcpStat = ProdRcpActReadCurrRcp) THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			ELSIF p_eProdRcpStatus = Error THEN
				
				eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
		
		10:
			eMpProdRcpAct	:= MpProdRcpActCreateDir;
	
			IF (p_eMpProdRcpStatus = Done) AND (p_eMpProdRcpStat = MpProdRcpActCreateDir) THEN
				
				eMpProdRcpAct	:= MpProdRcpActIdle;
				usiStep			:= 20;
				
			ELSIF p_eProdRcpStatus = Error THEN
				
				eMpProdRcpAct	:= MpProdRcpActIdle;
				usiStep			:= 20;
				
			END_IF
			
		20:
			eMagRcpAct	:= MagRcpActCreateDir;
	
			IF (p_eMagRcpStatus = Done) AND (p_eMagRcpStat = MagRcpActCreateDir) THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 21;
				
			ELSIF p_eMagRcpStatus = Error THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 30;

				
			END_IF
			
		21:
			eMagRcpAct	:= MagRcpActGetList;
			
			IF (p_eMagRcpStatus = Done) AND (p_eMagRcpStat = MagRcpActGetList) THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 22;
				
			ELSIF p_eMagRcpStatus = Error THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 30;
						
			END_IF
			
		22:
			eMagRcpAct	:= MagRcpActReadCurrRcp;
			
			IF (p_eMagRcpStatus = Done) AND (p_eMagRcpStat = MagRcpActReadCurrRcp) THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 30;
				
			ELSIF p_eMagRcpStatus = Error THEN
				
				eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 30;

				
			END_IF
		
		
		
		30:
			eMagRcpAct1	:= MagRcpActCreateDir;
	
			IF (p_eMagRcpStatus1 = Done) AND (p_eMagRcpStat1 = MagRcpActCreateDir) THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 31;
				
			ELSIF p_eMagRcpStatus1 = Error THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAutoRcp;
				
			END_IF
			
		31:
			eMagRcpAct1	:= MagRcpActGetList;
			
			IF (p_eMagRcpStatus1 = Done) AND (p_eMagRcpStat1 = MagRcpActGetList) THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 32;
				
			ELSIF p_eMagRcpStatus1 = Error THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAutoRcp;
				
			END_IF
			
		32:
			eMagRcpAct1	:= MagRcpActReadCurrRcp;
			
			IF (p_eMagRcpStatus1 = Done) AND (p_eMagRcpStat1 = MagRcpActReadCurrRcp) THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAutoRcp;
				
			ELSIF p_eMagRcpStatus1 = Error THEN
				
				eMagRcpAct1		:= MagRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAutoRcp;
				
			END_IF
		
	END_CASE
		
END_ACTION
