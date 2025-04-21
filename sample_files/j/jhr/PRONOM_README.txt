JAM(mbp)
                The Joaquim-Andrew-Mats Message Base Proposal
    ---------------------------------------------------------------------
            Copyright 1993 Joaquim Homrighausen, Andrew Milner,
                           Mats Birch, Mats Wallin.
                             ALL RIGHTS RESERVED.
    ---------------------------------------------------------------------


    =====================================================================
    Restrictions
    ---------------------------------------------------------------------
    JAM may be used by any developer as long as these specifications are
    followed exactly. JAM may be used free-of-charge by any developer
    for any purpose, commercially or otherwise.

    This document may be freely copied and distributed, but must NEVER be
    distributed in a modified form. If you have an enhancement request,
    please contact the author of this document; do not change it
    yourself.

    All applications that support JAM must include one of the following
    notices in their documentation and somewhere in the product's credit
    section:

    "JAM(mbp) - Copyright 1993 Joaquim Homrighausen, Andrew Milner,
                               Mats Birch, Mats Wallin.
                               ALL RIGHTS RESERVED."

    or

    "This product uses the JAM(mbp) API -
     Copyright 1993 Joaquim Homrighausen, Andrew Milner, Mats Birch,
                    Mats Wallin. ALL RIGHTS RESERVED."

    No organization, company, person, entity, or other being may impose
    any fees for any reason for providing this document or the
    accompanying API. This document and the accompanying API may not be
    sold or otherwise transferred for personal or company gain under any
    circumstances.

    =====================================================================
    Definitions and general notes
    ---------------------------------------------------------------------
    CURRENTREV                1

    JAM                       The JAM message base format.

    CRC                       Cyclic Redundancy Check. All CRC values
                              calculated on strings must assume that the
                              data within the string has been converted
                              to lowercase (A-Z = a-z).

    CRC-32                    32-bit CRC (as used in the Zmodem file
                              transfer protocol) value. The polynom for
                              a CRC-32 is edb88320H and the CRC-32 seed
                              is -1L (ffffffffH).

    uchar                     Unsigned 8-bit value

    ushort                    Unsigned 16-bit value

    ulong                     Unsigned 32-bit value

    UNIX date                 An ulong representing the number of seconds
                              since midnight, January 1, 1970. UNIX-style
                              dates is the only form of time stamps used
                              in JAM (1).

    Message #                 The physical record number within the index
                              file is used as a message number. The
                              lowest message number is one (1) and the
                              highest message number is 4294967295
                              (ffffffffH).

    FTN                       FidoNet Technology Network

    FTS                       FidoNet Technical Standard

    (1) All timestamps created locally (i.e. those not imported from
        other systems) are stored in local time.

    =====================================================================
    Files
    ---------------------------------------------------------------------
    Each conference is made up from four files. How and where these files
    are stored and named is implementation dependant. The only file with
    a fixed minimum size is the .JHR (header data) file. It has a 1024-
    byte block used to hold information about a specific message area as
    described later.

    filename.JHR - Message header data
    filename.JDT - Message text data
    filename.JDX - Message index
    filename.JLR - Lastread information

    A future revision of JAM may also include a file that holds the
    following three items:

      - The highest assigned user number
      - The last generated message ID
      - A global conference list with the conference name, description,
        and physical location of the message base.

    =====================================================================
    .JHR file header
    ---------------------------------------------------------------------
    Below is the format of the 1024-byte record at the beginning of all
    .JHR files. The first actual message header starts at offset 1024 in
    the .JHR file.

    FixedHeaderInfoStruct:
        ulong   Signature;       // <J><A><M> followed by <NUL>
        
https://github.com/Mithgol/node-fidonet-jam/blob/master/JAM.txt
