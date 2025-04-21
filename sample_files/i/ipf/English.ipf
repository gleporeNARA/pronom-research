:userdoc.
:docprof toc=123.
:title. World Clock Version 1.4.0
.nameit symbol=greename text=':hp2.:color fc=darkgreen bc=default.World Clock:color fc=default.:ehp2.
.nameit symbol=addclock text='When you save changes, they are also written to file ADDCLOCK.INI. I would appreciate if you send me this file by email, so I can update World Clock database.'
.nameit symbol=errcity text='If one of selected cities is missing or has wrong values in database, program will load :hp5.UTC, <regions>:ehp5..'
.nameit symbol=err1tz text='World Clock calculates UTC date/time and local date/time for selected cities using TZ environment variable in CONFIG.SYS.'
.nameit symbol=err2tz text='If TZ environment variable is wrong or missing, default values will be used&colon. difference to UTC will be set to 0, no DST change.'

.im Eng100.ipf
.im Eng200.ipf
.im Eng300.ipf
.im Eng305.ipf
.im Eng310.ipf
.im Eng500.ipf
.im Eng501.ipf
.im Eng502.ipf
.im Eng521.ipf
.im Eng522.ipf
.im Eng503.ipf
.im Eng504.ipf
.im Eng505.ipf
.im Eng506.ipf
.im Eng510.ipf
.im Eng600.ipf
.im Eng610.ipf
.im Eng620.ipf
.im Eng700.ipf
.im Eng701.ipf
.im Eng702.ipf
.im Eng710.ipf
.im Eng730.ipf
.im Eng740.ipf
.im Eng741.ipf
.im Eng742.ipf
.im Eng743.ipf
.im Eng745.ipf
.im Eng400.ipf
.im Eng421.ipf
.im Eng422.ipf
.im Eng423.ipf
.im Eng430.ipf
.im Eng880.ipf
.im Eng890.ipf
.im Eng800.ipf
.im Eng850.ipf
.im Eng900.ipf

.*FootnotesHere

:fn id=author.
:dl compact tsize=15.
:dthd.:hp2.Author:ehp2.
:ddhd.Goran Ivankovic
:dt.:hp2.Address:ehp2.
:dd.Ulica Josipa Poduje 8
:dt.
:dd.HR-52100 Pula
:dt.
:dd.Croatia
:dt.:hp2.email:ehp2.
:dd.:link reftype=launch object='netscape.exe' data='mailto:duga1@pu.hinet.hr?subject=World Clock'.duga1@pu.hinet.hr:elink.
:dt.:hp2.Home page:ehp2.
:dd.:link reftype=launch object='Netscape.exe' data='http://www.os2world.com/goran/'.http&colon.//www.os2world.com/goran/:elink.
:edl.
:efn.

:fn id=language.
:p.
To add language support to &greename. (use other languages than English), download file wclock140lng.zip.
Extract this file to &greename. directory and run Rexx script :hp9.InstLang.cmd:ehp9..
Start &greename., open Settings window, select your language, save changes in Settings and restart &greename. to accept changes.
:p.
If you want to add your Language support (create new language INI file),
:link refid=author reftype=fn. visit my home page:elink. and download Translation tool (translat.zip).
:p.
To translate manual (sources are in subdirectory Help), you need any text editor to edit Eng*.ipf files and IPF Compiler to compile sources.
:efn.

:euserdoc.
