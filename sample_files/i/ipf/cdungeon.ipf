:userdoc.
:title.cdungeon Documentation
.********************************************************************
.*
.*
.*
:h1.Read Me
:p.
This is a source file distribution for the game dungeon as implemented
in C.  It is based on the game dungeon as distributed on a DECUS tape,
circa 1980.  It has been converted from the original DEC FORTRAN to
f77 to C.  See the file "History" for some revision history and credit
to those whose efforts have made this possible.
:p.
Take a look at the Makefile.  It should be fine for most systems,
although you may want to change BINDIR and LIBDIR.  On SCO UNIX see
the note at the definition of CFLAGS.  Makefile.MSC should work for
MS-DOS using Microsoft C.  It was contributed by Jonathan Mark
(uunet!microsoft!jonm).  Makefile.amiga should work for the Amiga
using Lattice/SAS C.  It was contributed by Ethan Dicks
(erd@cis.ohio-state.edu).
:p.
To compile and link dungeon, type make.  To install it in BINDIR and
LIBDIR, type make install.
:p.
:hp8.[make install not supported.]:ehp8.
:p.
There are two functions in local.c that you may want to write for your
system.  The first controls when the game can be played, and can be
used to disallow play during business hours, for example.  The second
controls who is allowed to invoke the game debugging tool; note that
this will only be available at all if you uncomment the GDTFLAG line
in the Makefile.  The comments in local.c explain what to do.
:p.
All files in the distribution kit are ASCII.  The files dtextc.uu1,
dtextc.uu2, dtextc.uu3, dtextc.uu4 are parts of a uuencoded binary
file named dtextc.dat.  The Makefile will create the binary file
automatically on a UNIX system; elsewhere you will have to stick the
four files together in numerical order and run the resulting large
file through uudecode.  I can't help you find uudecode, though.
:p.
:hp8.[All the decoding necessary is already done.]:ehp8.
:p.
The binary file dtextc.dat holds the text strings and initialization
information for the game.  The strings are encrypted to prevent easy
cheating; if you want to do further work on the program, or translate
the strings, Ian Taylor (address below) has a program to convert this
file back and forth from a human-readable form.
:p.
This has been compiled and tested on a DECstation 3100 running Ultrix
4.0, a VAXstation GPX running Ultrix 3.1, an 80386 box running SCO
Unix 3.2.2, an 8800 running Ultrix, a Sun box running SUN OS 4 release
4, and an 80386 PC running MS-DOS.
:p.
:hp8.[And a 486-33 PC running OS/2 2.x.]:ehp8.
:p.
I consider my changes to be in the public domain, as did previous
contributors (see the History file for more detail).  The original
source, however, is copyright.
:lines.
        Ian Lance Taylor
        ian@airs.com or uunet!airs!ian
        11 March 1991
:elines.
:p.
Dungeon consists of the following files&colon.
:font facename=Courier size=16x14.
:lines.
        src/dmain.c             -program root
        src/dgame.c             -main routine
        src/dsub.c              -resident subroutines
        src/dinit.c             -initialization routine
        src/np.c                -parser, part 0
        src/np1.c               -parser, part 1
        src/np2.c               -parser, part 2
        src/np3.c               -parser, part 3
        src/gdt.c               -game debugging tool
        src/verbs.c             -principal verbs
        src/objcts.c            -principal objects
        src/sverbs.c            -simple verbs
        src/dverb1.c            -auxiliary verbs, part 1
        src/dverb2.c            -auxiliary verbs, part 2
        src/actors.c            -character processors
        src/demons.c            -demon processors
        src/clockr.c            -clock event processors
        src/rooms.c             -room processors
        src/nrooms.c            -new room processors
        src/sobjs.c             -simple objects
        src/nobjs.c             -new objects
        src/ballop.c            -balloon processor
        src/lightp.c            -light processors
        src/villns.c            -villain processors
        src/dso1.c              -overlaid subroutines, part 1
        src/dso2.c              -overlaid subroutines, part 2
        src/dso3.c              -overlaid subroutines, part 3
        src/dso4.c              -overlaid subroutines, part 4
        src/dso5.c              -overlaid subroutines, part 5
        src/dso6.c              -overlaid subroutines, part 6
        src/dso7.c              -overlaid subroutines, part 7
        src/funcs.h             -header file with function prototypes
        src/vars.h              -header file with variable definitions
        src/parse.h             -header file for parsing routines
        src/supp.c              -support routines and more processing
        src/local.c             -hooks for local definition
        src/cdungeon.ipf        -source for cdungeon.inf
        dtextc.dat              -data base [binary file]
        cdungeon.inf            -This file
        Makefile                -Makefile
