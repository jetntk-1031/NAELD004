(** 2020-08-29 **)
ACTION Act_Action: 

		//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= USBRdrActIdle;
		eStat	:= USBRdrActIdle;
	END_IF
	
	//Set p_eAct
	IF eStatus = Idle OR eStatus = Busy OR eStatus = Done THEN
		eStat	:= p_eAct;
	END_IF
	
	IF eStatus = Error THEN
		fbRmvUSBDevice (bEn := TRUE, udiUSBIdent := fbReadUSBDevice.udiUSBIdent );
		IF fbRmvUSBDevice.udiStatus = 0 THEN
			fbRmvUSBDevice(bEn := FALSE);
			p_eAct	:= USBRdrActIdle;
		ELSIF fbRmvUSBDevice.udiStatus < 65534 THEN
			fbRmvUSBDevice(bEn := FALSE);
			p_eAct	:= USBRdrActIdle;
		END_IF
	END_IF
		
	
	
END_ACTION
