:userdoc.
:docprof toc=12345 ctrlarea=coverpage.
:title.DBF_edit
:ctrldef.
:ctrl ctrlid=IPFEDefault controls='search print index contents esc back forward ' coverpage.
:ectrldef.
.* Documentation written by Doug Rickman,GHCC/MSFC/NASA
.* Created by IPF Editor Version 2.12 (C) 1992-1995 Perez Computing Services
.* To order the IPF Editor call: 1-800-IPF-7622
.* For information call: 1-360-428-5025
.*********************************************************
.*UserList=Undefined
.*UserList=Doug Rickman
.*DocType=HLP
.*HelpTargetRC=
.*HelpTargetH=
.*HelpTargetC=

:h1 res=110 name=Purpose_110 id=110.Purpose
.*:EditTime=963335598
.*:EditUser=1
:i1. Purpose
:p.:hp7.DBF_edit:ehp7. edits dBASE files (.dbf) in ways that are not normally supported or are exceptionally difficult to accomplish
.*BR
using most database programs.  Fields (i.e. columns) may be copied, renamed, moved, deleted, and redefined.  "Magic" operations,
.*BR
which perform tasks defined by the programmer, are also available.  In this release these include parsing of an input field using
.*BR
either a string or a position and conversion of U.S.G.S. DLG attributes stored as FIPS codes to state and county names.  Programmers
.*BR
with access to VisProRexx can add more such Magic routines.  .DBF files may also be exported in a form that is readily edited by
.*BR
a REXX program.  The same format may also be imported to create a .DBF file.


:artwork align=center name='D:\SOURCE\VISPROSOURCE\DBF_EDIT\MAINPANEL.BMP'.
:artlink.
:link reftype=hd res=240 x=11 y=505 cx=340 cy=48.
:link reftype=hd res=250 x=12 y=455 cx=339 cy=48.
:link reftype=hd res=65 x=13 y=409 cx=337 cy=43.
:link reftype=hd res=55 x=10 y=163 cx=342 cy=244.
:link reftype=hd res=60 x=11 y=61 cx=342 cy=100.
:link reftype=hd res=540 x=11 y=31 cx=343 cy=28.
:eartlink.


:p.:hp9.Most of the above image is actually a selection of links to various parts of this document.  A single click within the image
.*BR
will highlight the area if it is a link.  A double click will take you to the appropriate section of the document.:ehp9.


:h1   res=200.Operation
.*:EditTime=963335233
.*:EditUser=1
:i1. Operating Instructions
:p.Normally you will want to select an input .DBF file.  Alternatively you may wish to import a text file with the proper format.
.*BR
 When a .DBF file has been selected :hp7.DBF_edit:ehp7. will open the file, reader the information about the fields and determine
.*BR
the number of deleted records present in the database.  If the number is large this can take a minute.  Once the field names and
.*BR
field definitions are shown you may&colon.

:sl.
:li.:link reftype=hd res=25.Export:elink. the file in a REXX compatable format.

:li.Select a field by clicking in either the field name, definition or order list boxes.

:esl.

:p.Once a field has been selected you may&colon.


:ul.
:li.Select one of the Magic operations.

:li.Copy the field.

:li.Delete the field.

:li.Edit the name of the field.

:li.Edit the definition of the field.

:li.Move the field up or down in the list of fields.

:li.Insert a new field.

:eul.


:p.When the "Write" menu option is selected the input data, as modified, is written to a the output data file.  At no time is the
.*BR
input file edited by :hp7.DBF_edit:ehp7..


:h2 name=Menu_555  res=555.Menu
.*:EditTime=948739889
.*:EditUser=1
:i1.Menu
:p.The menu items allow you to select files for processing.  The settings allow you to specify output formats.

Character fields longer than 250 are stripped of trailing blanks.  If still longer than 250 they are stripped of leading
blanks.  If still longer than 250 truncated on right and user notified.

On export character fields are searched for ", which are converted to '.