:elines.
:font facename=default size=0x0.
.********************************************************************
.*
.*
.*
:h1.Manual page
:font facename=Courier size=16x14.
:lines.
NAME
     dungeon - Adventures in the Dungeons of Doom

SYNOPSIS
     dungeon

DESCRIPTION
     Dungeon is a game of adventure, danger, and low cunning.  In
     it  you will explore some of the most amazing territory ever
     seen by mortal man.  Hardened adventurers have run screaming
     from the terrors contained within.

     In Dungeon, the intrepid explorer delves into the  forgotten
     secrets of a lost labyrinth deep in the bowels of the earth,
     searching for vast treasures long hidden from  prying  eyes,
     treasures guarded by fearsome monsters and diabolical traps!

     Dungeon was created at the Programming  Technology  Division
     of  the MIT Laboratory for Computer Science by Tim Anderson,
     Marc  Blank,  Bruce  Daniels,  and  Dave  Lebling.   It  was
     inspired  by  the  Adventure game of Crowther and Woods, and
     the Dungeons and Dragons game of  Gygax  and  Arneson.   The
     original  version  was  written  in MDL (alias MUDDLE).  The
     current version was translated from MDL into FORTRAN IV by a
     somewhat   paranoid  DEC  engineer  who  prefers  to  remain
     anonymous.

     On-line information may be obtained with the  commands  HELP
     and INFO.

DETAILS
     Following is the summary produced by the info command&colon.

          Welcome to Dungeon!

          You are near a large dungeon, which is reputed to  con-
          tain vast quantities of treasure.   Naturally, you wish
          to acquire some of it.  In order to do so, you must  of
          course  remove  it  from  the dungeon.  To receive full
          credit for it, you must deposit it safely in the trophy
          case in the living room of the house.

          In addition to valuables, the dungeon contains  various
          objects  which may or may not be useful in your attempt
          to get rich.  You may  need  sources  of  light,  since
          dungeons  are  often  dark, and weapons, since dungeons
          often have unfriendly things wandering about.   Reading
          material is scattered around the dungeon as well;  some
          of it is rumored to be useful.

          To determine how successful you have been, a  score  is
          kept.   When you find a valuable object and pick it up,
          you receive a certain number of points,  which  depends
          on  the  difficulty of finding the object.  You receive
          extra points for transporting the  treasure  safely  to
          the  living room and placing it in the trophy case.  In
          addition, some particularly interesting  rooms  have  a
          value  associated with visiting them.  The only penalty
          is for getting yourself killed, which you may  do  only
          twice.

          Of special note is a thief  (always  carrying  a  large
          bag)  who likes to wander around in the dungeon (he has
          never been seen by the light of day).  He likes to take
          things.   Since he steals for pleasure rather than pro-
          fit and is somewhat  sadistic,  he  only  takes  things
          which  you  have  seen.  Although he prefers valuables,
          sometimes in his haste he may take something  which  is
          worthless.  From time to time, he examines his take and
          discards objects which he doesn't like.  He  may  occa-
          sionally  stop  in  a  room  you are visiting, but more
          often he just wanders through and rips you off (he is a
          skilled pickpocket).

