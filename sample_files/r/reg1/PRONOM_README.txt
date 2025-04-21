I've got a txt with some reg tweaks I wrote some time ago. The file starts with "REGEDIT4". While trying to merge it with a new reg file, I've noticed that the newer one says "Windows Registry Editor Version 5.00".

What's the difference between version 4 and 5?

Should I get rid of "REGEDIT4" and put all the keys in the other (newer) file?

Thanks.


Yzöwl
Yzöwl
Super Moderator

 4.1k
OS: Windows 7 x64
 Donor
Joined October 13, 2004
Posted June 5, 2005
No!

REGEDIT4 is recognized in all versions including XP, the major difference between the two is that the Version 5.00 is in unicode format. Since the file you have will not be unicode there is no reason to alter it.

https://msfn.org/board/topic/47769-regedit4-vs-windows-registry-editor-v-5/
