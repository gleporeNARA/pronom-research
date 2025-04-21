SG Files
On OS/2 there are several MSG files, these are referred as "message files".

If you open any MSG file with a text editor you will notice that the file starts with "MKMSGF".

This files are generated with the MKMSGF program. There is also a clone of this program called mkmsgf.zip

There is also this program that "decompiles" MKMSGF MSG files called e_msgf.zip

http://www.edm2.com/index.php/MSG_Files

/****************************************************************************
 *
 *  mkmsgf.c -- Make Message File Utility (MKMSGF) Clone
 *
 *  ========================================================================
 *
 *    Version 1.0       Michael K Greene <mike@mgreene.org>
 *                      July 2008
 *
 *  ========================================================================
 *
 *  Description: Simple clone of the mkmsgf tool.
 *
 *  Based on previous work:
 *      (C) 2002-2008 by Yuri Prokushev
 *      (C) 2001 Veit Kannegieser

/*
   26 July 2008  Things not supported:
       - DBCS
       - options A and C
       - dword index values
*/


#define INCL_DOSNLS     /* National Language Support values */

#include <os2.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <io.h>
#include <sys\stat.h>
#include <unistd.h>
#include "mkmsgf.h"
#include "version.h"


#define READBUFFSIZE    1024


// setup default structures
MSGHEADER msgheader = {
    0xFF, 0x4D, 0x4B, 0x4D, 0x53, 0x47, 0x46, 0x00,     /* magic = 0xFF MKMSGF 0x00 */
    
https://github.com/OS2World/UTIL-SYSTEM-MKMSGF/blob/master/mkmsgf.c