COMMANDS
     brief          suppresses printing of long room descriptions
                    for rooms which have been visited.

     superbrief     suppresses printing of long room descriptions
                    for all rooms.

     verbose        restores long descriptions.

     info           prints information which might give some idea
                    of what the game is about.

     quit           prints your score and asks whether  you  wish
                    to continue playing.

     save           saves the state of the game  for  later  con-
                    tinuation.

     restore        restores a saved game.

     inventory      lists the objects in your possession.

     look           prints a description of your surroundings.

     score          prints your current score and ranking.

     time           tells you how long you have been playing.

     diagnose       reports on your injuries, if any.

     The inventory command may be abbreviated i; the look command
     may be abbreviated l; the quit command may be abbreviated q.

     A command that begins with '!' as  the  first  character  is
     taken  to  be a shell command and is passed unchanged to the
     shell via :hp5.system(3):ehp5.&per.

CONTAINMENT
     Some objects can contain  other  objects.   Many  such  con-
     tainers can be opened and closed.  The rest are always open.
     They may or may not  be  transparent.   For  you  to  access
     (e.g.,  take)  an  object  which is in a container, the con-
     tainer must be open.  For you to see  such  an  object,  the
     container  must  be  either open or transparent.  Containers
     have a capacity, and  objects  have  sizes;  the  number  of
     objects  which  will  fit  therefore depends on their sizes.
     You may put any object you have access to (it need not be in
     your  hands) into any other object.  At some point, the pro-
     gram will attempt to pick it up if you  don't  already  have
     it,  which  process  may  fail  if you're carrying too much.
     Although containers can contain other containers,  the  pro-
     gram doesn't access more than one level down.

FIGHTING
     Occupants of the dungeon will, as a rule,  fight  back  when
     attacked.   In  some  cases,  they may attack even if unpro-
     voked.   Useful  verbs  here  are  :hp5.attack:ehp5.   <villain>   :hp5.with:ehp5.
     <weapon>,  :hp5.kill:ehp5., etc.  Knife-throwing may or may not be use-
     ful.  You have a fighting strength which varies  with  time.
     Being  in  a  fight,  getting  killed, and being injured all
     lower this strength.  Strength is regained with time.  Thus,
     it  is  not  a  good idea to fight someone immediately after
     being killed.  Other details should become apparent after  a
     few melees or deaths.

COMMAND PARSER
     A command is one line  of  text  terminated  by  a  carriage
     return.   For  reasons  of  simplicity,  all  words are dis-
     tinguished by their  first  six  letters.   All  others  are
     ignored.   For  example, typing :hp5.disassemble the encyclopedia:ehp5.
     is not only meaningless, it also creates excess  effort  for
     your  fingers.   Note that this truncation may produce ambi-
     guities in the intepretation of longer  words.   [Also  note
     that upper and lower case are equivalent.]

     You are dealing with a fairly stupid  parser,  which  under-
     stands the following types of things:

          Actions:
               Among the more obvious of  these,  such  as  :hp5.take:ehp5.,
               :hp5.put:ehp5., :hp5.drop:ehp5., etc.  Fairly general forms of these may
               be used, such as :hp5.pick up:ehp5., :hp5.put  down:ehp5.,  etc.   :hp5.board:ehp5.
               and :hp5.disembark:ehp5. may be used with certain objects.

          Directions:
               :hp5.north:ehp5., :hp5.south:ehp5., :hp5.up:ehp5., :hp5.down:ehp5.,  etc.  and  their  various
               abbreviations.    Other  more  obscure  directions
               (:hp5.land:ehp5., :hp5.cross:ehp5., :hp5.walk  through:ehp5.)  are  appropriate  in
               only certain situations.

          Objects:
               Most objects have names and can be  referenced  by
               them.

          Adjectives:
               Some adjectives are understood and  required  when
               there are two objects which can be referenced with
               the same 'name' (e.g., :hp5.doors:ehp5., :hp5.buttons:ehp5.).

          Prepositions:
               It may be  necessary  in  some  cases  to  include
               prepositions,  but  the  parser attempts to handle
               cases which aren't ambiguous without.   Thus  :hp5.give:ehp5.
               :hp5.car  to  demon:ehp5.  will work, as will :hp5.give demon car:ehp5..
               :hp5.give  car  demon:ehp5.  probably   won't   do   anything
               interesting.   When  a  preposition  is  used,  it
               should be appropriate; :hp5.give car with  demon:ehp5.  won't
               parse.

          Sentences:
               The parser understands a reasonable number of syn-
               tactic  construc-  tions.  In particular, multiple
               commands (separated by commas) can  be  placed  on
               the same line.

          Ambiguity:
               The parser tries to be clever about what to do  in
               the case of actions which require objects that are
               not explicitly specified.  If there  is  only  one
               possible  object,  the  parser will assume that it
               should be used.  Otherwise, the parser  will  ask.
               Most   questions   asked  by  the  parser  can  be
               answered.

