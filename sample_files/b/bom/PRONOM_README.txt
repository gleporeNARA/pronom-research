The magic value BOMStore tells us that a car file is a special bom file. BOM - Bill of Materials - is a file format inherited from NeXTSTEP and still used in the macOS installer to determine which files to install, remove, or upgrade. You can find some basic information in man 5 bom:

The Mac OS X Installer uses a file system "bill of materials" to determine which files to install, remove, or upgrade. A bill of materials, bom, contains all the files within a directory, along with some information about each file. File information includes: the file's UNIX permissions, its owner and group, its size, its time of last modification, and so on. Also included are a checksum of each file and information about hard links.
macOS contains several closed source tools to manipule bom files like lsbom and mkbom. It is possible to use lsbom to inspect the installer receipts located in /private/var/db/receipts/. For example running lsbom /private/var/db/receipts/com.apple.pkg.Numbers5.bom will print all the files installed by Apple Numbers (path, permissions, UID/GID, size and CRC32 checksum):

https://blog.timac.org/2018/1018-reverse-engineering-the-car-file-format/

BOM is a computer file format used by the Mac OS X installer. BOM stands for "Bill Of Materials" and is used to determine which files to install, remove, or upgrade. A bill of materials, "BOM", contains all the files within a directory, along with some information about each file. File information includes: the file's Unix file permissions, its owner and group, its size, its time of last modification, and so on. Also included are a checksum of each file and information about hard links.[1]

https://en.wikipedia.org/wiki/BOM_(file_format)
