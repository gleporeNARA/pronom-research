
Archiver	Documentation	Source	Extension	Internal filetype
Zoom 5.4	Zoom.doc	No	.zom	"ZOM5"

https://www.amiga-stuff.com/archivers-download.html

============================= Zoom 5.4 ===============================
======================================================================
A  floppy disk tracking and archiving utility, written by Olaf `Olsen'
Barthel,  �  Copyright  1990-92  by Olaf Barthel, all rights reserved.
Zoom!  is a Gift-Ware product.
   Lh  data  compression/decompression  code  �  Copyright  1990-91 by
Holger  P.   Krekel & Olaf Barthel, bootblock virus recognition code �
Copyright  1992  by  Gregor  H�rmann,  run-length-compression  code  �
Copyright  1992  by  Henning Leise, arp.library � Copyright 1987-89 by
Arp Programmers.
   No  guarantee  of any kind is made that the program(s) described in
this  document  are  100% reliable.  You use this material on your own
risk.

======================= READ THIS OR MISS OUT ========================
======================================================================
On  startup  `Zoom'  will  examine  its  internal hunk structures:  if
anything is not in its correct place both programs will put up alerts.
To discover what was wrong enter `Zoom SELFTEST'.
   Enter  `CRC Zoom' to calculate the external checksum and compare it
with  the  sample  given  in  this document.  Any difference indicates
possible  virus  infection!   If  you  don't trust the sample checksum
listed in this document, send me a letter or electronic mail (adresses
listed below) and ask for the `factory checksum'.

   THIS AND THE FOLLOWING ZOOM! RELEASES MAY ONLY BE DISTRIBUTED IN
                 THE SELF-EXTRACTING ARCHIVE FORM!!!

============================== Contents ==============================
======================================================================
This  package consists of five files.  The CRC checksums were obtained
using  the  `CRC'  utility  (also included in this package).  Provided
that  all checksums match the following samples (and this document has
not been modified) no file is virus-infected.

                    Release Date: 28-Feb-92, 10:49

         Zoom           (CRC = $5C645E7E, Size = 82180 Bytes)
         Zoom.info
         CRC            (CRC = $4F5177B9, Size =  4104 Bytes)
         arp.library    (CRC = $805F8D84, Size = 17100 Bytes)

         Zoom.doc                        (Size = 33209 Bytes)

   The  `CRC'  utility  will  also  calculate  and print the so-called
`WRAP'  checksum.   For  all  programs in this distribution (including
`Zoom'  and  `CRC')  this  checksum  MUST  be  zero  (if  nonzero, the
approriate file has been modified).
   All  programs  in this distribution are PURE, I suggest setting the
`p' bit if not already done.

========================= About this release =========================
======================================================================
I must admit that the previous `Zoom' releases would not work quite as
correctly   as   advertised.    Revisions   previous   to  v4.2  would
occasionally  produce  corrupt disks when decompressing archive files.
In  revision  4.2  the  byte run precompressor was removed, curing the
`corrupt'  disk  problem.   As  an  unpleasant side effect compression
performance  and  speed dropped.  The reason for the trouble caused by
the  precompressor  was  never quite clear and the original Author (K.
Wiesel)  is  certain  that  it  works  in its unmodified form.  In the
course  of  events  I  was  told  to  remove  the  remaining  original
decompression code and so I did.

   A  couple  of  weeks  ago I was encouraged to rewrite `Zoom' and to
replace   the   previous  byte  run  precompressor  with  a  different
precompressor.   In  the course of events `Zoom' and the corresponding
file  format  were greatly enhanced.  Among other features the program
now sports support for sector header labels and uses 32 bit checksums.
The  user  interface  was  rewritten  to support the Kickstart 2.x new
look.   The `ZoomCheck' program was removed from the distribution, its
functions have been integrated into `Zoom'.

   Due  to  changes  in  the output file format files created with the
current  `Zoom'  release  cannot be decompressed using previous `Zoom'
releases.   `Zoom'  v5.4 will still read and decompress old style disk
archive files provided that they do NOT CONTAIN any run-length encoded
data  since  the  original  decompression routine had to be removed on
request by the original author.

============================== Purpose ===============================
======================================================================
Disk archiving utilities are becoming increasingly attractive.  Almost
all  other disk compression tools lack a friendly user interface, take
ages to finish their work or simply produce very long output files.
   `Zoom' uses highly-efficient data compression routines derived from
