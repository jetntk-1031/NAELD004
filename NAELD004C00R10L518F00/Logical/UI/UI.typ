(*2019-03-25*)
(**)

TYPE
	eUIAction : 
		(
		UIActIdle,
		UIActInitial
		);
END_TYPE

(**)
(*Data*)

TYPE
	eUIInitial : 
		(
		UIInitialC0005,
		UIInitialC0007,
		UIInitialP0000,
		UIInitialP0002,
		UIInitialP0003,
		UIInitialP0200,
		UIInitialP0201,
		UIInitialP0202,
		UIInitialP0203,
		UIInitialP0204,
		UIInitialP0205,
		UIInitialP0206,
		UIInitialP0300,
		UIInitialP0400,
		UIInitialP0410,
		UIInitialP0800,
		UIInitialP0900,
		UIInitialP0910,
		UIInitialP0920,
		UIInitialP0921,
		UIInitialP0923,
		UIInitialP0930,
		UIInitialP0931,
		UIInitialP0932,
		UIInitialP0933,
		UIInitialP0934,
		UIInitialP0935,
		UIInitialP0936,
		UIInitialP0937,
		UIInitialP0939,
		UIInitialP0940,
		UIInitialP0950,
		UIInitialP1000,
		UIInitialP1020,
		UIInitialP1021,
		UIInitialP1022,
		UIInitialP1023,
		UIInitialP1024,
		UIInitialP1025,
		UIInitialP1026,
		UIInitialP1027,
		UIInitialP1028,
		UIInitialP1030,
		UIInitialP1031,
		UIInitialP1040,
		UIInitialP1050,
		UIInitialP1080,
		UIInitialP1081,
		UIInitialDone
		);
END_TYPE

(*Global Alarm*)

TYPE
	tyUIAllAlm : 	STRUCT 
		bAlm : ARRAY[0..9999]OF BOOL;
		bWarning : ARRAY[0..9999]OF BOOL;
	END_STRUCT;
END_TYPE
