(** 2021-08-20 **)
ACTION Act_Main_P1027:
	
	
	tyP1027McSetUSBSetting.tyUSBSet.tyVID.diValue			:= p_tyMcParamCurr.diVID;
	tyP1027McSetUSBSetting.tyUSBSet.tyPID.diValue			:= p_tyMcParamCurr.diPID;

	tyP1027McSetUSBSetting.tyUSBSet.tyVID.diValueMax		:= p_tyNtParamCurr.tyVID.diMax;
	tyP1027McSetUSBSetting.tyUSBSet.tyVID.diValueMin		:= p_tyNtParamCurr.tyVID.diMin;
	tyP1027McSetUSBSetting.tyUSBSet.tyPID.diValueMax		:= p_tyNtParamCurr.tyPID.diMax;
	tyP1027McSetUSBSetting.tyUSBSet.tyPID.diValueMin		:= p_tyNtParamCurr.tyPID.diMin;	

	
END_ACTION