LhArc  (adaptive  Huffman  squeezing)  which  have been converted into
MC680x0  code  (we  call  it `Lh').  Data compression/decompression is
always  much  faster  than displayed by programs such as Warp, LhWarp,
LhArc and older versions of LZ (that is, before Jon Forbes tweaked the
compression algorithm).
   To  reduce  the chance of compressing a virus-infected disk, `Zoom'
will  examine  the  bootblock  and  display it if it is of nonstandard
type.   The  following  274  different  bootblock  viruses  and custom
bootblocks are recognized:

                  16BitCrew                  PvL 5.4
                    2001                     PvL 6.1
                     AEK                     PvL 6.4
                    AIDS                     PvL 6.5
                AlienNewBeat               SupplyTeam
                 AmigaFreak                  TelStar
                     Ass                   VirusHunter
             Australian Parasite            ACID 1.0
                     BS1                    ACID 3.0
                 BlackFlash            Alcatraz MegaDemo 3
                   BlowJob                Antitrax 2010
                   Butonic                 AtomicSoft
                ByteVoyager 1                Avirex
                ByteVoyager 2             Betrayal 1.0
                ByteBandit 1               BootBug 0.1
                ByteBandit 2              BB Generation
                ByteBandit 3                BootGirl
                 ByteWarrior              BootIntro 1.2
                    CCCP                BootIntro NextGen
                ClaasAbraham               BootOut 5.5
                    CList                   BootTune
               CodersNightmare              BudBrain
                 DiskDoktors                 CCS 2.0
                     DAG                     CCS 3.0
                 Destructor                  DevWare
               DigitalEmotions              ClearMem
                  DiskGuard                 DOC 1989
                 DiskHerpes            Dragons MegaDemo 1
                   FAST 1                    Dugger
                   FAST 2                  Int. Soccer
                    FICA                    BootCopy
                   Forpib                License to kill
                   Gadaffi                  Mad Monks
                  Graffiti              MemControler 1.2
                   Gremlin              MemAllocator 1.3
                   GXTeam                   NoFastMem
                     HCS                    NOMAD 1.0
                    Hilly              Outlaw Checker 1.42
                     ICE                    PAL-Boot
                  Incognito               Paradroid 90
                   IngerIQ              Phenomena Enigma
                    JITR              Phenomena MegaDemo 1
                  Joshua 1               PinBall Wizard
                  Joshua 2                PowerSlaves 1
                    Julie                   PvL Sound
                    Kauki               Quartex DrivesOff
                   Kefrens             Razor 1911 Observe
                   Lamer 1               RSI MegaDemo 1
                   Lamer 2               RSI MegaDemo 2
                   Lamer 3              Scoopex BootIntro
                   Lamer 4           Scoopex MentalHangover
                   Lamer 5            Scoopex PAL-Boot 2.0
                   Lamer 6              S&D BootCheck 1.0
                 LameStyleUK          S&D DriveControl 1.0
                     LSD               Sinister Syndicate
                    MAD 2                SlipStream 4.0
                 MegaMaster              SlipStream 6.1
                    Mexx                   Squash 4.3
                MicroSystems                 SysNot
                 MorbidAngel             TAL BootLeg 2.1
                 NorthStar 1           TheSect MegaConcert
                 NorthStar 2             TLC DemoSample
                   Obelisk                 Boot Writer
                ObeliskFormat        Venom BootLoader 1.00a
                    Opapa              Virus Destructor 1
                  Paradox 1            Virus Destructor 2
                  Paradox 2           VirusKiller prof. 2.0
                  Paratax 1             Vision MegaDemo 4
                  Paratax 2               Vortex 42 1.3
              PentagonCircle 1             XCopy prof
              PentagonCircle 2        ZeroVirus AutoAddRAM
              PentagonCircle 3         ZeroVirus BigScreen
                  PowerBomb             ZeroVirus Message
                    Rene               ZeroVirus NoFastMem
                   Revenge                 Amigo Copy
               RevengeBootload             Anarchy 1.1
                SaddamHussein               Anarchy 2
                     SCA            Archaos VirusSlayer 3.13
                  ScarFace          Archaos VirusSlayer 3.12
                  Sendarian             Action Replay Pro
                  SuperBoy                 Aspect 1.0
                  SwitchOff              Amaze Protector
                   Target               BeerMon Installed
                 Termigator            Cytax Powerboot 1.2
                  TimeBomb                   Copper
                    TGTS                FastMem Allocator
                  Traveller                Hallon 1.4
                    Turk                    Hypnosis
                  UltraFox               Hyperboot 2.82
                   Vermin                Interferion Pro
                 VirusSlayer              Interferion 1
                    VKill                 Interferion 2
                   WarHawk               Inner City 3.4
                 AIDS (HIV)               Kefrens Menu
                 AmigaMaster                 LSD 1.1
                   BigBoss                   LSD 1.0
                BladeRunners                 LSD 2.0
                     BLF                  Mirage Noboot
                 CLI-Manager          Memory Allocator 1.2
                    Clonk             Memory Controler 1.3
                     DAT                  MegaBoot 1.3
                 Deniz Unal                 NoFastMem
            Divina Exterminator 1         NTSC Warning
                   Extreme                Omniboot 5.1
                 Fast Eddie               Omniboot 3.2
                    Frity                  Option Boot
               Future Disaster           Peter Stuer 4.0
                  Glasnost               Peter Stuer 5.0
                    Gyros                 Punishers Pro
                    Hauke              Pleasure Boot 1.3+
                  Hireling               Pseudo Ops 2.1
                 Hoden 33.17              Pe Protector
                  LoverBoy                 Quartex 1.0
                    MAD 3                  Quazar/Dawn
                Nasty-Nasty!            Random Access 2.1
              No Banit Anymore!              Rebels
                  Paramount         Scorpion Developments 1.0
                   Ripper           Scorpion Developments 1.1
                    Riska                Stoneboot 1.06
                  Suntronic                Scoopex 1.3
              Twinz Santa Claus             Santurary
                   ULDV 8                 Sabaudian 1.0
                  Virus 4.2                Scoopex 1.0
               Warsaw Avenger            SlipStream 2.1
                    Xerox                SlipStream 3.0
                 ZAccess 1.0             SlipStream 6.0
                 ZAccess 2.0             SlipStream 5.0
                  Blizzard               SlipStream 7.0
                 BWFastLoad                SuperDuper
                   M&U 5.5                 TriStar 1.1
                   M&U 6.1                  TetraCopy
                  StarFire                TSB Protector
                   PvL 3.0                TSB Virusfree
                   PvL 4.0              UltPack BootLoad
                   PvL 5.0                 VCC BootMem
                   PvL 5.1                   VCS 3.2
                   PvL 5.3                 Zap'Em 1.0

   `Zoom'  will put up an alert if it finds one of these bootblocks on
a  disk to be compressed and will ask you whether you wish to have the
suspicious  bootblock  data replaced in the compressed disk archive or
not.   If  you  choose  to  replace  it,  `Zoom'  will  use a standard
Kickstart  2.x  bootblock  in  place of the original data.  While this
bootblock  is  different from the Kickstart 1.3 bootblock, it is still
compatible with older Kickstart revisions.

============================ Installation ============================
======================================================================
Copy `arp.library' to your LIBS:  directory, `Zoom' requires it.  ENV:
(default AmigaDOS environment storage directory) should be assigned to
somewhere, but needn't.

======================== `Zoom' Shell usage ==========================
======================================================================
The following command line template is displayed if you type `Zoom ?':

 From,To,Check/K,T=Text/K,S=Start/K,E=End/K,C=Crypt/K,D=ClearData/S,
   B=ClearBlocks/S,V=Verify/S,L=SecLabels/S,Q=Quiet/S,N=NoPrompt/S,
                              Selftest/S

From .......... Name  of  the file to be read and written back to disk
                or the name of the filing device to read the data from
                to be compressed:

                Examples: `Zoom from df0: to ram:doodle'
                          `Zoom from ram:doodle to df0:'

                   If possible, `Zoom' will try to determine if source
                and  destination overlap.  You will be notified if you
                are  about  to  decompress  a  file  residing  on  the
                destination  disk  or  to  create a file on the source
                disk to be compressed.

To ............ Name  of  the device to store the decompressed data on
                or  the  name  of the file to send the compressed data
                to.

Check ......... A  file created by `Zoom'  will be read and tested. If
                a  checksum  is  not  in  its  correct  place an error
                message  will be displayed.  Unless the `Quiet' switch
                is  used  a text file attached to the `Zoom' data file
                in question will be displayed as well.

                Example: `Zoom check ram:doodle'

Text .......... `Zoom' can attach a text file to an archive file which
                will be displayed while/before data decompression.  It
                will  be  read  and  compressed before the actual disk
                compression takes place.

Start ......... The  track  number  to  start  compressing  at.   This
                argument  is optional and does not need to be entered.
                By default the starting track is zero (= 0).

                Example: `Zoom df0: to ram:dodo start 17 end 22'

End ........... The  number  of the last track to compress.  Note that
                you  cannot  ask  for  a  starting  track and omit the
                ending   track   (and  the  other  way  round).   Both
                arguments must be used.

Crypt ......... Files  created  by  `Zoom'  may  be  encrypted  with a
                special  password.   The  same  password (Note:  it is
                case  sensitive)  will  be  required to decompress the
                output file.

                Example: `Zoom df0: to ram:doodle crypt Secret'

Cleardata ..... This  switch  may  reduce  the size of the output file
                produced  by  compression.   Under  the  `old'  filing
                system a data block contains the number of bytes which
                are  actually  occupied by data.  The rest of the data
                block usually contains random data.  If this switch is
                active  the  unused  portion of the data block will be
                set  to  zero.  Note:  due to the different data block
                format  this  switch  has  no effect if used on a disk
                formatted by the fast filing system.

Clearblocks ... Not  all  blocks of a disk may be actually occupied by
                data.   `Zoom' uses the disk Bitmap to determine which
                blocks to read and to compress.  By default the Bitmap
                is  ignored.  This  switch  will cause `Zoom'  to skip
                unused  blocks.   Note:  this feature will be disabled
                if  the  disk to be compressed is not a valid AmigaDOS
                disk with a properly initialized root/boot block and a
                valid  Bitmap  flag.  Also important:  this switch has
                no  effect  if  a  set  of  tracks is to be compressed
                instead of the default 0..79.

Verify ........ Each  write  access  to  disk will be verified if this
                switch  is  active.  The actual data verification will
                be  handled  by the blitter, so it won't slow down the
                decompression process too much.

SecLabels ..... `Zoom'   will   automatically  compress  sector  label
                information along with each track it reads if the disk
                to  be  compressed  is  not a standard AmigaDOS format
                disk  or  the  `Clear  Unused  Blocks' switch has been
                disabled.
                   In  order  to  restore the sector label information
                during  compression,  the  destination  disk has to be
                formatted.  `Zoom' will format the disk for you if the
                `Format Sector Labels' switch is active.  To save much
                time,  you  could  turn this switch off and format the
                disk to write to before submitting it to `Zoom'.

Quiet ......... If  this  switch is in effect, `Zoom' will not display
                text    files    attached   to   data   files   during
                decompression.

NoPrompt ...... By  default  `Zoom' will prompt the user to insert the
                source/destination     disk    to    be    used    for
                compression/decompression.   If  the `NoPrompt' switch
                is  in  effect,  `Zoom'  will not wait for the user to
                press     return,    compression/decompression    will
                immediately.

Selftest ...... This  shell  option was added to help you to verify if
                your  `Zoom'  program  has  been  infected by a virus.
                `Zoom'   will examine  its internal hunk structure and
                complain  if  a  hunk  is  not in its standard size or
                place.   These  are conditions which can, but need not
                indicate  link  virus infection.  While this technique
                does  not  entirely  prevent  the  creation  of trojan
                horse-versions of `Zoom' or that an extremely `clever'
                virus infects `Zoom',it will probably catch all `dumb'
                link  viruses  which  put their virus code in front of
                the first hunk or behind the last hunk of a program.

====================== `Zoom' Workbench usage ========================
======================================================================
If  called  from  Workbench  (or  from  Shell without any arguments) a
window  will  pop  up under the mouse pointer containing the following
gadgets:

Select File ........... Select   the   name   of   the   file   to  be
                        compressed/decompressed.   It will be put into
                        the string gadget to the right of this button.

Select Drive .......... Select the the drive to read/write the data to
                        be   compressed/decompressed   from/to.   This
                        button  will  cycle through all filing systems
                        which   match   the  typical  size  and  track
                        definitions  of  the  builtin 3.5" disk drive.
                        The name of the filing system will be put into
                        the string gadget to the right of this button.

Enter Password ........ Will  put up a requester in which the password
                        to  be used for data compression/decompression
                        can be entered.
                           The  program  will  refer  to this password
                        when  decompressing  encrypted  files and will
                        prompt for a new password if the password does
                        not match the encryption key.
                           If enabled (e.g.  the `Encrypt Output File'
                        switch  is  active)  the program will use this
                        password for output file encryption.

