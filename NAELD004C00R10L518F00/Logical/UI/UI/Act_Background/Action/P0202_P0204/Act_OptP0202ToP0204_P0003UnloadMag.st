
ACTION Act_OptP0202ToP0204_P0003UnloadMag: 
	
	//Reset
	IF EDGEPOS(p_bOpsStatusStop) THEN
		bUnloadMag	:= FALSE;
		
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl := FALSE;
		
		p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
		p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
		p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
	END_IF
	
	//Control
	IF tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxUnloadAsk);
			
			IF tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxResumeAsk);
			
			IF tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	ELSIF tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxUnloadAsk);
			
			IF tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxResumeAsk);
			
			IF tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	ELSIF tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxUnloadAsk);
			
			IF tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxResumeAsk);
			
			IF tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	ELSIF tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxUnloadAsk);
			
			IF tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0206OpsMag4.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
				
				tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxResumeAsk);
			
			IF tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0206OpsMag4.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMag4.tyMsgBoxHide);
				
				tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF	
	ELSIF tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxUnloadAsk);
			
			IF tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl	:= FALSE;
				
			ELSIF tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxResumeAsk);
			
			IF tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl	:= FALSE;
				
			ELSIF tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF	

		
	END_IF
	
	//Display
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagLDUnloading;
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagLDUnloading;
	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagLDUnloading;
	tyP0206OpsMag4.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagLDUnloading;
	tyP0003MMenu.tyMMenuBtn.tyBtnUnload.bRtLk 	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagLDUnloading;
	
	
	IF p_bOpsStatusStop = FALSE AND p_bOpsLifMagLDUnloading = TRUE THEN
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0206OpsMag4.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnUnload.usiTxtIdx	:= 30; //Text group - Main Menu
	ELSE
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0206OpsMag4.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnUnload.usiTxtIdx	:= 5; //Text group - Main Menu
	END_IF
	
	IF p_bOpsStatusStop = FALSE AND bUnloadMag = TRUE AND p_bOpsLifMagLDUnloading = TRUE THEN
		
		fbUnloadBlinkTm(IN := TRUE);
		
		IF fbUnloadBlinkTm.Q = TRUE THEN
			fbUnloadBlinkTm(IN := FALSE);
			
			IF tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx = 0 THEN
				tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				tyP0206OpsMag4.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.usiBitmapIdx    := 4; //Yellow
			ELSE
				tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				tyP0206OpsMag4.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnUnload.usiBitmapIdx    := 0; //Silver
			END_IF
			
		END_IF
		
	ELSIF p_bOpsStatusStop = FALSE AND bUnloadMag = TRUE THEN
		
		fbUnloadBlinkTm(IN := FALSE);
		
		tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		tyP0206OpsMag4.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnUnload.usiBitmapIdx    := 1; //Green
	ELSE
		
		fbUnloadBlinkTm(IN := FALSE);
		
		tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		tyP0206OpsMag4.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
	END_IF
	
	//Mask
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiMaskRtStat.0	:= NOT p_bOpsStatusStop;
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiMaskRtStat.0	:= NOT p_bOpsStatusStop;
	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiMaskRtStat.0	:= NOT p_bOpsStatusStop;
	tyP0206OpsMag4.tyOps.tyBtnUnloadMag.uiMaskRtStat.0	:= NOT p_bOpsStatusStop;
	
	tyP0003MMenu.tyMMenuBtn.tyBtnUnload.uiMaskRtStat.0 := NOT p_bOpsStatusStop;
	
END_ACTION