Lowercase field names are converted to upper case internally.  This may cause confusion if case is important .

Also on export.


:h3 name=Files_560  res=560.Files
.*:EditTime=948739889
.*:EditUser=1
:i1.Files
:p.


:h4   res=240.Input file selection
.*:EditTime=963330733
.*:EditUser=1
:i1.Input File Selection
:p.An input .DBF file can be selected by using the Files menu option.  The file selected will be stored in the DBF_edit.ini file.
.*BR
 The accelerator code for this is "CNTRL i".  You may access this function by right clicking within the entry field.


:h4   res=250.Output file selection
.*:EditTime=963330786
.*:EditUser=1
:i1.Output File Selection
:p.An output .DBF file can be selected by using the Files menu option.  The file selected will be stored in the DBF_edit.ini file.
.*BR
You may access this function by right clicking within the entry field.

:p.If this file already exists it will be deleted without remorse! 


:h4 name=Import___REXX_20  res=20.Import - REXX
.*:EditTime=963330901
.*:EditUser=1
:i1.Import - REXX
:p.This will read an ASCII file and store it as a .DBF file.  The data must comply with a specific format.

:p.See the limitations given in :link reftype=hd res=5.Programmer's Notes &amp. Limitations:elink..  Also read the information in
.*BR
:link reftype=hd res=25.Export - REXX:elink..


:h4 name=Export___REXX_25  res=25.Export - REXX
.*:EditTime=963336089
.*:EditUser=1
:i1.Export - REXX
:p.This will write the .dbf file to an ASCII file.  The format used is one which is readable to a human and readily edited either
.*BR
manually or by use of a REXX program.  The organization is fairly simple.  The number of fields is given and then the definition
.*BR
for each field.  Definitions consist of the name, type and length for each field.  Following is the number records and the value
.*BR
for each field in the record.  

:p.Special points to observe in editing this file.  

:ol.
:li.The :link reftype=hd res=20.Import - REXX:elink. routine reads each non blank line of this, prepends the string 'dbfTXT.' and
.*BR
then runs the INTERPRET instruction.  Thus the first line in the example becomes "dbfTXT.FIELDCOUNT = 12"   The experienced REXX
.*BR
program recognizes this is defining a compound variable.

:li.Field names, such as "MAP" and "SECTION" should be in upper case if you intend to use the Import - REXX function.

:li.The value of each field is delimited using " characters.  Do not introduce this character into the contents of a field!

:li.Blank lines count!  The import routine expects exactly the pattern shown in the example.  They are used simply to make the data
.*BR
more readable to a mere human.

:eol.

:p.See the limitations given in :link reftype=hd res=5.Programmer's Notes &amp. Limitations:elink..


:p.This is an example of an exported file.

:xmp.
FIELDCOUNT = 12
         FieldName.1 = MAP
            MAP.type = C
          MAP.length = 40
 
         FieldName.2 = DATE
           DATE.type = C
         DATE.length = 11
 
         FieldName.3 = SCALE
          SCALE.type = C
        SCALE.length = 10
 
         FieldName.4 = SECTION
        SECTION.type = C
      SECTION.length = 3
 
         FieldName.5 = CATEGORY
       CATEGORY.type = C
     CATEGORY.length = 20
 
         FieldName.6 = ID
             ID.type = C
           ID.length = 5
 
         FieldName.7 = TYPE
           TYPE.type = DBFIN.TYPE.N
         TYPE.length = DBFIN.TYPE.4
 
         FieldName.8 = AGIS_00_A
      AGIS_00_A.type = N
    AGIS_00_A.length = 18.2
 
         FieldName.9 = AGIS_00_I
      AGIS_00_I.type = N
    AGIS_00_I.length = 18.2
 
        FieldName.10 = AGIS_00_O
      AGIS_00_O.type = N
    AGIS_00_O.length = 18.2
 
        FieldName.11 = ATTRIB1
        ATTRIB1.type = C
      ATTRIB1.length = 8
 
        FieldName.12 = AGIS_ATT
       AGIS_ATT.type = C
     AGIS_ATT.length = 8
 
