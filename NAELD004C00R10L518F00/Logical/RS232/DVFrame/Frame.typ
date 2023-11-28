(*2019-05-21*)
(**)
(*Action*)

TYPE
	eFrmAction : 
		(
		FrmActIdle,
		FrmActFullWrite,
		FrmActFullRead,
		FrmActFullReadUntilValid,
		FrmActCreateDir,
		FrmActDeleteOldLog,
		FrmActAppendLog,
		FrmActBGStartLog,
		FrmActBGStopLog
		);
END_TYPE

(**)
(*Data*)
