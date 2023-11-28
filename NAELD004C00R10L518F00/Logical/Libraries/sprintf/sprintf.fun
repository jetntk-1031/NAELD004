
FUNCTION AsciiInUnicode : UDINT
	VAR_INPUT
		pUnicode : UDINT;
		pAscii : UDINT;
	END_VAR
END_FUNCTION

FUNCTION UnicodeInAscii : UDINT
	VAR_INPUT
		pAscii : UDINT;
		pUnicode : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wskipwhitespace : UDINT
	VAR_INPUT
		udiStartadresse : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wsprintfar : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		parameterliste : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wstrncpyz : DINT
	VAR_INPUT
		udiZieladresse : UDINT;
		udiQuelladresse : UDINT;
		udiAnzahlZeichen : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wsprintf8 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
		p3 : UDINT;
		p4 : UDINT;
		p5 : UDINT;
		p6 : UDINT;
		p7 : UDINT;
		p8 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wsprintf4 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
		p3 : UDINT;
		p4 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION skipwhitespace : UDINT
	VAR_INPUT
		udiStartadresse : UDINT;
	END_VAR
END_FUNCTION

FUNCTION sprintfar : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		parameterliste : UDINT;
	END_VAR
END_FUNCTION

FUNCTION sprintf2 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION sprintf8 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
		p3 : UDINT;
		p4 : UDINT;
		p5 : UDINT;
		p6 : UDINT;
		p7 : UDINT;
		p8 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wsprintf1 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wsprintf2 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION trim : UDINT
	VAR_INPUT
		udiZiel : UDINT;
		udiQuelle : UDINT;
	END_VAR
END_FUNCTION

FUNCTION wtrim : UDINT
	VAR_INPUT
		udiZiel : UDINT;
		udiQuelle : UDINT;
	END_VAR
END_FUNCTION

FUNCTION strncpyz : DINT
	VAR_INPUT
		udiZieladresse : UDINT;
		udiQuelladresse : UDINT;
		udiAnzahlZeichen : UDINT;
	END_VAR
END_FUNCTION

FUNCTION sprintf1 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
	END_VAR
END_FUNCTION

FUNCTION sprintf4 : UDINT
	VAR_INPUT
		ziel : UDINT;
		format : UDINT;
		p1 : UDINT;
		p2 : UDINT;
		p3 : UDINT;
		p4 : UDINT;
	END_VAR
END_FUNCTION