RECORDCOUNT = 20
 
Record Number = 1
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "1    "
           TYPE = "AREA"
      AGIS_00_A = "12754635.75        "
      AGIS_00_I = "0.00               "
      AGIS_00_O = "14639.71           "
        ATTRIB1 = "000&colon.0000"
       AGIS_ATT = "        "
 
Record Number = 2
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "2    "
           TYPE = "AREA"
      AGIS_00_A = "17632468847.35     "
      AGIS_00_I = "0.00               "
      AGIS_00_O = "707014.69          "
        ATTRIB1 = "023&colon.0003"
       AGIS_ATT = "        "
 
Record Number = 3
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "3    "
           TYPE = "AREA"
      AGIS_00_A = "12754635.75        "
      AGIS_00_I = "14639.71           "
      AGIS_00_O = "14639.71           "
        ATTRIB1 = "053&colon.0073"
       AGIS_ATT = "        "
 
Record Number = 4
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "4    "
           TYPE = "AREA"
      AGIS_00_A = "5609065383.76      "
      AGIS_00_I = "0.00               "
      AGIS_00_O = "410433.61          "
        ATTRIB1 = "053&colon.0073"
       AGIS_ATT = "        "
 
&period. &period. &period.
&period. &period. &period.
&period. &period. &period.

 
Record Number = 19
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "19   "
           TYPE = "AREA"
      AGIS_00_A = "8374420.59         "
      AGIS_00_I = "0.00               "
      AGIS_00_O = "12225.55           "
        ATTRIB1 = "053&colon.0055"
       AGIS_ATT = "        "
 
Record Number = 20
            MAP = "COUNTIES                                "
           DATE = "1991       "
          SCALE = "1&colon.0       "
        SECTION = "   "
       CATEGORY = "ormat DLG -- Obj    "
             ID = "20   "
           TYPE = "AREA"
      AGIS_00_A = "9148673129.89      "
      AGIS_00_I = "0.00               "
      AGIS_00_O = "611335.31          "
        ATTRIB1 = "023&colon.0019"
       AGIS_ATT = "        "


:exmp.


:h3 name=Fields_30  res=30.Fields
.*:EditTime=963333750
.*:EditUser=1
:i1.Fields
:p.Depending on the field selected you can&colon.

:ul.
:li.move up,

:li.move down,

:li.copy,

:li.edit the name,

:li.edit the definiton,

:li.insert a new field,

:li.delete an existing field.
:eul.

:p.When the edit or create new field options are selected the appropriate entry fields are opened below these lists.  Type the necessary
.*BR
information and hit the "OK" button or hit "Cancel".

:p.Note that fields created by the Magic operations can not be deleted or renamed.

:p.The order list shows the position of the field in the input database or the source of the Magic that will be used to create the
.*BR
field on output.


:h3 name=Definitions_35  res=35.Definitions
.*:EditTime=963334380
.*:EditUser=1
:i1.Definitions
:p.Edit is the only option provided here.  See :link reftype=hd res=55.Field, Definition and Order Lists:elink..


:h3 name=Magic_40  res=40.Magic
.*:EditTime=963332563
.*:EditUser=1
:i1.Magic
:p.These are operations which are controlled completely by the wishes of the programmer.  

:p.As I have defined them each option does the following&colon.

:ol.
:li.The currently selected field of the current record in the input database is read.

:li.This value(s) is manipulated according to the specific option selected.  

:li.If the option requires input you are given the required fields to fill in and the option to test to make sure that all is as
.*BR
you think it should be.  

:li.If you are satisfied and want to use this process on the datafile you select the "OK" button.  Otherwise select the "Cancel"
.*BR
button.

:li.If "OK" is selected the lists of field names, definitions and order are modified.  These fields can not be deleted or renamed.
.*BR
 The order will show as "Magic.N", where N is the number of this particular Magic operation.

:eol.