FILES
     dtextc.dat     - encoded messages and initialization  infor-
     mation
     dsave.dat      - save file

BUGS
     For those familiar with the MDL version of the game  on  the
     ARPAnet,  the following is a list of the major incompatabil-
     ties:
          -The  first  six  letters  of  a  word  are  considered
          significant, instead of the first five.
          -The syntax for :hp5.tell:ehp5., :hp5.answer:ehp5., and :hp5.incant:ehp5. is different.
          -Compound objects are not recognized.
          -Compound commands can be delimited with comma as  well
          as period.

     Also, the palantir, brochure, and dead man problems are  not
     implemented.

AUTHORS
     Many people have had a hand in this version.  See the  "His-
     tory"  and  "README" sections for credits.  Send bug reports to
     ian@airs.com (or uunet!airs!ian).
:elines.
:font facename=default size=0x0.
.********************************************************************
.*
.*
.*
:h1.Revision History
:lines align=center.
:hp5.History of the C Implementation of Dungeon:ehp5.
:elines.
:p.
This version of dungeon has been modified from FORTRAN to C.  The
original was written in DEC FORTRAN, translated from MDL.  It was then
translated to f77 for UN*X systems, from which it was translated to C.
The C translation was done with the help of f2c, the FORTRAN to C
translator written by David Gay (AT&amp.T Bell Labs), Stu Feldman
(Bellcore), Mark Maimone (Carnegie-Mellon University), and Norm
Schryer (AT&amp.T Bell Labs).
:p.
I. From the original documentation...
:lines.
To&colon.     Dungeon Players
From&colon.   "The Translator"
Subj&colon.   Game Information
Date&colon.   8-OCT-80
:elines.
:p.
This is the first (and last) source release of the PDP-11 version of 
Dungeon.
:p.
Please note that Dungeon has been superceded by the game ZORK(tm).
The following is an extract from the new product announcement for
ZORK in the September, 1980 issue of the RT-11 SIG newsletter&colon.
:p.:hp9.
"'ZORK&colon.  The Great Underground Empire - Part I' ...was developed
by the original authors based on their ZORK (Dungeon) game for
the PDP-10.  It features a greatly improved parser;  command
input and transcript output files;  SAVEs to any device and
file name;  and adaptation to different terminal types,
including a status line on VT100s.  Note&colon.  this is not the
FORTRAN version that has been available through DECUS.  This
version has been completely rewritten to run efficiently on
small machines - up to 10 times as fast as the DECUS version.
:p.
&per.&per.&per.ZORK runs under RT-ll, HT-ll, or RSTS/E and requires as
little as 20K words of memory and a single floppy disk drive.
The game package, consisting of an RX01-format diskette and
an instruction booklet, is available from Infocom, Inc.,
P.O. Box 120, Kendall Station, Cambridge, Ma. 02142."
:ehp9.
:p.
ZORK(tm) is a trademark of Infocom, Inc.  It is available for several
popular personal computers as well as for the PDP-ll.
:p.
:hp2.SUMMARY:ehp2.
:lines align=center.
Welcome to Dungeon!
:elines.
:p.
Dungeon is a game of adventure, danger, and low cunning.  In it
you will explore some of the most amazing territory ever seen by mortal
man.  Hardened adventurers have run screaming from the terrors contained
within.
:p.
In Dungeon, the intrepid explorer delves into the forgotten secrets
of a lost labyrinth deep in the bowels of the earth, searching for
vast treasures long hidden from prying eyes, treasures guarded by
fearsome monsters and diabolical traps!
:p.
No DECsystem should be without one!
:p.
Dungeon was created at the Programming Technology Division of the MIT
Laboratory for Computer Science by Tim Anderson, Marc Blank, Bruce
Daniels, and Dave Lebling.  It was inspired by the Adventure game of
Crowther and Woods, and the Dungeons and Dragons game of Gygax
and Arneson.  The original version was written in MDL (alias MUDDLE).
The current version was translated from MDL into FORTRAN IV by
a somewhat paranoid DEC engineer who prefers to remain anonymous.
:p.
On-line information may be obtained with the commands HELP and INFO.
:p.
:hp2.
II. DEC FORTRAN to f77 Conversion (17-nov-81)
:ehp2.
:p.
The conversion from DEC FORTRAN to Unix f77 was done by Randy
Dietrich, Lynn Cochran and Sig Peterson.  Much hacking was done to get
it to fit in the limited address space of a PDP-11/44 (split I/D).
Suffice it to say that by leaving out the debugging package and not
linking in the f77 i/o library they managed to get it to run.
:p.
:hp2.
III. PDP to VAX (dec-85)
:ehp2.
:p.
Based on the work of Randy, Lynn and Sig, Bill Randle folded in the
full save/restore functions and the game debugging package (gdt) into
the pdp version to create a Vax/Unix version.  This version also uses
f77 i/o, thus eliminating the extra speak and listen processes needed
on the pdp.
:p.
:hp2.
IV. Cleanup I (11-dec-86)
:p.
:ehp2.
John Gilmore (hoptoad!gnu) cleaned up the source files by moving
most of the common declarations into include files and added
comments from the original (FORTRAN or MDL?) source.  His efforts
are greatly appreciated.
:p.
:hp2.
V. Cleanup II (9-feb-87)
:ehp2.
:p.
Bill Randle (billr@tekred.tek.com) added the pdp dependencies back
into the Vax source files with #ifdefs in order to have just one
set of sources.  Previously, there were two sets of source&colon. one for
the pdp and one for the Vax.  In addition, a shell escape of the
form !cmd was added and the wizard can enter the gdt without having
to recompile the source.  Finally, a man page was generated, based
on the dungeon.doc file.
:p.
:hp2.
VI. f77 to C (11-mar-91)
:ehp2.
:p.
Ian Lance Taylor (ian@airs.com or uunet!airs!ian) used the f2c
translator to generate C source code.  The resulting code was modified
to remove the FORTRAN I/O library, to add simple more processing, and
to change the format of the database file.  Andre Srinivasan
(andre@cs.pitt.edu) help test it.  Jonathan Mark
(uunet!microsoft!jonm) made it work under MS-DOS and Microsoft C.
.********************************************************************
.*
.*
.*
:h1.OS/2 Port Notes
:p.
:hp5.Changes&colon.:ehp5.
:ul compact.
:li.cdungeon requires OS/2 2.0 or later.
:li.HPFS support has been included, but is not required for use.
:li.Makefile changed to compile Intel OMF format.
:li.IPF help file added in place of documentation.  (README, etc.)
:li.Dungeon text database precompiled and included in executable (.) directory.
:eul.
:p.
This was compiled with emx-0.8f but it does not require EMX.DLL.
:p.
Since the full, unmodified source and documentation was not included, I
am obligated to tell you that you can get it from the archive site
:hp2.wuarchive.wustl.edu:ehp2. in the directory
:hp8./usenet/comp.sources.misc/..:ehp8.
:lines align=center.
Jeff M. Garzik - April 27, 1993
gtd543a@prism.gatech.edu (preferred until June 1997)
jgarzik@nyx.cs.du.edu
jeff.garzik@bbs.oit.unc.edu
:elines.
:euserdoc.