Select Text File ...... Select  the  text  file to be prepended to all
                        output  files,  note:   in  order  to use this
                        feature,  the  `Include Text File' switch must
                        be active.

Start Compression ..... Click  this  button to start data compression,
                        click it again to stop the process.

Start Decompression ... Click  this button to start data decompression
                        click it again to stop the process.

Start File Check ...... Will  read  and  examine  the  current  `Zoom'
                        output  file  to  detect  file  defects.

Start File View ....... will  read  the current `Zoom' output file and
                        display the text file attached to it (if any).

From Track To Track ... The  starting  and  ending tracks to compress,
                        note  that  this  feature  has  to be selected
                        explicitely.

Clear Unused Data ..... Unused  data  in  standard  file system blocks
                        will  be  set  to  zero  if  this  feature  is
                        enabled.

Clear Unused Blocks ... Unused  blocks  will be skipped if this switch
                        is  in effect.  Note:  cannot  be  mixed  with
                        `from track to track'.

Verify Write .......... Enables  write  verification  while data files
                        are  decompressed.   This switch has no effect
                        during data compression.

Include Text File ..... If enabled, `Zoom' will prepend a text file to
                        be  specified  with  the  `Select  Text  File'
                        button to each output file it produces.

Encrypt Output File ... To  have  the  output  files  `Zoom'  produces
                        encrypted  with a password turn this switch on
                        and  enter  an  access  key  using  the `Enter
                        Password' button.