:h4 name=Parse_45  res=45.Parse
.*:EditTime=963332960
.*:EditUser=1
:i1.Parse
:p.Parse performs a REXX parse operation.  You can either parse using a string or a position.  Note a string can be of virtually
.*BR
any length and contain any character.  You will need to read the REXX documentation if you wish to get tricky here.  The example
.*BR
illustrates using a simple colon.

:artwork align=center name='D:\SOURCE\VISPROSOURCE\DBF_EDIT\PARSESTRING.BMP'.

:p.You must specify the names and definitions for the two fields to be created.

:p.I strongly recommend using the "Test" button before hitting "OK".  This will 

:ol.
:li.apply the parse operation,

:li.create a temporary database,

:li.write the two values to the new fields,

:li.read the values from the test database,

:li.show the values actually stored in the database.

:eol.


:p.Thus you can see exactly what will be stored in the output database when this operation is used.


:h4 name=DLG_FIPS_50  res=50.DLG FIPS
.*:EditTime=963332105
.*:EditUser=1
:i1.DLG FIPS
:p.Will parse the specified variable using a "&colon.".  The leading portion is treated as the FIPS (Federal Information Processing
.*BR
Standard) code for a state.  The trailing portion is the county code.  Two new fields are defined&colon. STATENAME and COUNTYNAME.


:p.When first selected :hp7.DBF_edit:ehp7. must read the file "FIPS_codes.txt".  This contains the code to name relationships. 
.*BR
This process can take a minute.  When completed the FIPS panel is opened.

:artwork align=center name='D:\SOURCE\VISPROSOURCE\DBF_EDIT\FIPS.BMP'.

:p.This panel shows the value read from the input database and the name of the state and the name of the county.


:h3 name=Run_115  res=115.Write
.*:EditTime=963331662
.*:EditUser=1
:i1.Run
:p.The Run menu item will start the export operation.  If the Print header checkbox is checked this file will be written.  Then the
.*BR
actual data will be written.  While this process continues a message in red is shown to the user.


:h2 name=Reading_Options_65  res=65.Reading Options
.*:EditTime=963334245
.*:EditUser=1
:i1.Reading Options
:p.By checking "Read data when opening file" you can have :hp7.DBF_edit:ehp7. read all the data in the database into RAM when an
.*BR
input file is first chosen.  Currently there is no reason to do this.  But I may want to use it in the future.

:p.By checking "Skip deleted records" you will cause :hp7.DBF_edit:ehp7. to ignore all records which have been marked as "Deleted".
.*BR
 Thus when the output is written those records will not be moved into the output file.  The information in Record Selection will
.*BR
still tell you how many records are so marked.


:h2 name=Field__Definition_and_Order_Lists_55  res=55.Field, Definition and Order Lists
.*:EditTime=963335131
.*:EditUser=1
:i1.Field, Definition and Order Lists
:p.These lists allow you to select which field to manipulate.  After selecting a field in either list a right mouse click will open
.*BR
the appropriate menu items.  This works in the field name and definition lists.  There are no operations possible in the order list.

:p.Field names should be upper case, contain 10 or fewer alphabetic and numeric characters and may contain the :link reftype=hd res=5.'_':elink.
.*BR
character.

:p.Definitions consist of a type and a length.  Types are&colon.

C - Character
N - Number
D - Date
L - Logical
M - Memo

:p.For additional details on field definitions see a database package.


:h2 name=Record_Selection_60  res=60.Record Selection
.*:EditTime=963334398
.*:EditUser=1
:i1.Record Selection
:p.The total number of records, the number of deleted records and the current record number are available.  Changing the spinner
.*BR
will read the selected record, extract the currently selected field and display the value.


:h2 name=Messages_540  res=540.Messages
.*:EditTime=951941479
.*:EditUser=1
:i1.Messages
:p.This is where :hp7.DBF_edit:ehp7. will post various information which is not absolutely critical, but nice to know.


