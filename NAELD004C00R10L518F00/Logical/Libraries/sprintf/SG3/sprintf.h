/* Automation Studio generated header file */
/* Do not edit ! */
/* sprintf 2.00.0 */

#ifndef _SPRINTF_
#define _SPRINTF_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _sprintf_VERSION
#define _sprintf_VERSION 2.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif



/* Prototyping of functions and function blocks */
_BUR_PUBLIC unsigned long AsciiInUnicode(unsigned long pUnicode, unsigned long pAscii);
_BUR_PUBLIC unsigned long UnicodeInAscii(unsigned long pAscii, unsigned long pUnicode);
_BUR_PUBLIC unsigned long wskipwhitespace(unsigned long udiStartadresse);
_BUR_PUBLIC unsigned long wsprintfar(unsigned long ziel, unsigned long format, unsigned long parameterliste);
_BUR_PUBLIC signed long wstrncpyz(unsigned long udiZieladresse, unsigned long udiQuelladresse, unsigned long udiAnzahlZeichen);
_BUR_PUBLIC unsigned long wsprintf8(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2, unsigned long p3, unsigned long p4, unsigned long p5, unsigned long p6, unsigned long p7, unsigned long p8);
_BUR_PUBLIC unsigned long wsprintf4(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2, unsigned long p3, unsigned long p4);
_BUR_PUBLIC unsigned long skipwhitespace(unsigned long udiStartadresse);
_BUR_PUBLIC unsigned long sprintfar(unsigned long ziel, unsigned long format, unsigned long parameterliste);
_BUR_PUBLIC unsigned long sprintf2(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2);
_BUR_PUBLIC unsigned long sprintf8(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2, unsigned long p3, unsigned long p4, unsigned long p5, unsigned long p6, unsigned long p7, unsigned long p8);
_BUR_PUBLIC unsigned long wsprintf1(unsigned long ziel, unsigned long format, unsigned long p1);
_BUR_PUBLIC unsigned long wsprintf2(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2);
_BUR_PUBLIC unsigned long trim(unsigned long udiZiel, unsigned long udiQuelle);
_BUR_PUBLIC unsigned long wtrim(unsigned long udiZiel, unsigned long udiQuelle);
_BUR_PUBLIC signed long strncpyz(unsigned long udiZieladresse, unsigned long udiQuelladresse, unsigned long udiAnzahlZeichen);
_BUR_PUBLIC unsigned long sprintf1(unsigned long ziel, unsigned long format, unsigned long p1);
_BUR_PUBLIC unsigned long sprintf4(unsigned long ziel, unsigned long format, unsigned long p1, unsigned long p2, unsigned long p3, unsigned long p4);


#ifdef __cplusplus
};
#endif
#endif /* _SPRINTF_ */

