
ACTION Act_EntP0940Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0940CommCtrl.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0940CommCtrlDSSMEMAA ACCESS ADR(tyP0940CommCtrl.tyDSSMEMAA);
	p_tyP0940CommCtrlDSSMEMAB ACCESS ADR(tyP0940CommCtrl.tyDSSMEMAB);
	p_tyP0940CommCtrlSOT ACCESS ADR(tyP0940CommCtrl.tySOT);
	
	
	CASE p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
				tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 0;
			
		McSetAGVCommHardIO:
				tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 1;
			
		McSetAGVCommDisabled:
				tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 2;
	
	END_CASE
			
END_ACTION