Format Sector Labels .. `Zoom'   will  automatically  compress  sector
                        label  information  along  with  each track it
                        reads  if  the  disk to be compressed is not a
                        standard  AmigaDOS  format  disk or the `Clear
                        Unused Blocks' switch has been disabled.
                           In   order  to  restore  the  sector  label
                        information     during     compression,    the
                        destination  disk has to be formatted.  `Zoom'
                        will  format  the  disk for you if the `Format
                        Sector Labels' switch is active.  To save much
                        time,  you  could  turn  this  switch  off and
                        format  the disk to write to before submitting
                        it to `Zoom'.

   The  display  on the right hand side of the `Zoom'  window contains
the following elements:

Free Disk Space ....... The space left on the destination drive.

Available Memory ...... System memory currently available.

File Size ............. The size of the compressed data file.

Track Size ............ Size   of   the  last  compressed/decompressed
                        track(s).   Usually  two  values  will  appear
                        here:   the  first one denotes the size of the
                        buffer after pre-compression, the second value
                        indicates the final size after Lh-compression.

Compression Ratio ..... This  display denotes the amount of data saved
                        during  compression.  Note:  this value refers
                        to the entire output file.

Current Track ......... Current track counter.

Elapsed Time .......... Time   elapsed   during  data  compression  or
                        decompression.

