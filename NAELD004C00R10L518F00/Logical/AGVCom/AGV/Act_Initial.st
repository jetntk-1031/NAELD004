(** 2019-01-12 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	
	fbConnect(bEn := FALSE);
	fbGetNodeHdlListCrtSub(bEn := FALSE);
	fbGetNodeHdlListCrtSub.a_sServerTagNm[0] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[1].usiMagBrdUnloadCnt';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[1] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[1].bFinishedLoading';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[2] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[2].usiMagBrdUnloadCnt';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[3] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[2].bFinishedLoading';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[4] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[3].usiMagBrdUnloadCnt';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[5] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[3].bFinishedLoading';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[6] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[4].usiMagBrdUnloadCnt';
	fbGetNodeHdlListCrtSub.a_sServerTagNm[7] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[4].bFinishedLoading';
	
	
	fbCreateSub(bEn := FALSE);
	fbAddMoniteredList(bEn := FALSE);
	
	fbAddMoniteredList.a_sClientTagNm[0] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[1].usiMagBrdUnloadCnt';
	fbAddMoniteredList.a_sClientTagNm[1] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[1].bFinishedLoading';
	fbAddMoniteredList.a_sClientTagNm[2] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[2].usiMagBrdUnloadCnt';
	fbAddMoniteredList.a_sClientTagNm[3] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[2].bFinishedLoading';
	fbAddMoniteredList.a_sClientTagNm[4] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[3].usiMagBrdUnloadCnt';
	fbAddMoniteredList.a_sClientTagNm[5] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[3].bFinishedLoading';
	fbAddMoniteredList.a_sClientTagNm[6] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[4].usiMagBrdUnloadCnt';
	fbAddMoniteredList.a_sClientTagNm[7] := '::AGV:tyTagFromLoader.tyTagStatOfPlatForms[4].bFinishedLoading';
	
	
	fbRmvMoniteredList(bEn := FALSE);
	
	
	fbDeleteSub(bEn := FALSE);
	fbDisconnect(bEn := FALSE);
END_ACTION
