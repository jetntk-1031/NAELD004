
ACTION Act_Main_P0003:
	
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn.uiRtStat.0	:= TRUE;
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBIn1.uiRtStat.0	:= TRUE;
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut.uiRtStat.0	:= TRUE;
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBOut1.uiRtStat.0	:= TRUE;
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiRtStat.0 := TRUE;
	tyP0003MMenu.tyMMenuGen.tyBitmapDSBComm.uiMaskRtStat.0 := TRUE;
	
////	FOR usidx := 1 TO SIZEOF(a_pBtn)/SIZEOF(a_pBtn[1]) DO 
////		a_pBtn := ADR();
////	END_FOR

	//{TextSnippet_1} Position in Main Menu
	
	
	//hide corresponding button
//	tyP0003MMenu.tyMMenuBtn.tyBtnUnload.uiRtStat.0 :=  NOT p_tyNtParamCurr.bProjLifterMagPlatform;
//	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
//	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.uiRtStat.0 :=  p_tyNtParamCurr.bProjLifterMagPlatform;
//	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.uiRtStat.0 :=  p_tyNtParamCurr.bProjLifterMagPlatform;

END_ACTION
