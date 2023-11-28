
ACTION PrecededBySelfInitial: 

	//Mag Detail
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= 'MagazineRcp';
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(a_tyCurrZ2Rcp);
	fbFileRead1.udiLen			:= SIZEOF(a_tyCurrZ2Rcp);
	fbFileRead1(bEn := FALSE);

	fbFileWrite1.sDevice	:= 'Retain';
	fbFileWrite1.sFile			:= 'MagazineRcp';
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(a_tyZ2RcpWr);
	fbFileWrite1.udiLen			:= SIZEOF(a_tyZ2RcpWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
END_ACTION
