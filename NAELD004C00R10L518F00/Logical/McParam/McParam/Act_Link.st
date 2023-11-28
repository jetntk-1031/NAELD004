(** 2021-08-08 **)
ACTION Act_Link:
	
	IF tyMcParamCurr.eAGVComProtocol = McSetAGVCommOPCUA 
		OR tyMcParamCurr.eAGVComProtocol = McSetAGVCommHardIO 
		THEN
		IF tyMcParamCurr.eMagExMode = McSetMagXcAutoManMode 
			OR tyMcParamCurr.eMagExMode = McSetMagXcAutoMode
			THEN
			tyMcParamCurr.bAGVComEn := TRUE;
		ELSE
			tyMcParamCurr.bAGVComEn := FALSE;
		END_IF
	ELSIF tyMcParamCurr.eAGVComProtocol = McSetAGVCommDisabled THEN 
		tyMcParamCurr.bAGVComEn := FALSE;
	END_IF
		
	//new for Hermes 1.3
	IF p_bRmtHermesWriteConfig OR p_bSvyHermesWriteConfig THEN 
		p_tyMcParamWr.sMcNm := p_tyHermesConfigurationWr.tySvyParam.sMachineId;
	END_IF
	
	//Disable MES on SMEMA mode
	IF p_eNtParamCustomerReq = Siemens AND tyMcParamCurr.eDSCommA <> McSetCommModHermes  AND ( NOT(p_bNtParamProjLaneBPrep) OR (p_bNtParamProjLaneBPrep AND tyMcParamCurr.eDSCommB <> McSetCommModHermes)) THEN 
		tyMcParamCurr.bMesRFIDEn := FALSE;
		tyMcParamCurr.bHermesSvyEn := FALSE;	
	END_IF
END_ACTION
