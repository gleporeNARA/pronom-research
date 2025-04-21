In another example, Kaspersky Anti-Virus uses a different approach to loading plug-ins: the plug-in updates are distributed as object files in the COFF file format and are then linked to the antivirus core.

The following sections discuss the various plug-in loading approaches and their advantages and disadvantages.

A Full-Featured Linker in Antivirus Software

Instead of dynamically loading libraries or creating RWX pages and patching them with the contents of the plug-ins, Kaspersky distributes their updates in the Common Object File Format (COFF). After being decrypted and decompressed, these files are linked together, and the newly generated binary forms the new core, with all of the plug-ins statically linked. From an antivirus design point of view, this method offers low memory usage and faster start-up. On the other hand, it requires Kaspersky developers to write and maintain a full-featured linker.

Note

The Common Object File Format is used to store compiled code and data. COFF files are then used in the final compilation stage—the linking stage—to produce an executable module.

The update files are distributed in the form of many little files with an *.avc extension, for example, base001.avc. These files start with a header like this:

0000 41 56 50 20 41 6E 74 69 76 69 72 61 6C 20 44 61 AVP Antiviral Da

0010 74 61 62 61 73 65 2E 20 28 63 29 4B 61 73 70 65 tabase. (c)Kaspe

In this example, there is an ASCII header with the banner, “AVP Antiviral Database. (c)Kaspersky Lab 1997-2013”

https://apprize.best/security/antivirus/4.html
