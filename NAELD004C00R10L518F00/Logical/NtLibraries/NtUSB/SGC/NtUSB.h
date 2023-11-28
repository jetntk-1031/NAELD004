/* Automation Studio generated header file */
/* Do not edit ! */
/* NtUSB 5.00.5 */

#ifndef _NTUSB_
#define _NTUSB_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _NtUSB_VERSION
#define _NtUSB_VERSION 5.00.5
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG3
		#include "dvframe.h"
		#include "AsUSB.h"
#endif
#ifdef _SG4
		#include "dvframe.h"
		#include "AsUSB.h"
#endif
#ifdef _SGC
		#include "dvframe.h"
		#include "AsUSB.h"
#endif


/* Datatypes and datatypes of function blocks */
typedef struct tyCloseUSBInternal
{	struct FRM_xopen fbXopenUSB;
	struct FRM_close fbSafetyRmvUSB;
} tyCloseUSBInternal;

typedef struct tyDecodeStdKeyInternal
{	unsigned long udiReadIdx;
	unsigned long udiReadIdxOld;
	unsigned char usiHIDCodeList;
	unsigned char usiHIDCodeList2;
	plcstring sDataBuff[11];
	plcstring sDataBuff1[11];
	plcstring sDataBuff2[11];
} tyDecodeStdKeyInternal;

typedef struct tyNodeListGetInternal
{	unsigned long udiUsbNodeList[6];
	unsigned char usiUsbNodeIdx;
	struct UsbNodeListGet fbUsbNodeListGet;
} tyNodeListGetInternal;

typedef struct fbDecodeStdKey
{
	/* VAR_INPUT (analog) */
	unsigned char usiReadData[1025];
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	plcstring sDecodeData[256];
	/* VAR (analog) */
	struct tyDecodeStdKeyInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbDecodeStdKey_typ;

typedef struct tyUSBInternal
{	unsigned long udiReadIdx;
	struct FRM_xopen fbXopenUSB;
	struct FRM_read fbReadUSB;
	struct FRM_rbuf fbRlsBuffUSB;
	struct fbDecodeStdKey fbDecodeStdKey;
} tyUSBInternal;

typedef struct fbXOpenUSB
{
	/* VAR_INPUT (analog) */
	unsigned long udiDevice;
	unsigned long udiMode;
	unsigned long udiConfig;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	unsigned long udiUSBIdent;
	/* VAR (analog) */
	struct tyUSBInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbXOpenUSB_typ;

typedef struct fbReadUSB
{
	/* VAR_INPUT (analog) */
	unsigned long udiUSBIdent;
	/* VAR_OUTPUT (analog) */
	plcstring sBarcodeOut[256];
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyUSBInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbReadUSB_typ;

typedef struct fbSafetyRmvUSB
{
	/* VAR_INPUT (analog) */
	unsigned long udiUSBIdent;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyCloseUSBInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbSafetyRmvUSB_typ;

typedef struct tyReadUSBInternal
{	unsigned char usi;
	struct fbXOpenUSB fbXopenUSB;
	struct fbReadUSB fbReadUSB;
	struct fbSafetyRmvUSB fbXCloseUSB;
} tyReadUSBInternal;

typedef struct tyReleaseBuffInternal
{	struct FRM_rbuf fbRlsBuffUSB;
} tyReleaseBuffInternal;

typedef struct tyUsbNodeGetInternal
{	struct usbNode_typ tyUSBDevice;
	struct UsbNodeGet fbUsbNodeGet;
} tyUsbNodeGetInternal;

typedef struct fbGetUSBDev
{
	/* VAR_INPUT (analog) */
	unsigned short uiFilterInterfaceClass;
	unsigned short uiFilterInterfaceSubClass;
	unsigned short uiVendorID;
	unsigned short uiProductID;
	/* VAR_OUTPUT (analog) */
	plcstring asDeviceNm[6][81];
	unsigned long udiStatus;
	unsigned long udiNodeId;
	/* VAR (analog) */
	unsigned char usi;
	struct tyNodeListGetInternal tyInternal;
	struct tyUsbNodeGetInternal tyInternal1;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbGetUSBDev_typ;

typedef struct tyXOpenUSBInternal
{	struct fbGetUSBDev fbGetUSBDev;
	struct FRM_xopen fbXOpenUSB;
} tyXOpenUSBInternal;

typedef struct fbReadUSBDev
{
	/* VAR_INPUT (analog) */
	unsigned long udiDevice;
	/* VAR_OUTPUT (analog) */
	unsigned long udiUSBIdent;
	plcstring sBarcodeOut[256];
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyReadUSBInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	/* VAR_OUTPUT (digital) */
	plcbit bNewBarcode;
} fbReadUSBDev_typ;

typedef struct fbRlsBuffUSB
{
	/* VAR_INPUT (analog) */
	unsigned long udiUSBIdent;
	unsigned long udiUSBBuffer;
	unsigned long udiUSBBuflng;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tyUSBInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
} fbRlsBuffUSB_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void fbGetUSBDev(struct fbGetUSBDev* inst);
_BUR_PUBLIC void fbReadUSBDev(struct fbReadUSBDev* inst);
_BUR_PUBLIC void fbDecodeStdKey(struct fbDecodeStdKey* inst);
_BUR_PUBLIC void fbSafetyRmvUSB(struct fbSafetyRmvUSB* inst);
_BUR_PUBLIC void fbRlsBuffUSB(struct fbRlsBuffUSB* inst);
_BUR_PUBLIC void fbXOpenUSB(struct fbXOpenUSB* inst);
_BUR_PUBLIC void fbReadUSB(struct fbReadUSB* inst);


#ifdef __cplusplus
};
#endif
#endif /* _NTUSB_ */

