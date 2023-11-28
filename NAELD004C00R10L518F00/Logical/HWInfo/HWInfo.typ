(*2020-09-22*)
(**)
(*Action*)

TYPE
	eHWInfoAction : 
		(
		HWInfoActIdle,
		HWInfoActGetIPAddr,
		HWInfoActGetSubnetMask,
		HWInfoActGetMacAddr,
		HWInfoActSetIPAddr,
		HWInfoActSetSubnetMask,
		HWInfoActGetEthConfigMode,
		HWInfoActSetEthConfigMode
		);
	eNetworkConfigMod : 
		(
		SetIPManually := 0,
		IPFromDHCPServer := 1
		);
END_TYPE
