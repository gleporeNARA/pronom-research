Neutral ASCII File Format
This document is Copyright (c) 1993 by Sense8 Corporation. Reproduction of this document is allowed and encouraged, as long as the file remains intact with this copyright message.



Overview

The Sense8 neutral ASCII file format (NFF) is a generic
representation for polygonal geometry.

In order to import other geometry into WorldToolKit, users may write
translators to transform their proprietary format into the neutral
ASCII file format, which can then be read directly.  Thus, the NFF
format serves as an interface between modelers which cannot write
geometry in any of the forms accepted by WorldToolKit.

NFF is also useful as a general format for the interchange of 3D
geometry, especially between real-time 3d rendering systems.  It is
better suited for this task than any other known ASCII file format,
due to superior efficiency, readability and support of such important
information as vertex normals and backface rejection.  Sense8
encourages and recommends the use of the NFF format by anyone who
uses 3D geometry.

NFF Syntax

The following describes version 2.0 of the NFF standard.  For changes
from earlier versions, see the section below, "NFF Revision History".

NFF header

The file must begin with a line containing the string token "nff".
This is used by WTK to determine the type of file.  The next line
should state the version level of the NFF file.  Next follows an
optional viewpoint specification associated with the file, and a set
of one or more object specifications.  All lines must be terminated
by a linefeed character, but the MSDOS end-of-line convention CR-LF
is also supported, although not encouraged.

http://paulbourke.net/dataformats/nff/nff2.html