:h1   res=1050.Installation
.*:EditTime=963336617
.*:EditUser=1
:i1.Installation
:p.:hp7.DBF_edit:ehp7. is an OS/2 REXX program utilizing one or more of these packages&colon. REXXIPC, REXXLIB, RXU, VREXX and VisProREXX.
.*BR
 The following table shows what &per.dlls and &per.exes must be present on your system and suggested locations for these files. 
.*BR
Other necessary parts of VisProREXX are within the executable. 



:table cols='13 13 13 27 11' rules=both frame=box.
:row.
:c."DLLs"
:c."EXEs"
:c.Used by
:c.Suggested Location
:c.Used in this program?
:row.
:c.rexxlib.dll    
:c.
:c.rexxlib
:c.boot&colon./OS2/apps/dll
:c.yes
:row.
:c.rxu.dll
:c.
:c.rxu
:c.boot&colon./OS2/apps/dll
:c.yes
:row.
:c.REXXBase.DLL
:c.
:c.read &amp. write .DBF files
:c.boot&colon./OS2/apps/dll
:c.yes
:row.
:c.FASTini.DLL
:c.
:c.ini manipulation
:c.boot&colon./OS2/apps/dll
:c.yes, if available
:etable.


:h1 name=Programmer_s_Notes_5  res=5.Programmer's Notes &amp. Limitations
.*:EditTime=963341727
.*:EditUser=1
:i1.Programmer's Notes
:p.Some items I think need to be recorded or explicitly stated.

:p.DBF_edit depends on REXXbase.dll.  I have found a couple of limitations in the existing .DLL.  

:ol.
:li.Field names as stored in REXX must be in upper case in order to read from the database.  REXXBase.DLL will obtain the mixed
.*BR
case field names from a database but it will not write correctly.  When writing to a .DBF or the .TXT export file I have forced all
.*BR
fieldnames to be upper case.

:li.Field names can not start with the '_' character.  REXXBase.DLL will read the name of the field correctly from a database but
.*BR
it will not write such a field and when reading the header it messes up the length definition.  Therefore I check all fieldnames
.*BR
on reading for initial '_'.  If found I reset the field length.  On writing I define the header of the .DBF file after dropping the
.*BR
leading '_'.  After the file has been completed I then do a direct edit the field name of the file and restore the '_'.

:eol.

:p.Exports use the " character to define the output data for each field in each record.  Since the use of the " character in the
.*BR
text of a field would lead to terrible problems on import I automatically convert all " within a field to ' characters.

:p.REXXBase is supposed to handle dBASE III and IV formated files.  I believe a dBASE IV file can have 255 fields.  The REXXBase
.*BR
documentation suggests it can handle only 128.  I have not checked on this.

:p.REXX can not have a literal string greater than 250 characters in length (the length of a variable's contents is essentially
.*BR
unlimited).  The import operation does an "INTERPRET" instruction on each line of the file.  For Character fields which have a defined
.*BR
length of 251 - 254 (which is the maximum permitted by the dBASE .DBF format) this results in a error with the interpeter.  To avoid
.*BR
this I do the following.  The value of the field is stripped of its defining double quotes.  Trailing blanks are stripped.  If this
.*BR
gets the string below 250 the double quotes are replaced and processing continues.  If the length is not short enough leading blanks
.*BR
are removed.  If this is still not enough to get the string under the 250 the string is truncated on the right.  In this case the
.*BR
user is notified of the truncation.  If you have lots of such cases this will get very old.

:p.I have not done a real thorough job of checking all user input.

:p.The icon - if you have ever had to move a 2000 pound boulder with nothing but your bare hands you will understand how wonderful
.*BR
a crow bar is.  Trying to do some very simple operations with many database programs is like moving the boulder bare handed.  DBF_edit
.*BR
is the crow bar I needed.  Maybe it will help you also.


:h1 name=Understanding_REXX_error_messages__545  res=545.Understanding REXX error messages.
.*:EditTime=952351649
.*:EditUser=1
:i1.Understanding REXX error messages.
:p.A simple introduction to understanding error messages generated by REXX when a program dies.  The following text refers the below
.*BR
image.

