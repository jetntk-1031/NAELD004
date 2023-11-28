(** 2023-09-23 **)
ACTION Act_Background:
	//for OPCUA Loader Connect to Unloader AGV solution
	IF NOT(bTest) THEN
		
		fbConnect(bEn := FALSE);
		fbGetNodeHdlListCrtSub(bEn := FALSE);
		fbCreateSub(bEn := FALSE);
		fbAddMoniteredList(bEn := FALSE);
		fbRmvMoniteredList(bEn := FALSE);
		fbDeleteSub(bEn := FALSE);
		fbDisconnect(bEn := FALSE);
	ELSE
		CASE usiStep OF 
			0:
				//Connect HMI OPCUA Server
				fbConnect.tyOPCUAParam.sIPAddr	:= '192.168.0.20';
				fbConnect.tyOPCUAParam.sPort := '4840';
				fbConnect(bEn := TRUE);
		
				IF fbConnect.udiStatus = 0 THEN
					dwConnectionHdl	:= fbConnect.dwConnectionHdl;
					fbConnect(bEn := FALSE);
				
				//	bConnected := TRUE;
				
					usiStep	:= 1;
				ELSIF fbConnect.udiStatus < 65534 THEN
					fbConnect(bEn := FALSE);
					
				//	bConnected := FALSE;
					usiStep := 0;
				END_IF
		
			1: 
				//Node Handle List Read
					
				fbGetNodeHdlListCrtSub.usiNSIdx := 6;
				fbGetNodeHdlListCrtSub.uiTagNmCnt := 8;	 //tyTagFromLoader.tyTagStatOfPlatForms[1].bFinishedLoading

				
				
				
				fbGetNodeHdlListCrtSub.dwConnectionHdl := dwConnectionHdl;
				fbGetNodeHdlListCrtSub(bEn := TRUE);
			
				IF fbGetNodeHdlListCrtSub.udiStatus = 0 THEN
					tyPubSubHdls.a_dwHdls := fbGetNodeHdlListCrtSub.a_dwNodeHdlList;
					fbGetNodeHdlListCrtSub(bEn := FALSE);
							
					usiStep := 2;
				ELSIF fbGetNodeHdlListCrtSub.udiStatus < 65534 THEN
					fbGetNodeHdlListCrtSub(bEn := FALSE);
				
					usiStep := 9;
				END_IF
		
			2:
				//Create Sub
				fbCreateSub.dwConnectionHdl := dwConnectionHdl;
				fbCreateSub.bPublishingEn := TRUE;
				fbCreateSub.bytePriority := 0;
				
				fbCreateSub(bEn := TRUE,tPublishingInterval := T#1s);
			
				IF fbCreateSub.udiStatus = 0 THEN
					dwSubHdl := fbCreateSub.dwSubHdl;
					fbCreateSub(bEn := FALSE);
					
					
					
					usiStep := 3;
	
				
				ELSIF fbCreateSub.udiStatus < 65534 THEN
					fbCreateSub(bEn := FALSE);
				
					usiStep := 9;
				END_IF
		
			3:
				//Add Monitor Item List
				eStatus := Busy;
			
				fbAddMoniteredList.dwSubHdl := dwSubHdl;
				fbAddMoniteredList.a_dwNodeHdlList := tyPubSubHdls.a_dwHdls;
				
				
				
				fbAddMoniteredList.uiTagNmCount := 8;
				
				fbAddMoniteredList(bEn := TRUE);
			
				IF fbAddMoniteredList.udiStatus = 0 THEN
					a_dwMonitoringHdl := fbAddMoniteredList.a_dwMonitorHdl;
					//a_bValueChange to be added
					//fbAddMoniteredList(bEn := FALSE);
					usiStep := 99;	
					fbAddMoniteredList(bEn:= FALSE);
					//usiChkIpAddrStep := 4;
				ELSIF fbAddMoniteredList.udiStatus < 65534 THEN
					fbAddMoniteredList(bEn := FALSE);
				
					usiStep := 9;
				END_IF
			99: 
//				IF NOT(bDisconnect) THEN
//					fbAddMoniteredList;
//				ELSE
//					fbAddMoniteredList(bEn:= FALSE);
//				END_IF
			4:
			//Remove Item List
			fbRmvMoniteredList.dwSubHdl := dwSubHdl;
			fbRmvMoniteredList.uiTagNmCount := 8;
			fbRmvMoniteredList.a_dwMonitorHld:= a_dwMonitoringHdl;
			fbRmvMoniteredList(bEn := TRUE);
		
					
			IF fbRmvMoniteredList.udiStatus = 0 THEN
				
				fbRmvMoniteredList(bEn := FALSE);
				//uiTagNmCount := 0;
				//memset(ADR(a_dwMonitoringHdl),0,SIZEOF(a_dwMonitoringHdl));
				
				usiStep := 99;
			ELSIF fbRmvMoniteredList.udiStatus < 65534 THEN
				fbRmvMoniteredList(bEn := FALSE);
				
			//	usiStep := 9;
			END_IF
		
		5:
			//Delete Subscription
			fbDeleteSub.dwSubHdl := dwSubHdl;
			fbDeleteSub(bEn := TRUE);
		
					
			IF fbDeleteSub.udiStatus = 0 THEN
				//dwSubHdl := 0;
				fbDeleteSub(bEn := FALSE);
				
				usiStep := 99;
			ELSIF fbDeleteSub.udiStatus < 65534 THEN
				fbDeleteSub(bEn := FALSE);
				
			//	usiStep := 9;
			END_IF
				
		6: 
				//Release Node 
				fbRlsNodeHdlList.a_dwNodeHdlList := tyPubSubHdls.a_dwHdls;
				fbRlsNodeHdlList.uiTagNmCnt := 8;
				fbRlsNodeHdlList.dwConnectionHdl := dwConnectionHdl;
				fbRlsNodeHdlList(bEn := TRUE);
		
					
				IF fbRlsNodeHdlList.udiStatus = 0 THEN
					

				//	memset(ADR(tyPubSubHdls.a_dwHdls),0,SIZEOF(tyPubSubHdls.a_dwHdls));
					fbRlsNodeHdlList(bEn := FALSE);
					usiStep := 99;
				ELSIF fbRlsNodeHdlList.udiStatus < 65534 THEN
					fbRlsNodeHdlList(bEn := FALSE);
				
					//	usiStep := 9;
				END_IF	
				
		9:
			//Disconnect
			fbDisconnect.dwConnectionHdl		:= dwConnectionHdl;
			fbDisconnect(bEn := TRUE);

			IF fbDisconnect.udiStatus = 0 THEN
				fbDisconnect(bEn := FALSE);
				memset(ADR(tyPubSubHdls.a_dwHdls),0,SIZEOF(tyPubSubHdls.a_dwHdls));	
				memset(ADR(a_dwMonitoringHdl),0,SIZEOF(a_dwMonitoringHdl));
				dwConnectionHdl	:= 0;
				dwSubHdl		:= 0;
						
				bTest := FALSE;		
				eStatus := Done;
		
				//usiStep	:=0;
		
			ELSIF fbDisconnect.udiStatus < 65534 THEN
				fbDisconnect(bEn := FALSE);
				dwConnectionHdl := 0;
			//	bConnected := FALSE;
				udiStatus			:= 10013; //Failed to Call Load Configuration Method

				//usiStep := 0;
			END_IF 
		
		END_CASE
		
	END_IF

	
END_ACTION
