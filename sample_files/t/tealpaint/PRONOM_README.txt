PDB
PalmOS keeps all RAM storage in a database format. There is no file system in the RAM. When sync'd to a PC these databases will be saved in separate files and this is where the extension is added. All files in device RAM must be in Palm Database format, whether programs or data. The PDB files created for external storage are data files, which can contain arbitrary content.

Contents [hide] 
1 Intro to the Database format
2 Intro to PalmDOC
3 Intro to zTXT
4 Palm Database File Code
5 Palm Database Format
5.1 PDB Times
[edit]Intro to the Database format
The first record of the database contains attribute information about the database, including the Creator ID, Type, Date Created, Date Modified, Launchable, database (book) name, and other data. Palm database files will generally have a .pdb extension but in some cases they may have a .prc extension (see PRC). The extension doesn't really matter on the Palm device so long as it is one of these two. The launcher will look inside the file to determine its type.

PalmOS programs are expected to have a unique four character "Creator" ID. All data files used by a program will have the same Creator ID as the program that uses them. PalmOS uses the Creator ID to know what data files are used by a program, and what program is used to open any particular data file.

[edit]Intro to PalmDOC
The default text file format on Palm devices is the PalmDOC file. This format was originally used by Aportis for their Aportis Reader product. It starts as a plain ASCII text file and is converted using a form of RLE compression to save space in RAM. Available doc readers decompress the file on the fly as they display it. The compression method is "asynchronous" -- it can be decompressed much faster than it can be compressed. Most doc files are created on desktops and synced to the target device, as compressing on the Palm is slow. RLE compression results in an approximate 40% reduction in file size.

Aportis went out of business years ago, and the Aportis Reader is no longer available, but the DOC format was reverse engineered and many reader products can view it. Even reader applications with their own private format can generally also read this format. PalmDOC files have a Creator ID of REAd and a Type of TEXt. TealDoc also has a Type of TEXt and it is identical with PalmDOC.

[edit]Intro to zTXT
A newer plain text format for PalmOS is the zTXT file. zTXT files also start as plain ASCII text files, but are then compressed with gzip compatible compression, for an average reduction of 70%. Decompressing the files requires sysZlib.prc, a port of the Zlib library, implemented as a PalmOS shared library. sysZlib is currently used by the LionDoc, Palm Fiction, Plucker, and WeaselReader document viewers.

If the PDB file has the Launchable attribute set, an icon for the file will appear in the launcher. The icon will be that of the program with the Creator ID of the PDB file. If the Creator app supports the PalmOS sysAppLaunchCmdOpenDB function, the user can tap on the document icon and invoke the owning program to view/edit the file, similar to the Way windows shortcuts work. Not all programs support this usage, so experimentation is needed to see if it will work.

[edit]Palm Database File Code
A table showing the decode of the various Palm database formats. Note that there are more database formats but the table is the ones likely to be encountered by users dealing with eBooks. The first 4 characters identify the type of database and the second four characters identify the program that uses this database.

Reader
Type Code
Adobe Reader	.pdfADBE
PalmDOC	TEXtREAd
BDicty	BVokBDIC
DB (Database program)	DB99DBOS
eReader	PNRdPPrs
eReader	DataPPrs
FireViewer (ImageViewer)	vIMGView
HanDBase	PmDBPmDB
InfoView	InfoINDB
iSilo	ToGoToGo
iSilo 3	SDocSilX
JFile	JbDbJBas
JFile Pro	JfDbJFil
LIST	DATALSdb
MobileDB	Mdb1Mdb1
MobiPocket	BOOKMOBI
Plucker	DataPlkr
QuickSheet	DataSprd
SuperMemo	SM01SMem
TealDoc	TEXtTlDc
TealInfo	InfoTlIf
TealMeal	DataTlMl
TealPaint	DataTlPt
ThinkDB	dataTDBP
Tides	TdatTide
TomeRaider	ToRaTRPW
Weasel	zTXTGPlm
WordSmith	BDOCWrdS
You can usually use a standard text editor to view the file even though it is a binary image. The file type will show up as clear text on the first line. The internal title for the book is also visible on the first line. Be careful not to modify the file when viewing it in this fashion.

[edit]Palm Database Format
A Palm Database is not a file when stored on the Palm in RAM. However it will be stored as a file if it is synced to a computer. The name of that file will always be the database name. Multi-byte numerical fields are stored in big-endian order, with the most significant byte first. The file will have the following content:

offset	bytes	content	comments
0	32	name	database name. This name is 0 terminated in the field and will be used as the file name on a computer. For eBooks this usually contains the title and may have the author depending on the length available.
32	2	attributes	bit field.
0x0002 Read-Only

0x0004 Dirty AppInfoArea

0x0008 Backup this database (i.e. no conduit exists)

0x0010 (16 decimal) Okay to install newer over existing copy, if present on PalmPilot

0x0020 (32 decimal) Force the PalmPilot to reset after this database is installed

0x0040 (64 decimal) Don't allow copy of file to be beamed to other Pilot.

34	2	version	file version
36	4	creation date	No. of seconds since start of January 1, 1904.
40	4	modification date	No. of seconds since start of January 1, 1904.
44	4	last backup date	No. of seconds since start of January 1, 1904.
48	4	modificationNumber	
52	4	appInfoID	offset to start of Application Info (if present) or null
56	4	sortInfoID	offset to start of Sort Info (if present) or null
60	4	type	See above table. (For Applications this data will be 'appl')

https://wiki.mobileread.com/wiki/PDB