:artwork align=center name='D:\ELASII\SOURCE\VISPROREXX\EXPORT\ERROR.BMP'.

:p.Starting from the bottom of the error and working up:

:p.    Last line - ignore.  Tells you the main or root VisPro routine (which is transparent to the user and the programmer) was
.*BR
involved.  Which of course we already know since this is a VisPro routine.  This routine called the one list in the line above it.

:p.    Next to last line - The routine that was called by Interpret_VPEventCall, and in turn calls the one listed on the next line
.*BR
above.  In this case the "17 +++ Call 256_263.0 2147484353 263" tells me you CALLed an event of the main panel.  "17" is the line
.*BR
number in the REXX source code where one can find the line in question.  256_263.0 is a subroutine name automatically generated by
.*BR
VisPro.  It decodes as follows.  The first event for object 263 (i.e. 263.0) of the main panel (256 is the ID of the first panel
.*BR
unless I change it - which I DONT!) was selected.  In this case a quick check of the code shows that object 263 of the main panel
.*BR
is the "Run" menu item.  No way to tell this from the information given here.  Since multiple instances of the program can be running
.*BR
simultaneously it gives the unique window ID assigned by the OS to this instance, "2147484353".  The final 263 is a parameter automatically
.*BR
passed telling the called routine from where is was called.

:p.    Call 256_263.0 2147484353 263 then called OutputFlatBIL(in, ....)  OutputFlatBIL() is found at line 1363 of the source code.
.*BR
 The form rc=OutputFlatBIL(in, ....) simply gives the exact form used to make the subroutine call.  There are several ways to do
.*BR
this, which is why this is given.

:p.    OutputFlatBIL then called WriteHeader(), which is on line 2765 of the source code.  

:p.    WriteHeader choked on an arithmetic computation at line 4380 of the source.  This almost always means that one of more of
.*BR
the variables has a non-arithmetic value assigned.


:h1 name=License_160  res=1060.Licenses
.*:EditTime=963336617
.*:EditUser=1
:i1.License
:p.Where used in the Licenses section and appended subsections, the phrase 'this program' refers to :hp7.DBF_edit:ehp7..

:p.This program is copyrighted.  It may be freely distributed provided this copyright is retained with the program.  It is provided
.*BR
free of charge and with no warranty of any kind.

:p.For copies of the software licenses which cover, where appropriate, the included code within this program see&colon.  

:ul.

:li.:link reftype=hd res=1070.REXXLIB:elink. 

:li.:link reftype=hd res=1075.VisProREXX:elink.

:li.:link reftype=hd res=1090.RXU:elink.

:li.:link reftype=hd res=1065.REXXBase:elink.

:li.:link reftype=hd res=1080.FASTini:elink.
:eul.


:h2 name=RexxLib_170  res=1070.RexxLib
.*:EditTime=937842801
.*:EditUser=1
:i1.RexxLib
:p.REXXLIB is copyrighted software belonging to Quercus Systems and is included by permission of Quercus Systems.   Users of this
.*BR
program are not permitted to use REXXLIB except in conjunction with this program.  Any further use by an end user (except for evaluation)
.*BR
requires purchase of at least a basic registration from Quercus Systems.

:xmp.
  Use of REXXLIB in this program is according to the following terms from my (Doug Rickman) REXXLIB license  - 
  
 The executable portions (only) of REXXLIB may be included with commercial, "shareware", or "freeware" application software or applications
.*BR
distributed "in house"
  as long as you pay for one full registration and agree to the following terms and conditions:
 
   1. Only executable .EXE and .DLL files may be included. No other copyrighted files of Quercus Systems (including all or any portion
.*BR
of the online documentation)
      may be included with the product.
 
   2. Included files must not be modified in any way. In particular, embedded copyright notices must be left intact.
 
   3. Your documentation should explicitly state that REXXLIB is copyrighted software belonging to Quercus Systems and is included