Status ................ The action currently executed.

   If an output file does not fit on the destination disk, compression
wil  be  terminated.   The starting and ending tracks will be adjusted
accordingly  to  allow the user to continue to compress the disk where
the first compression run stopped.
   The  `name'  of  the  file  to  be  decompressed  may be a wildcard
expression.  `Zoom'  will try to locate and decompress all files which
match  the  pattern (note:  only the Intuition interface supports this
feature).
   Multiple  selection  is  supported as well:  to decompress a row of
`Zoom' output files, hold down the shift-key, click the icons of files
you  wish  to decompress,  then  double-click the `Zoom'  icon.  Note:
`Zoom'   will use  the  default  options  to decompress the files, the
online  options  can  only  be  changed  after  all  files  have  been
processed!

================ The `ZOOMOPTS' environment variable =================
======================================================================
The current settings displayed in the Intuition interface are saved in
a  default  environment  variable  which  is read again when `Zoom' is
called  again.  This variable is set both in Manx/ARP and in Workbench
1.3 format.  The following template is supported:

  File/K,Drive/K,Start/K,End/K,TextFile/K,ClearData/S,ClearBlocks/S,
        Verify/S,IncludeText/S,Encrypt/S,SecLabels/S,NoIcons/S

File .......... The  default  string  to  appear  in  the  `File name'
                gadget.

Drive ......... The string to appear in the `Drive' gadget.

Start ......... The first track to start data compression with.

End ........... The last track to compress.

TextFile ...... The name of the text  file  to  be  attached  to  each
                output file produced.

ClearData ..... Whether unused block data is to be zeroed or not.

ClearBlocks ... Whether unused blocks are to be skipped or not.

Verify ........ Whether write verification is enabled or not.

IncludeText ... Set this flag if you want `Zoom' to include text files
                with each output file it produces.

Encrypt ....... Set this flag if  you  want  `Zoom'  to  encrypt  each
                output file it produces.

SecLabels ..... Set this flag if you want  `Zoom'  to  format  a  disk
                before decompressing  a  file  which  contains  sector
                label information to it.

