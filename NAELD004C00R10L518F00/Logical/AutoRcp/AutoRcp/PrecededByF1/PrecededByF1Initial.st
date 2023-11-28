
ACTION PrecededByF1Initial: 
	
	//Mag Detail (Rcp)
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= 'MagazinePropsRcp';
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(a_tyAutoRcpInternal);
	fbFileRead1.udiLen			:= SIZEOF(a_tyAutoRcpInternal);
	fbFileRead1(bEn := FALSE);

	fbFileWrite1.sDevice	:= 'Retain';
	fbFileWrite1.sFile			:= 'MagazinePropsRcp';
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(a_tyAutoRcpInternalWr);
	fbFileWrite1.udiLen			:= SIZEOF(a_tyAutoRcpInternalWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
END_ACTION