.*BR
with your software by permission 
      of Quercus Systems.
 
   4. Users of your product are not permitted to use REXXLIB except in conjunction with your product. Any further use by an end
.*BR
user (except for evaluation)
      requires purchase of at least a basic registration.
 
   5. No part of REXXLIB may be included with other collections of tools or libraries intended primarily for use by programmers.
   

:exmp.


:h2 name=VisProRexx_175  res=1075.VisProRexx
.*:EditTime=937842821
.*:EditUser=1
:i1.VisProRexx
:p.VisProREXX is copyrighted software belonging to Hockware, Inc. and is included in this program by permission of Hockware.   Users
.*BR
are not permitted to use VisProREXX except in conjunction with this program.  Any further use by an end user (except for evaluation)
.*BR
requires purchase of at least a registration from Hockware, Inc.

:p.  Use of VisProREXX in this program is according to the following terms from my (Doug Rickman) VisProREXX license  -   (Darn,
.*BR
I cann't find the terms in any of my on-line documentation!!!)


:h2 name=RXU_190  res=1090.RXU
.*:EditTime=937842829
.*:EditUser=1
:i1.RXU
:p.According to the author's upload notes attached with RXU.zip RXU is a public domain (free ware) package.

:xmp. 
RXU is a package of diverse OS/2 Rexx External Functions.  
 
   Author:        Dave Boll
                  (CompuServe = 74170,2016)
                  Internet: 74170.2016@compuserve.com
   Release Date:  6 April, 1996
   Version:       1.a
   
:exmp.


:h2 name=REXXIPC_165  res=1065.REXXBase
.*:EditTime=963335128
.*:EditUser=1
:i1.REXXIPC
:p.From the documentation of REXXBase.DLL

:xmp. 

RexxBase and "The dBase Database for Rexx" are trademarks of American Coders, LTD. 

Contacts: 

American Coders, LTD. 

Post Office Box 97462 

Raleigh, NC 27624 

(919) 846-2014 

Internet Mail: support@americancoders.com 
 
Spring 1999 Edition.  Version 2.23. 

Copyright 1993-99 American Coders LTD Raleigh NC USA 

:exmp.

:p.Based on email and telephone conversations I had with the company the following is provided&colon.

:sl.
:li.American Coders no long sells REXXBase.DLL for OS/2.

:li.They no longer support the product.

:li.They provided me a free license of the product.

:esl.


:h2 name=FASTini_1080  res=1080.FASTini
.*:EditTime=963336553
.*:EditUser=1
:i1.FASTini
:p. By D. Bareis, http&colon.//www.ozemail.com.au/~dbareis

:p.From the header of the example .cmd file provided with the DLL&colon.

:xmp.

/* From http&colon.//www.labyrinth.net.au/~dbareis/index.htm on Jan 27, 2000       */
/* "As long as you are not making money by reselling or including my software*/
/* as a selling feature then I don't care who uses this software or whether  */
/* its for individual use or used by a large corporation. If however you will*/
/* make money from my work then we need to talk! If you make use of my       */
/* product within your own please point people to my homepage so they can    */
/* update the code. "                                                        */
:exmp.


:h1   res=1040.Author
.*:EditTime=941645567
.*:EditUser=1
:i1.Author
:sl compact .
:li.Doug Rickman
:li.Global Hydrology and Climate Center
:li.Marshall Space Flight Center/NASA
:li.977 Explorer Blvd. 
:li.Huntsville, Alabama 35806
:li.256-922-5889
:li.doug@hotrocks.msfc.nasa.gov
:li.
:li.Current Revision of documentation Nov. 3, 1999
:esl.
            


:h1 name=Change_History_120  res=120.Change History
.*:EditTime=963328083
.*:EditUser=1
:i1.Change History
:p.July 11, 2000
:ol compact.
:li.First release.
:eol.


.*EndDocPanels

.*FootnotesHere

:euserdoc.