NoIcons ....... Set this flag if you don't want `Zoom' to create icons
                for each output file.

                    A sample `ZOOMOPTS' value is:
        `FILE RAM:Blank.zom DRIVE DF0: CLEARDATA CLEARBLOCKS'

   `Zoom'  will  prefer  to set/examine the the `ZOOMOPTS' environment
variable  in the AmigaDOS 1.3 standard. If this is not possible `Zoom'
will set/examine the Manx/ARP standard environment variable instead.

========================== Technical notes ===========================
======================================================================
`Zoom'  needs approximateley 240K bytes of memory to perform its jobs.
Make  sure  that  enough  space is available, or `Zoom' will complain.
Note  that  disabling  write verification will save about 10 KBytes of
chip memory.
   The Lh data compression/decompression routines are related to LhArc
and PKZip.  Unlike common data compression/decompression routines such
as  employed  by PowerPacker or Imploder, the performance of Lh cannot
be downgraded by adjusting the data sequence search depth.  This means
that  Lh  will always compress trying to achieve the best results with
the maximum effort.
   The  byte-run compression/decompression code will fit entirely into
the  instruction  caches  of the MC68020/68030/68040 processors, which
means  that  both  compression  and  decompression time will go almost
unnoticed.

======================= How fast `Zoom' works ========================
======================================================================
I  suppose  you  are shocked by the amount of memory required for data
compression / decompression.  Well, as it turns out I traded speed for
memory.   I  tested  `Zoom'  (compressing  a  disk)  against  DMS 1.02
(running  in medium mode), LhWarp 1.4 and Warp 1.2a with the following
results:

                            Workbench1.3D:

                Tool   | Output file  | Time
                -------+--------------+--------------
                Warp   | 496990 bytes | 11:49 minutes
                LhWarp | 399889 bytes | 16:39 minutes
                DMS    | 480952 bytes | 11:00 minutes
                Zoom   | 383230 bytes |  6:15 minutes

============================== Credits ===============================
======================================================================
Credits go to Ralf Thanner who kept nagging until I finally started to
rewrite  `Zoom', who also collected a list of most useful features you
can  now  find  implemented  in `Zoom' and who also organized the code
contributions  without  which  `Zoom'  would  lack  a  great  part  of
functionality,  to  Henning  Leise  who  contributed the excellent new
precompression  code,  to Georg H�rmann who donated his fine bootblock
virus recognition code, to Erik L�vendahl S�rensen for maintaining the
Amiga  virus library, to Martin Berndt, who discovered the last errors
before  `Zoom'  went  for  release, to Arp programmers for the Arp 1.3
package  without  which  `Zoom' would have been much more difficult to
implement and last but not least to all the beta testers.

================= Author's request and Gift-Ware fee =================
======================================================================
`Zoom'  is  released as Gift-Ware.  If you like the program and use it
frequently,  send  a  gift  of  any  kind which you think will do as a
payment for the program to the author:

                             Olaf Barthel
                          Brabeckstrasse 35
                          D-3000 Hannover 71

                     Federal Republic of Germany

   If  an  error  shows  up,  do not hesitate to contact me as soon as
possible.  My `real world' adress is given above, the following are my
EMail addresses:

                   Z-Netz: O.BARTHEL@A-Link-H
                   Usenet: o.barthel@a-link-h.zer.sub.org
                           cbmvax.commodore.com!cbmehq!sourcery!olsen

   The  entire  `Zoom'  package  may be noncommercially redistributed,
provided  that the package is always distributed in its complete form.
A  small  copy  fee for media costs is okay but any kind of commercial
distribution is strictly forbidden!
   Comments  and suggestions how to improve this program are generally
appreciated!

============ Revision history (most recent change first) =============
======================================================================
5.4     Previous  releases  did  not  seem to like system fonts taller
        than  11  pixels  (fixed),  the  window  layout  now  reflects
        non-newlook  and  monochrome  screens when opened, the program
        now  treats  simple  checksum  errors on data blocks in a much
        more   tolerant   way;   instead   of   aborting   the  entire
        decompression  process, it will give the user a chance to skip
        to the next data block or to abort the decompression.  A small
        bug  in  the  pop-up requester code could cause system crashes
        when  running  under control of Kickstart 1.2 and 1.3 (fixed).
        This  release  incorporates  the new bootblock virus detection
        code from Georg H�rmann's `VirusZ' tool package.
